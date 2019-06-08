echo "Read this file content instead of executing"
exit
######################### Logbook: tsuru-deployment.sh #########################
# Logbook for reverse-proxy-for-free-basics-docker deployed on Tsuru PaaS
# -----------------------------------------------------------------------------#
# CREATED AT: 2019-06-08 04:22
#
# Links:
#     - GitHub:
#         - https://github.com/fititnt/reverse-proxy-for-free-basics-docker
#     - Docker Hub:
#         - https://cloud.docker.com/repository/docker/fititnt/reverse-proxy-for-free-basics
#
# -----------------------------------------------------------------------------#
# LICENSE: Public Domain
#   Except where otherwise noted, content on this server configuration and to
#   the extent possible under law, Emerson Rocha has waived all copyright and
#   related or neighboring rights to this work to Public Domain
# MAINTAINER: Emerson Rocha <rocha(at)ieee.org>
#   Keep in mind that several people help with suggestions, bugfixes and
#   inspiration and inspire without get names noted in places that software
#   developers look. I'm saying this in special for people who help over
#   Facebook discussions. Even the ones without a personal computer yet.
# SECURITY:
#   Reporting a Vulnerability:
#   Send e-mail to Emerson Rocha: rocha(at)ieee.org.
################################################################################

##### Recomended: do this to follow make easier to undestand this quickguide ___
# Read the link
# https://github.com/fititnt/reverse-proxy-for-free-basics-docker/issues/2
# There you will find instructions on how the server
# aguia-pescadora-charlie.etica.ai was prepared to run Tsuru PaaS, This file
# will have my quick notes that could be used to a more friendly guide in the
# future BUT this depends of more people helping with feedback. But, you know,
# there is not a lot of people doing advanced DevOps and digital inclusion, so
# it means you could make a difference.

## Let's just follow the official documentation and hope it works
# @see https://docs.tsuru.io/stable/using/docker-image.html
# We're using at this moment tsuru-client (and server 1.6.0). You can check with
tsuru --version
# tsuru version 1.6.0.

## We will create and proxy for inclusao.etica.ai with name
# name: proxy-for-inclusao-etica-ai
# platform: static (we will use custom Docker image, so this platform will
#           be replaced later)
# team: padrao (this is just a previus created team, on this specific installation
#       it is requing for my user)
# fititnt at bravo in /alligo/code/fititnt/reverse-proxy-for-free-basics-docker on git:master x [4:31:09]
$ tsuru app-create proxy-for-inclusao-etica-ai static --team padrao
# App "proxy-for-inclusao-etica-ai" has been created!
# Use app-info to check the status of the app and its units.

# fititnt at bravo in /alligo/code/fititnt/reverse-proxy-for-free-basics-docker on git:master x [4:32:29]
tsuru app-list
#+-----------------------------+-----------+------------------------------------------------+
#| Application                 | Units     | Address                                        |
#+-----------------------------+-----------+------------------------------------------------+
# (.......)
#+-----------------------------+-----------+------------------------------------------------+
#| proxy-for-inclusao-etica-ai |           | proxy-for-inclusao-etica-ai.192.99.69.2.nip.io |
#+-----------------------------+-----------+------------------------------------------------+
#| tsuru-dashboard             | 1 started | tsuru-dashboard.192.99.69.2.nip.io             |
#+-----------------------------+-----------+------------------------------------------------+

## Note: the tsuru tutorial mentions how to build the Dockerfile and send to
#       some docker registry. I'm already done this for everyone, see
#       https://cloud.docker.com/repository/docker/fititnt/reverse-proxy-for-free-basics
#       BUT you could do with yours custom installation
tsuru app-deploy -i fititnt/reverse-proxy-for-free-basics:latest -a proxy-for-inclusao-etica-ai

## The website at tsuru-dashboard.192.99.69.2.nip.io is not loading, Lets see
## Tsuru logs
# fititnt at bravo in /alligo/code/fititnt/reverse-proxy-for-free-basics-docker on git:master x [4:39:48]
tsuru app-log -a proxy-for-inclusao-etica-ai
# 2019-06-08 04:39:48 -0300 [tsuru][api]:  ---> Bound and checked unit 3ef6879ebe [web]
# 2019-06-08 04:39:48 -0300 [tsuru][api]: ---- Adding routes to new units ----
# 2019-06-08 04:39:48 -0300 [tsuru][api]:  ---> Added route to unit 3ef6879ebe [web]
# 2019-06-08 04:39:48 -0300 [tsuru][api]: ---- Setting router healthcheck (Path: /) ----
# 2019-06-08 04:40:10 -0300 [web][3ef6879ebe30]: 2019/06/08 07:40:10 [error] 6#6: recv() failed (111: Connection refused) while resolving, resolver: 127.0.0.11:53
# 2019-06-08 04:40:15 -0300 [web][3ef6879ebe30]: 2019/06/08 07:40:15 [error] 6#6: recv() failed (111: Connection refused) while resolving, resolver: 127.0.0.11:53
# 2019-06-08 04:40:20 -0300 [web][3ef6879ebe30]: 2019/06/08 07:40:20 [error] 6#6: recv() failed (111: Connection refused) while resolving, resolver: 127.0.0.11:53

## I know this error. I will hardcoded the IP for now. Sometime later we could
## make image useful for others without need to rebuild from scratch

## We will use '0.inclusao.etica.ai' as hostname for proxyied content
tsuru cname-add 0.inclusao.etica.ai --app proxy-for-inclusao-etica-ai

## The next command allow see more info about the app
tsuru app-info --app proxy-for-inclusao-etica-ai


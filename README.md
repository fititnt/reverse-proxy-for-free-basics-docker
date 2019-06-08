# Reverse Proxy for Free Basics: automated hotfixes to improve data efficiency and comply with technical guidelines
![Work in Progress](img/badges/status-work-in-progress.svg) **This tool try it's
best to make proxied site content as much data efficient as possible. The main
objective is make easier for volunteers set up own proxies and help websites
that do social good (but lack of developers to adapt their website) to be more
easy to be accepted as free access**. This workflow can work based on the
following logic: sites that require very low amount data transfer to be fully
operational can be so cheap that mobile operators can simple not care about
ask money from end users.

For now this project is being tested on the <https://inclusao.etica.ai/>
<sup>(original, generic GitHub Pages template)</sup> and
<http://0.inclusao.etica.ai> <sup>(hotfixed by this proxy)</sup>. See
[issue#1](https://github.com/fititnt/reverse-proxy-for-free-basics-docker/issues/1)
for more details.

## Proxy Deployment Methods

> TL;DR: We're document here the "YOUR PROXY" in the data flow
>
> **The Sites -> _YOUR PROXY_ -> Mobile Operator -> End User (free access)**
>
> or (easier strategy at the moment if you are not big enough to convince Mobile Operators)
>
> **The Sites -> _YOUR PROXY_ -> Free Basics by Internet.org (HTTPS) -> Mobile Operator -> (HTTPS) End User (free access)**

### Docker

_TODO: add a very friendly comentation soon here about Deployment Methods/Docker (2019-06-08 02:32 BRT)_

### Tsuro

_TODO: add a very friendly comentation here about Deployment Methods/Tsuro (2019-06-08 02:32 BRT)_


<!--, sponsored


 to a point of allow sponsored (in general, by
telecommunications company, not by access free for end
u

and aims to make if frieldy for users with limited
data plans.**

This is a non-oficial Docker container to be used as reverse proxy for serve
content to [Free Basics by Facebook](https://info.internet.org).

- See https://github.com/fititnt/cplp-aiops/issues/62 <sup>(destiny in Portuguese)</sup>
- See https://github.com/apache/incubator-pagespeed-ngx/tree/master/docker

# Apache/incubator-pagespeed-ngx
- <https://github.com/apache/incubator-pagespeed-ngx/tree/master/docker>
- <https://www.modpagespeed.com/doc/configuration#virtual-hosts>
-->
<!--
## About the Free Basics

## Disclaimer
Consider this project as extra documentation and support tools to make easier
for developers to make more sites be _data efficient_ (e.g. use so low ammout
of data that )

 "[internet.org by Facebook](https://internet.org)" or
"[Free Basics by Facebook](https://info.internet.org/en/story/free-basics-from-internet-org/)"

-->
## Acknowledgments

Special thanks should be given to all those involved in the development of
Docker release of the [Automatic PageSpeed optimization module for
Nginx](https://github.com/apache/incubator-pagespeed-ngx).

## License
For see copyrights holders and licenses of the base Docker image, start by
looking at [apache/incubator-pagespeed-ngx](https://github.com/apache/incubator-pagespeed-ngx).

<!--
For who is not aware of what Docker is, only the work at [fititnt/reverse-proxy-for-free-basics-docker](https://github.com/fititnt/reverse-proxy-for-free-basics-docker), is released under
Public Domain. 
-->

### License of Reverse Proxy for Free Basics

[![Public Domain](img/public-domain.png)](UNLICENSE)

To the extent possible under law, [Emerson Rocha](https://github.com/fititnt)
has waived all copyright and related or neighboring rights to this work to
[Public Domain](UNLICENSE).
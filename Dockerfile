FROM pagespeed/nginx-pagespeed
COPY ./etc/nginx/nginx.conf /etc/nginx/nginx.conf

## At this point, the image will be hardcoded to inclusao.etica.ai, so untill
## we make it as parameter, you will need to build this Dockerfile instead of
## using the created image. Thanks for your patience to allow some more testing!
COPY ./etc/nginx/sites-available/inclusao.etica.ai.conf /etc/nginx/conf.d/inclusao.etica.ai.conf

## The next file is a experimental one that _could_ allow automaticaly
## any request to rp4fb.YOURDOMAIN.TLD proxy content from YOURDOMAIN.TLD. This
## could be good just for fast testing, but not for production.
# COPY ./etc/nginx/sites-available/rp4fb-subdomain.conf /etc/nginx/conf.d/rp4fb-subdomain.conf
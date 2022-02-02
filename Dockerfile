FROM kong:2.7.0

USER root
RUN apk update && apk add git unzip luarocks
RUN luarocks install --pin lua-resty-jwt 0.2.3-0
RUN luarocks install kong-oidc

USER kong
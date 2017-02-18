# Docker OpenResty image
This Docker image contains:

* [OpenResty](https://openresty.org) >= 1.11.2.2
* [lua-resty-auto-ssl](https://github.com/GUI/lua-resty-auto-ssl) (to auto regenerate [letsencrypt.org](https://letsencrypt.org/) SSL certificates)

You have to configure your nginx and copy/mount the config folder to `/usr/local/openresty/nginx/conf`


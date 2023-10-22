# immich_tools
## Requirements
* [you need a immich server](https://documentation.immich.app/docs/install/docker-compose)
* The best thing to do is to put a reverse proxy in front of it, e.g. nginx
    * install nginx and certbot: `apt update; apt install nginx certbot python3-certbot python3-certbot-nginx`
    * possible default config: `nginx_example.domain.tld`
        * copy to: `/etc/nginx/sites-available/example.domain.tld`
        * enable: `ln -sv `/etc/nginx/sites-available/example.domain.tld /etc/nginx/sites-enable/example.domain.tld`
        * test: `nginx -t`
        * restart nginx: `systemctl restart nginx`
    * generate a SSL certificate with: `certbot certonly`

## Install
* [Install immich on your client](https://documentation.immich.app/docs/features/bulk-upload#installation)

## immich_upload.conf-default
* [get a api key](https://documentation.immich.app/docs/features/bulk-upload#obtain-the-api-key)
* copy to `~.config/immich_upload.conf`

## Run
* `bash immich_upload.sh`
```
* 'f' for foto
* 'd' for directory
* 'a' for directory and creating a album

example: bash immich_upload.sh f picture.jpg
example: bash immich_upload.sh a ~/Pictures/album
```

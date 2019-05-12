# Mail web server. Based on docker-mailserver. Uses rainloop.

## Execution
Runs on unix-like systems.

First of all, you should get an SSL certificate from [cert bot](https://github.com/tomav/docker-mailserver/wiki/Configure-SSL).
Using cert bot, generate an SSL in some folder (let's call it {path_to_ssl}) using following commands:
```bash
mkdir -p {path_to_ssl}
cd {path_to_ssl}
```

Now get the certificate following the certbot instructions. This will need access to port 80 from the internet, adjust your firewall if needed:
```bash
docker run --rm -ti -v $PWD/log/:/var/log/letsencrypt/ -v $PWD/etc/:/etc/letsencrypt/ -p 80:80 deliverous/certbot certonly --standalone -d mail.shushpancheak.space
```

```bash
docker-compose up mail -d
```

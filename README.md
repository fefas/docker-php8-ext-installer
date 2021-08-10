# Docker PHP8 extension installer

Since PCEL and PEAR were deprecated in PHP8, an option for installer extenstions
is:

```
$ mkdir -p /usr/src/php/ext/apcu
$ curl -fsSL https://pecl.php.net/get/apcu | tar xvz -C "/usr/src/php/ext/apcu" --strip 1
$ docker-php-ext-install apcu
```

> Look this [github issue] for further reference.

With [installer.sh], you can add the following statement to your `Dockerfile`:

```Dockerfilel
RUN sh -c "$(curl -s https://raw.githubusercontent.com/fefas/docker-php8-ext-installer/main/installer.sh)" \
    pcov \
    amqp
```

[github issue]: https://github.com/docker-library/php/issues/1029#issuecomment-650576137
[installer.sh]: installer.sh

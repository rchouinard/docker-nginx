# Nginx

> Nginx (pronounced "engine x") is a web server with a strong focus on high
> concurrency, performance and low memory usage. It can also act as a reverse
> proxy server for HTTP, HTTPS, SMTP, POP3, and IMAP protocols, as well as a
> load balancer and an HTTP cache.
>
> Created by Igor Sysoev in 2002, Nginx runs on Unix, Linux, BSD variants, OS X,
> Solaris, AIX, HP-UX, and Windows. Released under the terms of a BSD-like
> license, Nginx is free and open source software.
>
> -- <cite>[Wikipedia](https://en.wikipedia.org/wiki/Nginx)</cite>

## Using This Image

Simple content
```
$ docker run --name my-nginx -v /my/site:/usr/share/nginx/html -d rchouinard/nginx
```

Custom configuration
```
$ docker run --name my-nginx -v /my/nginx.conf:/etc/nginx/nginx.conf -d rchouinard/nginx
```

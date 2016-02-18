---
layout: topic
title: "Lower Web-Stack"

level: 2

intro: A strong lower web-stack is important not only to build strong web frameworks on top, but also to allow performance critical systems to reach deeper to squeeze out extra juice. Rust has a good support on HTTP servers, even an HTTP2 implementation, websockets and other protocols.

servers:
 - hyper
 - tiny-http
 - rotor-http

http2:
 - solicit

websocket:
 - websocket
 - ws
 - websocket-stream
 - rustic-io

protocols:
 - crust
 - ftp
 - fastcgi

news_tag: stack

---

## HTTP Servers

{% include packages.html packages=page.servers %}

## HTTP2

{% include packages.html packages=page.http2 %}

## Websocket

{% include packages.html packages=page.websocket %}


## Other protocols

{% include packages.html packages=page.protocols %}

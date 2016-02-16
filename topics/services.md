---
layout: topic
title: "External Services"

intro: The modern web development stack doesn't only need a web-server but is often built on a range of external services to provide specific features, from worker queues over search and pubsub, rust support for these is seriously lacking at the moment. Be sure you are able to build the connection yourself if needed.

level: 5

queues:
 - beanstalkd
 - stomp
 - amqp
 - disqrust
 - disque
 - ferrous_threads
 - kafka

search:
 - rs-es

pubsub:
 - redis
 - pubsub

missing:
 - Hadoop connectors
 - Celery Queueing

news_tag: services
---


<h2>Worker Queue  {% include level.html level=5 %}</h2>

{% include packages.html packages=page.queues %}

<h2>Search Services  {% include level.html level=5 %}</h2>

{% include packages.html packages=page.search %}

<h2>Pubsub  {% include level.html level=5 %}</h2>

{% include packages.html packages=page.pubsub %}

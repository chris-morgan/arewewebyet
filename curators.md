---
layout: page
title: Curators
permalink: /curators/
---

<a href="/">Are We Web Yet</a> is curated by:

{% for kv in site.data.authors %}
  {% if kv[1].curator %}
    {% assign author_id=kv[0] %}
    {% include author.html author=author_id %}
  {% endif %}
{% endfor %}

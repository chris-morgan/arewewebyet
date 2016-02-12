---
layout: page
title: Curators
permalink: /curators/
---

<a href="/">Are We Web Yet</a> (AWWY) is curated by:

{% for kv in site.data.authors %}
  {% if kv[1].curator %}
    {% assign author_id=kv[0] %}
    {% include author.html author=author_id %}
  {% endif %}
{% endfor %}


<div class="alert-box">
  <h3>You want to become a curator?</h3>
  <p>You want to help us curate this website? Well, that is just awesome. <a href="https://github.com/bashyHQ/arewewebyet/blob/gh-pages/CONTRIBUTING.md#becoming-a-curator" target="_blank">Please follow this guide to join</a>!
  </p>
</div>

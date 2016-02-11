---
layout: page
title: Topics
permalink: /topics/
---

<div>
{% for page in site.pages %}
  {% if page.layout == 'topic' %}
    <h2><a href="{{page.url}}">{{page.title}}</a>  {% include level.html level=page.level%}</h2>

    {% if page.intro %}
      {{page.intro | markdownify }}
    {% endif %}

  {% endif %}
{% endfor %}
</div>

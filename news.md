---
layout: page
title: "Latest News"
permalink: /news/
---

<ul class="related-news">
  {% for post in site.posts %}
    {% include news_item.html post=post %}
  {% endfor %}
</ul>


<div class="alert-box">
  <h3>Are we missing some important news?</h3>
  <p>Did we miss an important announcement or update? Or maybe you want to share some good news about future development with our audience? <a href="https://github.com/bashyHQ/arewewebyet/blob/gh-pages/CONTRIBUTING.md#submitting-project-news" target="_blank">Please go ahead</a>!
  </p>
</div>

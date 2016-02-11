---
layout: main
---

# Are we *web* yet?

**Getting there.**
*(You can use Rust for web stuff, though the ecosystem isn’t mature yet – but it is improving quickly!)*


## The server story

These are the pieces we need before we’ll be ready for generally serious web development.


<h3>Frameworks {% include level.html level=3 %}</h3>

(top 3)

  <ul class="pkg-list">
    {% include package.html name='iron' omit_comments=1 %}
    {% include package.html name='conduit' omit_comments=1 %}
    {% include package.html name='nickel' omit_comments=1 %}
    <li class="more"><a href="/topics/frameworks.html">see all</a></li>
  </ul>

<h3>Database Support {% include level.html level=3%}</h3>

(top 2 each)

  <ul class="pkg-list">
    <li>Drivers
      <ul class="pkg-list">
        {% include package.html name='postgres' omit_comments=1 %}
        {% include package.html name='redis' omit_comments=1 %}
      </ul>
    </li>
    <li>ORMs
      <ul class="pkg-list">
        {% include package.html name='diesel' omit_comments=1 %}
        {% include package.html name='rustorm' omit_comments=1 %}
      </ul>
    </li>
    <li class="more"><a href="/topics/database.html">list all</a></li>
  </ul>

<h3>Stack {% include level.html level=2%}</h3>

  <ul class="pkg-list">
    <li>HTTP Servers
      <ul class="pkg-list">
        {% include package.html name='hyper' omit_comments=1 %}
        {% include package.html name='tiny-http' omit_comments=1 %}
      </ul>
    </li>
    <li class="more"><a href="/topics/stack.html">see all</a></li>
  </ul>

<h3>Clients {% include level.html level=2%}</h3>

(top 2)

  <ul class="pkg-list">
    {% include package.html name='hyper' omit_comments=1 %}
    {% include package.html name='curl' omit_comments=1 %}
    <li class="more"><a href="/topics/clients.html">see all</a></li>
  </ul>

### More

learn more about the state of web developer in rust by topic:

<ul class="topic-list">
  {% for page in site.pages %}
    {% if page.layout == 'topic' %}
      <li><a href="{{page.url}}">{{page.title}}</a>  {% include level.html level=page.level%}</li>
    {% endif %}
  {% endfor %}
</ul>

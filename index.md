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
    {% include package.html name='iron' %}
    {% include package.html name='conduit' %}
    {% include package.html name='nickel' %}
    <li class="more"><a href="/topics/frameworks.html">see all</a></li>
  </ul>

<h3>Database Support {% include level.html level=3%}</h3>

(top 2 each)

  <ul class="pkg-list">
    <li>Drivers
      <ul class="pkg-list">
        {% include package.html name='postgres' %}
        {% include package.html name='redis' %}
      </ul>
    </li>
    <li>ORMs
      <ul class="pkg-list">
        {% include package.html name='diesel' %}
        {% include package.html name='rustorm' %}
      </ul>
    </li>
    <li class="more"><a href="/topics/database.html">list all</a></li>
  </ul>

<h3>Stack {% include level.html level=2%}</h3>

  <ul class="pkg-list">
    <li>HTTP Servers
      <ul class="pkg-list">
        {% include package.html name='hyper' %}
        {% include package.html name='tiny-http' %}
      </ul>
    </li>
    <li class="more"><a href="/topics/stack.html">see all</a></li>
  </ul>

<h3>Clients {% include level.html level=2%}</h3>

(top 2)

  <ul class="pkg-list">
    {% include package.html name='hyper' %}
    {% include package.html name='curl' %}
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

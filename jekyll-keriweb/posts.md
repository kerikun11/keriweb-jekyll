---
layout: page
title: Posts
permalink: /posts/
---

# Posts
{% for post in site.posts %}
{{ post.date | date: "%b %-d, %Y" }}  
 <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>

{% endfor %}

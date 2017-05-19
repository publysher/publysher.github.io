---
layout: layout-home
title: Yigal Duppen
nav: false
---

<!-- quote -->
<div class="home-quote">
	<div class="home-quote-text">
		<p>Software architecture is those decisions which are both important and hard to change <br>— <a href="https://martinfowler.com/" target="_blank">Martin Fowler</a></p>
	</div>
</div>

<!-- tussenkop -->
<div class="tussenkop grijs-40">
	<a href="{{ site.baseurl }}/projects/">Projects</a>
</div>

<!-- projects -->
<div class="home-project-box">
{% assign project = site.projects | sort:"weight" %}
{% for p in project limit:6 %}{% assign category = site.data.project[p.category] %}
<div class="badge-box">
	<a href="{{ p.url | prepend: site.baseurl }}">
		<div class="badge bg-{{ category.color }} border-{{ category.color }}">
			<div class="badge-kop {{ category.color }}">
				{{ p.title | truncatewords: 1, "" }}
			</div>
			<div><strong>{{ p.heading }}</strong></div>
			<div class="badge-streep body-{{ category.color }}"></div>
			<div class="badge-project {{ category.color }}">
				{{ category.name | capitalize }}
			</div>
		</div>
	</a>
</div>
{% endfor %}
</div>

<!-- tussenkoppen -->
<div class="tussenkop-more aqua">
<a href="{{ site.baseurl }}/projects/">
	more projects >
</a>
</div>
<div class="clear"></div>
<div class="tussenkop grijs-40">
	<a href="{{ site.baseurl }}/writings/">Writings</a>
</div>

<!-- writings -->
<div class="writing-box">
{% for writing in site.writings %}{% assign category = site.data.project[writing.category] %}
<div class="writing-box-wrapper">
	<div class="writing-box-item bg-writing-{{ category.color }}">
		<div class="writing-kop-sub {{ category.color }}">
			{{ writing.writing}}
		</div>
		<li class="writing-kop">
			<a href="{{ writing.url | prepend: site.baseurl }}" class="grijs-50">
				{{ writing.heading}}
			</a>
		</li>
		<div class="badge-writing {{ category.color }}">
			{{ category.name | capitalize }}
		</div>
	</div>
</div>
{% endfor %}
</div>

<!-- tussenkop -->
<div class="tussenkop-more aqua">
<a href="{{ site.baseurl }}/writings/">
	more writings >
</a>
</div>
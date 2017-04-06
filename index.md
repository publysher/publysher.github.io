---
layout: layout-home
title: Yigal Duppen
nav: false
---

<div class="home-quote">
	<p>Software architecture is those decisions which are both important and hard to change <br>— <a href="https://martinfowler.com/" target="_blank">Martin Fowler</a></p>
</div>


<div class="tussenkop grijs-40">
	<a href="{{ site.baseurl }}/projects/">Projects</a>
</div>

{% assign project = site.projects | sort:"weight" %}
{% for p in project limit:4 %}

<div class="badge-box">
	<a href="{{ p.url | prepend: site.baseurl }}">

		<div class="badge bg-{{ p.color }} border-{{ p.color }}">
			<div class="badge-kop {{ p.color }}">
				{{ p.title }}
			</div>
			<div class="badge-streep body-{{ p.color }}"></div>
			<div class="badge-project {{ p.color }}">
				{{ p.project }}
			</div>
		</div>
	</a>
</div>

{% endfor %}

<div class="tussenkop tussenkop-more aqua">
<a href="{{ site.baseurl }}/projects/">
	more projects >
</a>
</div>
<div class="clear"></div>

<div class="tussenkop grijs-40">
	<a href="{{ site.baseurl }}/writings/">Writings</a>
</div>

<div class="writing-box">
{% for writing in site.writings %}
<div class="writing-box-item">
	<div class="writing-kop-sub {{ writing.color }}">
		{{ writing.writing}}
	</div>
	<li class="writing-kop">
		<a href="{{ writing.url | prepend: site.baseurl }}" class="grijs-50">
			{{ writing.heading}}
		</a>
	</li>
</div>
{% endfor %}
</div>


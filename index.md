---
layout: layout-pages
title: Yigal Duppen
nav: false
---

<!-- quote -->
<div class="grid">
<div class="page-balloon">
	<div class="page-balloon__quote">
		<p>Software architecture is those decisions which are both important and hard to change <br>— <a href="https://martinfowler.com/" target="_blank">Martin Fowler</a></p>
	</div>
</div>
</div>

<!-- tussenkop -->
<div class="tussenkop grijs-40">
	<a href="{{ site.baseurl }}/projects/">Projects</a>
</div>

<!-- projects -->
<div class="page-box work-grid">
{% assign project = site.projects | sort:"weight" %}
{% for p in project limit:16 %}
{% assign category = site.data.project[p.category] %}
{% if p.category %}
<div class="page-badge work-grid-item">
	<a href="{{ p.url | prepend: site.baseurl }}">
		<div class="badge-projects bg-{{ category.color }} border-{{ category.color }}">
			<div class="badge-projects__kop {{ category.color }}">
				{{ p.title | truncatewords: 1, "" }}
			</div>
			<div class="badge-projects__heading">
				<strong>{{ p.heading }}</strong>
			</div>
			<div class="badge-projects__streep body-{{ category.color }}"></div>
			<div class="badge-projects__category {{ category.color }}">
				{{ category.name | capitalize }}
			</div>
		</div>
	</a>
</div>
{% endif %}
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
<div class="page-box work-grid">
{% assign writing = site.writings | sort:"weight" %}
{% for w in writing limit:6 %}
{% assign category = site.data.project[w.category] %}
<div class="page-badge work-grid-item">
	<a href="{{ w.url | prepend: site.baseurl }}" class="grijs-50">
		<div class="badge-writings bg-writing-{{ category.color }}">
			<div class="badge-writings__sub {{ category.color }}">
				{{ w.writing}}
			</div>
			<div class="badge-writings__kop">
					{{ w.heading}}
			</div>
			<div class="badge-writings__streep body-grijs-50"></div>
			<div class="badge-writings__category {{ category.color }}">
				{{ category.name | capitalize }}
			</div>
		</div>
	</a>
</div>
{% endfor %}
</div>



<!-- tussenkop -->
<div class="tussenkop-more aqua">
<a href="{{ site.baseurl }}/writings/">
	more writings >
</a>
</div>
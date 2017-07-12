---
layout: layout-pages
title: Writings
permalink: /writings/
nav: true
weight: 2
---


<div class="grid">
<div class="page-balloon">
	<div class="page-balloon__quote">
		<p>We cannot solve our problems with the same thinking we used when we created them. <br>— <a href="https://www.brainyquote.com/search_results.html?q=einstein" target="_blank">Albert Einstein</a></p>
	</div>
</div>
</div>


<div class="tussenkop grijs-40">
	<a href="{{ site.baseurl }}/projects/">Writings</a>
</div>


<div class="page-box work-grid">
{% assign writing = site.posts | sort:"weight" %}
{% for w in writing %}
{% assign category = site.data.project[w.category] %}
<div class="page-badge work-grid-item">
	<a href="{{ w.url | prepend: site.baseurl }}" class="grijs-50">
		<div class="badge-writings bg-writing-{{ category.color }}">
			<div class="badge-writings__sub {{ category.color }}">
				{{ w.writing }}
			</div>
			<div class="badge-writings__kop">
				{{ w.heading }}
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

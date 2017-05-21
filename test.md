---

---

test 


{% for project in site.data.project %}

{% assign p = project[1] %}
<div class="project-items">
	<li class="project-items-kop">
		<a href="{{ site.baseurl }}/projects/{{ p.name | slugify }}"  class="{{ p.color }}">
			{{ p.name }}
			{{ p.color }}
		</a>
	</li>
</div>
{% endfor %}

{% assign category = site.data.project[p.category] %}

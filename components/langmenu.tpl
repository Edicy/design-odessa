{% if editmode %}
<ul id="langmenu">
{% for language in site.languages %}
	      <li><a href="{{ language.url }}"{% if language.selected? %} class="active"{% endif %}>{{ language.title }}</a></li>
	      {% unless forloop.last %}<li>/</li>{% endunless %}
	    {% endfor %}
<li>{% languageadd %}</li>
</ul>
{% else %}
{% if site.has_many_languages? %}<ul id="langmenu">
{% for language in site.languages %}
	      <li><a href="{{ language.url }}"{% if language.selected? %} class="active"{% endif %}>{{ language.title }}</a></li>
	      {% unless forloop.last %}<li>/</li>{% endunless %}
	    {% endfor %}

</ul>{% endif %} <!-- //langmenu -->
{% endif %}
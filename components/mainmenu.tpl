<div class="content-box clearfix" style="width: 270px;">
             <div class="content-box-inner">
               <div class="content">
                 <div class="content-inner clearfix" style="width: 210px;">
                   
                   <ul id="navmenu">
                     {% if editmode %}<li><a href="{{ site.root_item.url }}"{% if site.root_item.selected? %} class="active"{% endif %}>{{site.root_item.title}}</a></li>{% endif %}
                     {% for item in site.visible_menuitems %}
                     <li{% unless item.translated? %} class="untranslated"{% endunless %}{% if item.selected? %} class="active"{% endif %}><a href="{{ item.url }}" {% unless item.translated? %}class="fci-editor-menuadd"{% endunless %}>{{ item.title }}</a>
{% if item.selected? %}
{% if editmode %}
<ul class="submenu">{% for level2 in item.visible_children %}
                         <li{% unless level2.translated? %} class="untranslated"{% endunless %}><a href="{{ level2.url }}" {% unless level2.translated? %}class="fci-editor-menuadd"{% endunless %} {% if level2.selected? %} class="active"{% endif %}>{{ level2.title }}</a></li>
                         {% unless forloop.last %}<li>/</li>{% endunless %}{% endfor %}
                           <li class="vg-menu-btn">{% menubtn item.hidden_children %}</li>
<li class="vg-menu-btn">{% menuadd parent="item" %}</li>
                        </ul> <!-- //submenu -->
{% else %}
                           {% if item.children? %}
<ul class="submenu">{% for level2 in item.all_children %}
                         <li{% unless level2.translated? %} class="untranslated"{% endunless %}><a href="{{ level2.url }}" {% unless level2.translated? %}class="fci-editor-menuadd"{% endunless %} {% if level2.selected? %} class="active"{% endif %}>{{ level2.title }}</a></li>
                         {% unless forloop.last %}<li>/</li>{% endunless %}{% endfor %}
                        </ul> <!-- //submenu -->
                           {% endif %}
{% endif %}
{% endif %}
</li>
                   {% endfor %}
                           {% if editmode %}<li>{% menubtn site.hidden_menuitems %}</li>{% endif %}
<li>{% menuadd %}</li></ul> <!-- //navmenu -->
                   
                 </div>
               </div>
             </div>
           </div>
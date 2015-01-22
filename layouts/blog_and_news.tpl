<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{{ page.language_code }}" lang="{{ page.language_code }}">

<head>
	
	{% include "SiteHeader" %}
{{ blog.rss_link }}

</head>

<body>
	
	<div id="topbar">
   <div class="wrap">
     
     {% include "Langmenu" %}
     {% include "Search" %}
   </div> <!-- //wrap -->
	</div>
	
	<div class="wrap">
   
   <div id="content">
     
     <table class="content-table">
       <tr>
         <td>
           <div class="content-box" style="width: 270px;">
             <div class="content-box-inner">
               <div class="content content-green">
                 <div class="content-inner clearfix">
                   <br />
                   <h1 style="text-align: center;" class="clearfix">{% if editmode %}{% editable site.header %}{%else%}<a href="{{ site.root_item.url }}">{% editable site.header %}</a>{% endif %}</h1>
                 </div>
               </div>
             </div>
           </div>
           {% include "Mainmenu" %}
           {% include "Contact" %}
         </td>
         <td>
           <table class="content-table">
             <tr>
               <td style="padding-left: 10px;">
                 <div class="content-box" style="width: 550px;">
                   <div class="content-box-inner">
                     <div class="content">
                       <div class="content-inner clearfix">
                         <h1>{{ page.title }}</h1>
                         
                         {% if tags %}
                            <div class="blog tagged-list-header">
                                <div class="header-tag-icon"></div>
                                {% if tags == empty %}
                                    {{ "no_posts_tagged" | lc }}
                                {% else %}
                                    {{ "posts_tagged" | lc }} '{{ tags | sort:"name" | map:"name" | join:"', '"}}'.
                                {% endif %}
                            </div>
                        {% endif %}
                         {% addbutton class="add-article" %}
                         {% for article in articles %}<div class="blog clearfix">
                           <h2><a href="{{ article.url }}">{{ article.title }}</a></h2> 
                            <div class="blog_header">
                              {{ "author" |lc }}: {{ article.author.name }} - {{ article.created_at | format_date:"short" }} - 
                            </div>

                         {{ article.excerpt }}<br /><a href="{{ article.url }}">{{ "read_more" | lc }}</a>, <a href="{{ article.url }}#comments">{{ "comments_for_count" | lc }}: {{ article.comments_count }}</a>
                          
                          </div>{% endfor %} <!-- //blog -->
                          <div class="clearer"></div>
                       </div>
                     </div>
                   </div>
                 </div>
               </td>
             </tr>
           </table>
           <table class="content-table">
             <tr>
               <td>
                 {% include "News" %}
               </td>
               <td style="padding-left: 10px;">
                 <div class="content-box" style="width: 270px;">
                   <div class="content-box-inner">
                     <div class="content content-green">
                       <div class="content-inner clearfix">
                         
                         <h1><a href="{{ bloglink }}">{{ "older_news" |lc }}</a></h1>
                         
                       </div>
                     </div>
                   </div>
                 </div>
                 
                 
               </td>
             </tr>
           </table>
         </td>
       </tr>
     </table>
   </div> <!-- //content -->
   
	</div> <!-- //wrap -->
  {% include "JS" %}
</body>
</html>
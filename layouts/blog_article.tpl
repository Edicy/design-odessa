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
                         <div class="blog clearfix">
                           <h2 class="clearfix">{% editable article.title plain="true" %}</h2> 
                            <div class="blog_header">
                              {{ "author" |lc }}: {{ article.author.name }} - {{ article.created_at | format_date:"short" }}
                            </div>

                           <div class="content-hyphenate" data-search-indexing-allowed="true">{% editable article.excerpt %}</div>
<div style="height: 15px;"></div>

         <div class="content-hyphenate" data-search-indexing-allowed="true">{% editable article.body %}</div>
         
                         {% if editmode %}
                                <div class="article-tags">
                                    <div class="article-tag-icon"></div>
                                    {% editable article.tags %}
                                </div>
                              {% else %}
                                {% unless article.tags == empty %}
                                    <div class="cfx article-tags">
                                        <div class="article-tag-icon"></div>
                                        {% for tag in article.tags %}
                                            <a href="{{ article.page.url }}/tagged/{{ tag.path }}">{{ tag.name }}</a>{% unless forloop.last %}, {% endunless %}
                                        {% endfor %}
                                    </div>
                                {% endunless %}
                            {% endif %}
                          
                          </div> <!-- //blog -->
                         <a name="comments"></a>
                         <div class="comments content-hyphenate"><h2>{{ "comments_for_count" | lc }}: <span class="edy-site-blog-comments-count">{{ article.comments_count }}</span></h2>
                           {% for comment in article.comments %}
                            <div class="comment edy-site-blog-comment">
    
                              {{ comment.body_html }}
                              
                              <div class="comment-author">{% removebutton %} {{ "author" |lc }}: <span>{{ comment.author }} - {{ comment.created_at | format_date:"short" }}</span></div>
                            </div> <!-- //comment -->
                           {% endfor %}
                            
                            
                          </div> <!-- //comments -->
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
               <td style="padding-left: 10px;">
                 <div class="content-box" style="width: 270px;">
                   <div class="content-box-inner">
                     <div class="content content-yellow">
                       <div class="content-inner clearfix">
                         
                         <div id="addcomment">
{% unless comment.valid? %}<ul>
{% for error in comment.errors %}
<li>{{ error | lc }}</li>
{% endfor %}
</ul>{% endunless %}
                           <h3>{{ "add_a_comment" |lc }}</h3>
                           {% commentform %}
                             <table class="addcomment">
                               <tr>
                                 <td style="padding-left: 0">{{ "name" | lc }}</td>
                                 <td style="padding-right: 0"><input type="text" class="textbox" name="comment[author]" value="{{ comment.author }}" /></td>
                               </tr>
                               <tr>
                                 <td style="padding-left: 0">{{ "email" | lc }}</td>
                                 <td style="padding-right: 0"><input type="text" class="textbox" name="comment[author_email]" value="{{ comment.author_email }}" /></td>
                               </tr>
                               <tr>
                                 <td style="padding-left: 0">{{ "comment" | lc }}</td>

                                 <td style="padding-right: 0"><textarea cols="10" rows="10" name="comment[body]" >{{comment.body }}</textarea></td>
                               </tr>
                               <tr>
                                 <td></td>
                                 <td style="padding-right: 0"><input type="submit" class="submit" value="{{"submit"|lc}}" /></td>
                               </tr>
                             </table>
                           {% endcommentform %}
                         </div> 
                         
                       </div>
                     </div>
                   </div>
                 </div>
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
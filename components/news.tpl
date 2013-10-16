{% for article in site.latest_articles limit:1 %}
<div class="content-box" style="width: 270px; padding-left: 10px;">
                   <div class="content-box-inner">
                     <div class="content content-yellow">
                       <div class="content-inner">
                         <h1>{{ "latest_news" |lc}}</h1>
                         <table id="news">
                           <tbody>{% for article in site.latest_3_articles %}
<tr>
                             <td class="first">{{ article.created_at | date:"%d.%m" }}</td>
                             <td><a href="{{ article.url }}">{{ article.title }}</a></td>
                           </tr>{% endfor %}
                           <tr>
                             <td/>
                             <td class="first"><a href="{{ bloglink }}">{{ "older_news" | lc }}</a> | <img class="rss" title="RSS" alt="RSS" src="{{ images_path }}/rss.gif?1"/> <a href="{{ bloglink }}.rss">RSS</a></td>
                           </tr>
                         </tbody></table>
                       </div>
                     </div>
                   </div>
                 </div>
                             {% endfor %}
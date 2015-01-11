<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
	
	{% include "SiteHeader" %}

</head>

<body id="front">
	
	<div id="topbar">
   <div class="wrap">
     
     {% include "Langmenu" %}
     
     {% include "Search" %}
   </div> <!-- //wrap -->
	</div>
	
	<div class="wrap">
   
   <div id="content">
     
     <table class="front-table">
       <tr>
         <td>
           <div class="content-box" style="width: 270px;">
             <div class="content-box-inner">
               <div class="content content-green">
                 <div class="content-inner">
                   <br />
                   <h1 style="text-align: center;" class="clearfix">{% if editmode %}{% editable site.header %}{%else%}<a href="{{ site.root_item.url }}">{% editable site.header %}</a>{% endif %}</h1>
                 </div>
               </div>
             </div>
           </div>
         </td>
         <td>
           <div class="content-box" style="width: 270px; padding-left: 10px; overflow: hidden;">
             <div class="content-box-inner">
               <div class="content">
                 <div class="content-inner clearfix" data-search-indexing-allowed="true">
                   
                   {% content %}
                          <div class="clearer"></div>
                   
                 </div>
               </div>
             </div>
           </div>
         </td>
         <td>
           {% include "News" %}
         </td>
       </tr>
       <tr>
         <td style="vertical-align: top;">
           {% include "Mainmenu" %}
         </td>
         <td style="vertical-align: top;">
           <div class="content-box" style="width: 270px; padding-left: 10px;">
             
           </div>
         </td>
         <td style="vertical-align: top; padding-left: 10px;">
{% include "Contact" %}
         </td>
       </tr>
     </table>
   </div> <!-- //content -->
   
	</div> <!-- //wrap -->
  {% include "JS" %}
</body>
</html>
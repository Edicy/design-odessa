           <div class="content-box" style="width: 270px;">
             <div class="content-box-inner">
               <div class="content content-green">
                 <div class="content-inner clearfix">
                   {% content name="footer" xpage="true" %}
                 </div>
               </div>
             </div>
           </div>
           <div id="edicy">{% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}</div>
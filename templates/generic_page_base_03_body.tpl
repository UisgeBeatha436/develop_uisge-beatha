<!-- area: 3 of 3 generic page base 03 -->
{$three=3 scope='global'}
{strip}
<body class="{page_attr key='extra1'}">
  <a name="top"></a>
  {* include svg/shape.svg once *}
  {* svgdata inline=1 assetsbase=1 file='svg/shape.svg' tpl="{#theme_resource#}txt_svg.tpl"*}
  
  <!-- /area: 3 of 3 -->
    <!-- Search Modal -->
    <div id="modalSearch" class="modal fade" tabindex="-1" role="dialog" aria-label="modalSearchTitle"  aria-hidden="true"> {* originaly was aria-labelledby (replaced all occurrences) *}
      <div class="modal-dialog modal-dialog-center" role="document">
        {* Modal content / modal needs to be on a different place than the section it's been called from *}
        <div class="modal-content" style="background: var(--fill-color-boat-light);">
          <div class="modal-header">
            <h4 class="modal-title text-white">Zoek binnen Uisge Beatha</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form action="zoeken" enctype="multipart/form-data" method="get" style="color:white;">
              <input class="form-control"  type="text" id="zoekForm" name="q" placeholder="Geef zoekterm in" required>
              <input type="submit" value="Ga" formaction="/zoeken" id="submit" style="position: absolute; left: -9999px; width: 1px; height: 1px;" tabindex="-1">
            </form>
          </div>
          <div class="modal-footer">
            <button class="btn btn-primary btn-rounded" id="modalSearchSubmit" type="submit">Zoeken</button>
            <button class="btn btn-rounded float-left" data-dismiss="modal" aria-hidden="true">Sluit</button>
          </div>
        </div>
      </div>
    </div>
    <div class="container">
      {*<div class="row alert alert-info text-center fixed-bottom" role="alert" id="cookies-eu-banner" style="display: none;">
        <div class="col-12 ml-auto mr-auto">
          <p>By continuing your visit to this site, you accept the use of cookies by Google Analytics to make visits statistics.</p>
        </div>
        <div class="col-12">
          <div class="text-center">
            <a class="btn btn-info pull-center btn-round" href="./read-more.html" id="cookies-eu-more">Meer info</a> { *value="button"* }
            <button type="button" class="btn btn-succes btn-round pull-center" id="cookies-eu-accept">Accepteren</button>
            <button type="button" class="btn btn-warning btn-round pull-center" id="cookies-eu-reject">Afwijzen</button>
          </div>
        </div>
      </div>*}
    </div>
    
    {include file="{#theme_resource#}generic_nojs_google_tag_manager.tpl"}
    {minify_html_block collapse_whitespace='1' collapse_json_lt='0'}
      {block name='body_header'}
        <header data-visible="on" id="js_header">
          {*<div class="header-content">
            {cms_selflink dir='start' text="{$sitename}"}
          </div>*}
          {block name='body_nav'}
            <nav id="navbarHeader" class="navbar navbar-color-on-scroll navbar-expand-lg fixed-top scrolling-navbar navbar-transparent"> {*  color-on-scroll="150" bgdefault navbar-custom *}
              <div class="container-fluid">
                <div class="navbar-header">
                </div>
                {*<div class="navbar-translate">*}
                  {* requires popper.js  rel="tooltip" *}
                  {if $page_alias == 'hanse_311'}
                    <a class="navbar-brand lozad" href="{root_url}" rel="noreferrer" title="{$sitename} | Design based on Now_UI-Kit. Coded by Gregor" data-placement="bottom" target="_blank">
                      <img id="header_logo" class="logo"  src="{uploads_url}/images/cms/Logo_Hanse_UisgeBeatha.svg" alt="{$sitename}" title="{$sitename}">
                      {*<img id="header_logo" class="logo"  alt="{$sitename}" src="{CGSmartImage src="{uploads_url}/images/cms/Logo_Hanse_UisgeBeatha.svg" alt="{$sitename}" title="{$sitename}" noresponsive='1' notag=1 noembed={$noembed}}">*}
                    </a>
                  {else}
                    <a class="navbar-brand lozad" href="{root_url}" rel="noreferrer" title="{$sitename} | Design based on Now_UI-Kit. Coded by Gregor" data-placement="bottom" target="_blank">
                      <img id="header_logo" class="logo" src="{uploads_url}/images/cms/Logo_Dehler_UisgeBeatha-png.png" alt="{$sitename}" title="{$sitename}" height="90">
                      {*<img id="header_logo" class="logo"  alt="{$sitename}" src="{CGSmartImage src="{uploads_url}/images/cms/Logo_Dehler_UisgeBeatha.svg" alt="{$sitename}" title="{$sitename}" noresponsive='1' notag=1 noembed={$noembed}}" height="90">*}
                    </a>
                    {* https://svg-edit.github.io/svgedit/releases/latest/editor/svg-editor.html Logo_Dehler_UisgeBeatha.png *}
                  {/if}
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-expanded="false" aria-label="Toggle navigation" aria-controls="navigation"> {*aria-controls="navigation-index"*}
                      <span class="navbar-toggler-icon"></span>
                  </button>
                {*</div>*}
                <div class="collapse navbar-collapse" id="navigation"  > {* data-color="orange" data-nav-image="{CGSmartImage src="{uploads_url}/images/cms/Dehler-logo.png" alt="{$sitename}" title="{$sitename}" noresponsive='1' notag=1 noembed={$noembed}}" *}
                  {Navigator action='default' template="{#theme_resource#}navigator_navigation_multilevel_bootstrap_menu.tpl"}
                  {*global_content name='socialFollowButtons' shape='round' navbar='1'*}
                  <form class="form-inline ml-auto text-dark" data-background-color="#990000">
                    {if $browser_lang != 'nl'}
                      <div class="form-group my-md-2 col-sm-9">
                        {include file='cms_template:google_Translate'}
                      </div>
                    {/if}
                    <div class="form-group col-sm-3">
                      <a href="#modalSearch" data-toggle="modal" data-target="#modalSearch" role="button" aria-disabled="true">{svg use="search"}</a>  
                    </div>
                  </form>
                </div>
              </div>
            </nav>
          {/block}
        </header>
      {/block}
      {*
      A) <img src="my-navbar-image.png" class="img-fluid" alt="My responsive image.">
      B) https://stackoverflow.com/questions/42460930/how-to-resize-navbar-logo-on-scroll-down
      *}
      <main>
        <div class="container-fluid pl-0 pr-0">
          {block name='body_content'} {* this block displays the actual content *}
              <div class="row">
                <a id="a-content"></a>
                <div class="col-md-12">
                  {Navigator action='breadcrumbs' template="{#theme_resource#}navigator_navigation.tpl"}<br>
                </div>
                <div class="col-12">
                  <h1>{title}</h1>
                  {$content}
                </div>
              </div>
          {/block}
        </div>
      </main> {* End main *}
      <!-- Footer -->
      {block name='body_footer'}
        <footer class="page-footer pt-4 mt-4 text-center text-md-left" data-background-color="grijs" data-visible="on" id="js_footer">
          <!--Footer Links-->
          <div class="container-fluid">
              <div class="row">
                  <!--Left column-->
                  <div class="col-md-3">
                    <p>Op dit moment {visitors}.</p> {* Deze pagina is { HitCounter } keer bekeken.  *}
                    {cge_cache_block key='YoutubeFooter' expires=2400}
                      <div class="embed-responsive embed-responsive-16by9">
                        <iframe title="YoutubeFooter" class="embed-responsive-item lozad" src="https://www.youtube.com/embed/rY0Rd0C3OQ0"></iframe>
                      </div>
                    {/cge_cache_block}
                    {include|strip file='cms_template:Ads_Google'}
                  </div>
                  <!--/.Left column-->
                  <hr class="w-100 clearfix d-md-none">
                  <!--Center column-->
                  <div class="col-md-5">
                    <h3 class="h3-responsive font-weight-bold text-center">Waar bevindt Uisge Beatha zich?</h3>
                    {cgsi_convert}
                      {cge_cache_block key='ais' expires='3600'}
                        <div id="mapContent"></div>
                      {/cge_cache_block}
                    {/cgsi_convert}
                  </div>
                  <!--/.Center column-->
                  <hr class="w-100 clearfix d-md-none">
                  <!--Right column-->
                  <div class="col-md-3">
                    <h3 class="h3-responsive font-weight-bold text-center">Nieuwtjes ontvangen?</h3>
                    <section class="form-elegant">
                      {CGBetterForms form="mailingForm"}
                    </section>
                  </div>
                  <!--/.Right column-->
              </div>
          </div>
          <!--/.Footer Links-->

          <hr>
          <div class="container-fluid" data-footer-background-color="blue_gradient">
            <div class="row">
              <!--Social buttons-->
              <div class="col-md-7 col-lg-8">
              </div>
              <div class="col-md-5 col-lg-4 ml-lg-0 pt-3 float-right">
                  {global_content name='socialFollowButtons' shape='neutral' link='1'}
              </div>
              <!--/.Social buttons-->
            </div>
          </div>
          
              <!--Copyright-->
              <div class="footer-copyright py-3 text-center font-small indigo darken-3">
                  <div class="container-fluid">
                    &copy; {custom_copyright} Uisge Beatha - Made with <a href="https://www.cmsmadesimple.org/">CMS Made Simple</a>
                  </div>
              </div>
              <!--/.Copyright-->
            
        </footer>
        {*capture}
        <div class="scroll" data-visible="off" id="js_scroll">
          {$svg_file = "$theme_relative_url/svg/shape.svg"}
          {$svg_file = "/svg.svg"}
          {svgdata assetsbase=1 file='svg/shape.svg' assign='svgdata'}
          {$key = 'angle-up'}
          {math assign="_w" format='%.0f' equation=((1000 - $svgdata[$key]->w) / 2) + (($svgdata[$key]->w * 0.30) / 2)}
          {math assign="_h" format='%.0f' equation=((1000 - $svgdata[$key]->h) / 2) + (($svgdata[$key]->w * 0.30) / 2)}
          <a data-scroll href="{get_current_url}#a-content">
            <svg class="icon" viewBox="0 0 1000 1000" preserveAspectRatio="xMidYMid meet">
              <use class="custom-{$key}" xlink:href="{$svg_file}#custom-circle" transform="translate(50 50) scale(0.90)"/>
              <use class="shape-{$key}" transform="translate({$_w} {$_h}) scale(0.70)" xlink:href="{$svg_file}#shape-{$key}"/>
            </svg>
          </a>
        </div>
        {/capture*}
      {/block}
      <!--/.Footer -->

      {block name='js_footer'}
        {include file="{#theme_resource#}generic_js_footer.tpl"}
        {include file="{#theme_resource#}generic_js_google_analytics.tpl"}
        {include file="{#theme_resource#}generic_js_footer_google_tag_manager.tpl"}
      {/block}
      {if isset($page_js_footer) && $page_js_footer != ''}
        {$page_js_footer}
      {/if}
      
      {include|strip file='cms_template:svgIcons'}
    {/minify_html_block}
</body>
<!-- tmpl: body:end -->
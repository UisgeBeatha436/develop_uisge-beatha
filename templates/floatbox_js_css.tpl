{* plugin for photo's. Can only work as a module and not as part of es6 *}
<!-- floatboxgebruik -->
{if $page_alias == 'logboekpagina' OR $page_alias == 'fotoalbums' OR $page_alias == 'afkomst-naam' OR $page_alias == 'dehler-36-jv'}
    <!-- link rel="stylesheet" href="https://static.uisge-beatha.eu/_Javascripts/floatbox_811/floatbox.css" -->
    {jsmin}
		<script>
			var cb = function() {
			var l = document.createElement('link'); l.rel = 'stylesheet';
			l.href = '//static.uisge-beatha.eu/_Javascripts/floatbox_813/floatbox/floatbox.css', '//static.uisge-beatha.eu/_Javascripts/floatbox_813/floatbox/floatbox.js';
			var h = document.getElementsByTagName('head')[0]; h.parentNode.insertBefore(l, h);
			};
			var raf = requestAnimationFrame || mozRequestAnimationFrame ||
			webkitRequestAnimationFrame || msRequestAnimationFrame;
			if (raf) raf(cb);
			else window.addEventListener('load', cb);
		</script>
		<!--script src="https://static.uisge-beatha.eu/_Javascripts/floatbox_813/floatbox/floatbox.js"></script-->
    {/jsmin}
{/if}
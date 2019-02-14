{strip}
{config_load file='theme.ini' scope='global' section='cmsms_uisge-beatha'}
{extends file="{#theme_resource#}page_base.tpl"}
{assign var='addClass' value="product-page"}

{block name='open_content' append}
	{$content_01="{content label='Content 01'}" scope='global'}
	{$content_02 = "{content block='content_02' label='Content 02'}" scope='global'}
{/block}

{block name='body_content'}
	{include file="{#theme_resource#}generic_p_titlebar.tpl"}
	<section class="magazine-section my-5">
		<div class="container">
			{* <div class="l-content" data-visible="on" id="js_content"> *}
			<div class="row">
				<div class="col-md-3 ml-auto mr-auto">
					{*<a id="a-content"></a>*}
					{$content_01}
				</div>
				<div class="col-md-9 ml-auto mr-auto">
					{$content_02}
				</div>
			</div>
		</div>
	</section>
{/block}
{/strip}
<head>
    <meta charset="UTF-8">
    {include 'file:chunks/common/favico.tpl'}
    <title>{if $_modx->resource.longtitle==''}{$_modx->resource.pagetitle}{else}{$_modx->resource.longtitle}{/if}</title>
    {if $_modx->resource.description!=''}
        <meta name="Description" content="{$_modx->resource.description}">
    {/if}
    <base href="{$_modx->config.site_url}">
    {$_modx->runSnippet('MinifyX',[
        'minifyCss'=> 1,
	'minifyJs' => 0,
	'registerCss' => 'default',
	'cssSources' => '
		assets/templates/default/css/bootstrap.min.css,
		assets/templates/default/css/font-awesome.min.css,
		assets/templates/default/css/style.css,
		assets/templates/default/css/media.css,
		assets/templates/default/css/jquery.bxslider.css,
                assets/templates/default/js/fancybox/source/jquery.fancybox.css,
                assets/templates/default/css/magnify.css'
    ])}
    <meta name="viewport" content="width=device-width, user-scalable=no, minimum-scale=1">
</head>
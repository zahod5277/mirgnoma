<div class="col-xs-12 no-padding">
    {$_modx->runSnippet('!pdoCrumbs',[
                    'showHome' => 1,
                    'tpl' => '@INLINE <li class="breadcrumb-item"><a href="[[+link]]">[[+menutitle]]</a></li>',
                    'tplWrapper' => '@INLINE <ol class="breadcrumb">{$output}</ol>',
                    'tplCurrent' => '@INLINE <li class="breadcrumb-item active">{$pagetitle}</li>'
                ])}
</div>
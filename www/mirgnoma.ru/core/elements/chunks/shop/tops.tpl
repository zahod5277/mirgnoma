<div class="col-xs-12 no-padding" id="tops">
    <h2>Популярные товары</h2>
    <div id="mse2_results" class="col-xs-12 no-padding">
        {$_modx->runSnippet('msProducts',[
            'parents' => '2',
            'tpl' => '@FILE:chunks/shop/topsRow.tpl',
            'where' => '{"Data.popular:=":"1"}'
        ])}
    </div>
</div>
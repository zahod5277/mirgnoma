{$_modx->runSnippet('!mFilter2',[
    'element' => 'msProducts',
    'parents' => '2',
    'limit' => '20',
   'filters' => 'ms|price:number,tv|babyWeight,tv|country,tv|babyAge,tv|venodor,tv|pcsInPack',
   'tplFilter.row.ms|price' => 'tpl.mFilter2.filter.number',
   'tplFilter.outer.default' => '@FILE:chunks/shop/filter/tplFilter.outer.default.tpl',
   'tplFilter.outer.ms|price' => '@FILE:chunks/shop/filter/slider.tpl',
    'ajaxMode' => 'button',
    'tplOuter' => '@FILE chunks/shop/filter/searchResOuter.tpl',
    'tpl' => '@FILE chunks/shop/product/product.row.tpl',
])}
<div class="col-xs-12 col-sm-4 col-lg-4 no-padding bordered" id="productOfDay">
    <div class="heading">
        <h3>Товар дня</h3></div>
    {if $old_price!='0'}
        {$_modx->runSnippet('@FILE:snippets/getDiscontValue.php',[
            'price' => $price,
            'old_price' => $old_price,
            'tpl' => '@FILE:chunks/main/discontValue.tpl'
        ])}
        {/if}
    <div class="col-xs-6 col-sm-12 col-lg-12 no-padding" id="productOfDayDescr">
        <p class="productOfDayTitle"><a href="{$_modx->makeUrl($id)}" title="{$pagetitle}">{$pagetitle}</a></p>
    </div>
    <div class="col-xs-6 col-sm-7 col-lg-9 no-padding">
        {if $thumb==''}
            {var $thumb = 'assets/components/minishop2/img/web/ms2_medium.png'}
        {/if}
        <a href="{$_modx->makeUrl($id)}" title="{$pagetitle}" class="productImgLink">
            <img src="{$thumb}" alt="{$pagetitle}" class="img-fluid productOfDayImg">
        </a>
    </div>
    <p class="productOfDayPrice">{$price} <i class="fa fa-rub"></i></a></p>
</div>
<div class="productRow listRow col-xs-6 col-lg-4">
    <h4 class="productTitle">
        <a href="{$_modx->makeUrl($id)}" title="{$pagetitle}">{$pagetitle}</a>
    </h4>
    {if $thumb!=''}
        <a href="{$_modx->makeUrl($id)}" title="{$pagetitle}" class="col-xs-12 productImgLink">
            <img src="{$thumb}" alt="{$pagetitle}" class="img-fluid">
        </a>
    {else}
        <a href="{$_modx->makeUrl($id)}" title="{$pagetitle}" class="productImgLink">
            <img src="{$_modx->config.assets_url}components/minishop2/img/web/ms2_medium.png" alt="{$pagetitle}" class="img-fluid">
        </a>
    {/if}
    <div class="col-xs-12 col-lg-5 no-padding priceRow">
        <span class="price">
            {$price} <i class="fa fa-rub"></i>
        </span>
    </div>
    <div class="col-xs-12 col-lg-7 no-padding buttonRow">
        <button class="btn btn-success">В корзину</button>
    </div>
</div>
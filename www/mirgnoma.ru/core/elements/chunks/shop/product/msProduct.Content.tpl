<div id="msProductOuter" class="col-xs-12" itemscope itemtype="http://schema.org/Product">
    <h1 class="msProductTitle" itemprop="name">{$_modx->resource.pagetitle}</h1>
    <div class="article">
        {if $article!=''}
            <p>{$_modx->lexicon('ms2_product_article')}: {$article}</p>
        {/if}
    </div>
    <div id="msProduct" class="col-xs-12 no-padding">
        <div class="col-xs-6 col-md-4 no-padding" id="msGalleryOuter">
            {$_modx->runSnippet('msGallery',[
            'tpl' => '@FILE:chunks/shop/product/msGallery.tpl'
        ])}
        </div>
        <form class="form-horizontal ms2_form" method="post">
            <div class="col-xs-6 push-lg-4 col-md-4" id="msContentBuy">
                <input type="hidden" name="id" value="[[*id]]"/>
                <div class="form-group" itemprop="offers" itemscope itemtype="http://schema.org/Offer">
                    <div class="col-xs-12 col-md-10 form-control-static no-padding">
                        <p class="msContentPrice">
                            <span itemprop="price">
                                {$price}
                            </span>
                            <span class="hidden" itemprop="priceCurrency">
                                RUB
                            </span>
                            <i class="fa fa-rub"></i>
                        </p>
                            {if $old_price!='0'}
                            <span class="old_price">{$old_price} {$_modx->lexicon('ms2_frontend_currency')}</span>
                        {/if}
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-2 col-md-10 no-padding">
                        <button data-action="minus" class="countChanger">-</button>
                        <input type="text" name="count" id="product_price" class="msProductCount input-sm form-control" value="1" data-min="1" data-max="{$_modx->resource.quantity}"/>
                        <button data-action="plus" class="countChanger">+</button>
                        <span class="msProductCountLexicon">шт.</span>
                        <button type="submit" class="btn btn-success btn-buy" name="ms2_action" value="cart/add">
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i> В корзину
                        </button>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 pull-lg-4 col-md-4" id="msContentProp">
                <h6 class="msContentPropHeading">Характеристики</h6>
                <div class="msContentProps">
                    <p class="msContentPropsItem">Остаток на складе: {$_modx->resource.quantity}</p>
                    <p class="msContentPropsItem">Страна-производитель: {$_modx->resource.country}</p>
                    <p class="msContentPropsItem">Производитель: {$_modx->resource.vendor}</p>
                    <p class="msContentPropsItem">Возраст ребенка: {$_modx->resource.babyAge}</p>
                    <p class="msContentPropsItem">Вес ребенка: {$_modx->resource.babyWeight}</p>
                    <p class="msContentPropsItem">Количество шт. в упаковке: {$_modx->resource.pcsInPack}</p>
                </div>
            </div>
        </form>
    </div>
   <div class="col-xs-12 no-padding" itemprop="description">
        {$_modx->resource.content}
    </div>
</div>
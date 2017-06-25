<div id="msCart" class="col-xs-12 no-padding">
    {if !count($products)}
        {'ms2_cart_is_empty' | lexicon}
    {else}
        <div class="table-responsive">
            <div class="hidden-lg-down col-lg-12 no-padding">
                <div class="col-lg-3">
                    <h4 class="cartHeading">Фото</h4>
                </div>
                <div class="col-lg-3 no-padding">
                    <h4 class="cartHeading">Наименование</h4>
                </div>
                <div class="col-lg-2">
                    <h4 class="cartHeading">Количество</h4>
                </div>
                <div class="col-lg-2 no-padding">
                    <h4 class="cartHeading">Цена</h4>
                </div>
                <div class="col-lg-2 no-padding">
                    <h4 class="cartHeading">Удалить</h4>
                </div>
            </div>
            <div class="col-xs-12 no-padding" id="cartProducts">
                {foreach $products as $product}
                    <div id="{$product.key}" class="cartItem col-xs-12 no-padding">
                        <div class="col-xs-5 col-lg-3 image">
                            {if $product.thumb?}
                                <img src="{$product.thumb}" alt="{$product.pagetitle}" class="img-fluid" title="{$product.pagetitle}"/>
                            {else}
                                <img src="{'assets_url' | option}components/minishop2/img/web/ms2_small.png"
                                     srcset="{'assets_url' | option}components/minishop2/img/web/ms2_small@2x.png 2x"
                                     alt="{$product.pagetitle}" title="{$product.pagetitle}" class="img-fluid"/>
                            {/if}
                        </div>
                        <div class="col-xs-5 col-lg-3 no-padding title">
                            {if $product.id?}
                                <a href="{$product.id | url}">{$product.pagetitle}</a>
                                <p class="cartItemArticle">
                                    Артикул: {$product.article}
                                </p>
                                <p class="cartItemArticle">
                                    Остаток на складе: {$product.quantity}
                                </p>
                            {else}
                                {$product.name}
                            {/if}
                            {if $product.options?}
                                <div class="small">
                                    {$product.options | join : '; '}
                                </div>
                            {/if}
                        </div>
                        <div class="offset-xs-5 col-xs-6 col-md-3 offset-lg-0 col-lg-2 count">
                            <form method="post" class="ms2_form" role="form">
                                <input type="hidden" name="key" value="{$product.key}"/>
                                <div class="form-group">
                                    <button data-action="minus" class="countChanger">-</button>
                                    <input type="text" name="count" value="{$product.count}"
                                           data-min="1" 
                                           data-max="{$product.quantity}"
                                           class="form-control"/>
                                    <button data-action="plus" class="countChanger">+</button>
                                    <button class="btn btn-default" type="submit" name="ms2_action" value="cart/change">
                                        <i class="fa fa-refresh"></i>
                                    </button>
                                </div>
                            </form>
                        </div>
                        <div class="offset-xs-5 col-xs-4 offset-md-0 col-md-3 offset-lg-0 col-lg-2 no-padding price">
                            <span>{$product.price}</span> <i class="fa fa-rub"></i>
                            {if $product.old_price?}
                                <span class="old_price">{$product.old_price} <i class="fa fa-rub"></i>
                                {/if}
                        </div>
                        <div class="col-xs-1 col-lg-2 no-padding remove">
                            <form method="post" class="ms2_form">
                                <input type="hidden" name="key" value="{$product.key}">
                                <button class="btn btn-danger" type="submit" name="ms2_action" value="cart/remove">
                                    <i class="fa fa-times" aria-hidden="true"></i>
                                </button>
                            </form>
                        </div>
                    </div>
                {/foreach}
            </div>
        {/if}
    </div>
    <form method="post" class="col-xs-12">
        <button class="btn cartClearBtn" type="submit" name="ms2_action" value="cart/clean">
            {'ms2_cart_clean' | lexicon}
        </button>
    </form>
</div>
<div class="col-xs-12 no-padding {$total_count > 0 ? 'full' : ''}" id="msMiniCart">
    <div class="empty">
    <span>
        <a class="cartLinkOuter" href="{$_modx->makeUrl(32)}" title="Корзина">
            <i class="cart-ico"></i>
            <span class="miniCartTitle">Корзина</span>
        </a>
        <span class="miniCartCount">0</span>
        <a href="#" class="btn toCartBtn">Оформить заказ</a>
    </span>
    </div>
    <div class="not_empty">
    <span>
        <a class="cartLinkOuter" href="{$_modx->makeUrl(32)}" title="Корзина">
            <i class="cart-ico"></i>
            <span class="miniCartTitle">Корзина</span>
        </a>
        <span class="miniCartCount miniCartActive"><span class="ms2_total_count">{$total_count}</span></span>
        <a href="{$_modx->makeUrl(32)}" title="Оформить заказ" class="btn toCartBtn toCartBtnActive">Оформить заказ</a>
    </span>    
    </div>
</div>
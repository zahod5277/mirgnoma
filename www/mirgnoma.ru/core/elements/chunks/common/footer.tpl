<footer class="col-xs-12 no-padding">
    <div class="container no-padding">
        <div class="col-xs-12 no-padding footerLinks">
            <a href="{$_modx->makeUrl(133)}" title="Бизнес" class="footer-link">Бизнес</a>
            <a href="{$_modx->makeUrl(134)}" title="Поставщикам" class="footer-link">Поставщикам</a>
            {$_modx->runSnippet('pdoMenu',[
                'parents' => 0,
                'resources' => '114,138,141,112',
                'showHidden' => 1,
                'level' => 1,
                'tplOuter' => '@INLINE {$wrapper}',
                'tpl' => '@INLINE <a href="{$uri}" class="footer-link">{$pagetitle}</a>'
            ])}
        </div>
        <p>Информация на сайте www.mirgnoma.ru не является публичной офертой. Указанные цены действуют только при оформлении заказа через интернет-магазин www.mirgnoma.ru</p>
    </div>
</footer>
<!DOCTYPE html>
<html lang="ru">
    {block 'head'}
    {include 'file:chunks/common/head.tpl'}
    {/block}
    <body>
        {block 'header'}
        {include 'file:chunks/common/cartAffix.tpl'}
        {include 'file:chunks/common/infoCabinetMenu.tpl'}
        {include 'file:chunks/common/header.tpl'}
        {/block}
        
        {block 'content'}
        <div class="container" id="content">
            {include 'file:chunks/common/menuClosed.tpl'}
            {include 'file:chunks/shop/category/search.tpl'}
            {include 'file:chunks/common/crumbs.tpl'}
            <div class="col-xs-12 no-padding">
                <h1>{$_modx->resource.pagetitle}</h1>
                {$_modx->resource.content}
            </div>
        </div>
        {/block}
        {block 'footer'}
        {include 'file:chunks/common/footer.tpl'}
        {/block}
        {block 'scripts'}
        {include 'file:chunks/common/scripts.tpl'}
        {/block}
    </body>

</html>
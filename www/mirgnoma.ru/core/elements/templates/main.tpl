{extends 'file:templates/base.tpl'}
{block 'content'}
    <div class="container" id="content">
        {include 'file:chunks/common/menu.tpl'}
        {include 'file:chunks/main/mainWelcome.tpl'}
        {include 'file:chunks/shop/tops.tpl'}
    </div>
{/block}
<div class="col-xs-12 no-padding" id="infoCabinetMenu">
    <div class="container no-padding">
        <div class="col-xs-7 col-md-8">
            <ul class="infoCabenetMenuUl">
                <li><a href="{$_modx->makeUrl(111)}" title="Доставка и оплата">Доставка и оплата</a></li>
                <li><a href="{$_modx->makeUrl(112)}" title="Обмен и возврат">Обмен и возврат</a></li>
                {*<li><a href="{$_modx->makeUrl(113)}" title="Таблица размеров">Таблица размеров</a></li>*}
            </ul>
        </div>
        <div class="col-xs-5 col-md-4" id="headerLogin">
            {$_modx->runSnippet('@FILE:snippets/LoginLogout.php')}
        </div>
    </div>
</div>
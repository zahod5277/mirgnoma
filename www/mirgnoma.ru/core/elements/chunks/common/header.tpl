<header>
    <div class="container">
        <div class="col-xs-3 col-md-6 no-padding" id="logo">
            {if $_modx->resource.id!='1'}
                <a href="{$_modx->makeUrl(1)}" title="на главную">
                    <img src="{$_modx->config.assets_url}templates/default/img/logo.png" class="img-fluid" alt="Мир гнома. Детский интернет-магазин">
                </a>
            {else}
                <img src="{$_modx->config.assets_url}templates/default/img/logo.png" class="img-fluid" alt="Мир гнома. Детский интернет-магазин">
            {/if}   
        </div>
        <div class="col-xs-9 col-lg-6 no-padding" id="headerPhone">
            <p class="phone">
                <span>+7 (812)</span> 740-05-05
            </p>
            <p class="adressContacts">
                <a href="{$_modx->makeUrl(114)}" title="Адреса и контакты">
                    Адреса и контакты
                </a>
            </p>
        </div>
    </div>
</header>
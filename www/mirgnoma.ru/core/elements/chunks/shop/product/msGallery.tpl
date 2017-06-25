<div id="msGallery">
    {if $files?}
        <div class="FFotorama">
            <a class="col-xs-12 no-padding fotorama__stage" href="{$files[0]['url']}" id="mainImage">
                <img itemprop="image" src="{$files[0]['url']}" class="zoom fotorama__img img-fluid">
            </a>
            <div id="thumbnails" class="col-xs-12 no-padding">
                {foreach $files as $file}
                    <a href="{$file['url']}" class="col-xs-4 col-lg-3 no-padding thumbnail" data-image="{$file['220x160']}" data-zoom-image="{$file['url']}" target="_blank">
                        <img src="{$file['220x160']}" class="img-fluid" alt="" title="">
                    </a>
                {/foreach}
            </div>
        </div>
{/if}
</div>

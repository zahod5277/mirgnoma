{var $img = $_modx->runSnippet('phpthumbon',[
    'input' => $image,
    'options' => 'w=428&h=240&zc=1'
])}
<li>
    {if $url != ''}
        <a href="{$url}" title="{$name}">
            <img src="{$img}" alt="{$name}">
            </a>
        {else}
            <img src="{$img}" alt="{$name}">
    {/if}
</li>
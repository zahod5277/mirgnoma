{$_modx->runSnippet('pdoMenu',[
                'parents' => 2,
                'level' => 2,
                'tplOuter' => '@INLINE {$wrapper}',
                'where' => '{"template:=":"4"}',
                'tpl' => '@INLINE <li class="dropdown-item dropdown-submenu"><a class="dropdown-item" href="{$uri}">{$pagetitle}{if $wrapper!=""}<i class="fa fa-angle-down"></i>{/if}</a>{$wrapper}</li>',
                'tplInner' => '@INLINE <ul class="dropdown-menu">{$wrapper}</ul>',
                'tplInnerRow' => '@INLINE  <li><a class="dropdown-item interaction" tabindex="-1" href="{$uri}">{$pagetitle}</a></li>'
                
            ])}
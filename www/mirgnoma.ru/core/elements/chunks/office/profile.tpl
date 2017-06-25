<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" data-toggle="tab" href="#history" role="tab">История заказов</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" data-toggle="tab" href="#edit" role="tab">Редактирование профиля</a>
  </li>
</ul>

<!-- Tab panes -->
<div class="tab-content">
    <div class="tab-pane active" id="history" role="tabpanel">
        {$_modx->runSnippet('!officeMiniShop2')}
    </div>
    <div class="tab-pane" id="edit" role="tabpanel">
        {$_modx->runSnippet('!officeProfile',[
            'tplProfile' => '@FILE:chunks/office/profileTpl.tpl'
        ])}
    </div>
</div>
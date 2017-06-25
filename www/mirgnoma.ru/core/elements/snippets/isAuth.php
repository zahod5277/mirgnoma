<?php

if ($modx->user->isAuthenticated('web')) {
   $url = $modx->makeUrl(116);
   $modx->sendRedirect($url);
}

return;
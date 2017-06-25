<?php
$pdo = $modx->getService('pdoTools');
/* 
 * Проверяет, авторизован ли пользователь, и подставляет ссылки на вход/регистрацию или выход с сайта
 */

if ($modx->user->isAuthenticated('web')) {
   $output = $pdo->getChunk('@FILE:chunks/office/headerLogout.tpl');
} else {
   $output = $pdo->getChunk('@FILE:chunks/office/headerLogin.tpl'); 
}

return $output;

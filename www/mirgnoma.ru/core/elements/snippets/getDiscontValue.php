<?php
$pdo = $modx->getService('pdoTools');
/*Расчет процента скидки из цены и старой цены*/
if ($price > 0){
    if ($old_price > 0){
        $percent = (100*$price)/($old_price);
        $percent = round(100 - $percent);
        $output = $pdo->getChunk($tpl,array('value'=>$percent));
        return $output;
    }
} else {
    return;
}
<?php
define('MODX_API_MODE', true);
require dirname(dirname(dirname(dirname(dirname(__FILE__))))) . '/index.php';

$modx->getService('error','error.modError');
$modx->setLogLevel(modX::LOG_LEVEL_ERROR);
$modx->setLogTarget('FILE');

/* @var miniShop2 $miniShop2 */
$miniShop2 = $modx->getService('minishop2');
$miniShop2->loadCustomClasses('payment');

if (!class_exists('Sberbank')) {exit('Error: could not load payment class "Sberbank".');}
$context = '';
$params = array();

/* @var msPaymentInterface|Sberbank $handler */
$handler = new Sberbank($modx->newObject('msOrder'));

if (!empty($_REQUEST['orderId'])) {
    //$handler->receive(null, $_REQUEST);
	if ($order = $modx->getObject('msOrder', $_REQUEST['orderId'])) {
		$handler->receive($order, $_REQUEST);
	}
	else {
		$modx->log(modX::LOG_LEVEL_ERROR, '[miniShop2:Sberbank] Could not retrieve order with id '.$_REQUEST['orderId']);
	}
}

if (!empty($_REQUEST['orderId'])) {$params['msorder'] = $_REQUEST['orderId'];}

$success = $failure = $modx->getOption('site_url');
if ($id = $modx->getOption('ms2_payment_sbrbnk_success_id', null, 0)) {
	$success = $modx->makeUrl($id, $context, $params, 'full');
}
if ($id = $modx->getOption('ms2_payment_sbrbnk_failure_id', null, 0)) {
	$failure = $modx->makeUrl($id, $context, $params, 'full');
}

$redirect = !empty($_REQUEST['action']) && $_REQUEST['action'] == 'success' ? $success : $failure;
header('Location: ' . $redirect);

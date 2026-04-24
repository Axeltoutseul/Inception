<?php
define('DB_NAME', getenv('DB_NAME'));
define('DB_USER', getenv('DB_USER'));
define('DB_PASSWORD', getenv('DB_PASSWORD'));
define('DB_HOST', 'db:3306');
define('DB_ROOT_PASSWORD', getenv('DB_ROOT_PASSWORD'));
define('TABLE_PREFIX', getenv('WP_TABLE_PREFIX'));

define('WP_DEBUG', false);

if (!defined('ABSPATH'))
{
    define ('ABSPATH', __DIR__ . '/');
}

require_once ABSPATH . 'wp-settings.php';
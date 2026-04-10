define('DB_NAME', 'inception');
define('DB_USER', getenv('DB_USER'));
define('DB_PASSWORD', getenv('DB_PASSWORD'));
define('DB_HOST', 'db:3306');

define('AUTH_KEY',         'w(g+|;Qe45RQ0_y+(+cqGu9J`;|b=CNi8|@g@|]Z`G}Di=dKkIEwGqJDY ~:M^tC');
define('SECURE_AUTH_KEY',  'j]i{Pe0$Hl@l|fn1@16Ao8 n6#]R4xPfz[1D6yCgt*lY=otD{DJQ=4hM}C/K.;1)');
define('LOGGED_IN_KEY',    'm*~& fb#qE~1Ka>+nuKB-{#m*!AC9-$q.tD=@6GhYF;Y-(O.GI#`4Am#J3`uFB@t');
define('NONCE_KEY',        '6v:4Q+34NR4ct@U{3B9[wR-*d, ?6IqQ89]O]o8kI_wl vU2o90| -H@I,ac|kJ:');
define('AUTH_SALT',        'KILc#!Y K-Y=84SDELX}O[aZ 1-c;kXH}J,QaiMZ8xo_deD.L@s$.TnNCe1-q>-2');
define('SECURE_AUTH_SALT', 'w}pD}UCHUPP[I+*v^TOsB@(E=+vc-^|lPbAD6n7:z~I9[PyfHY%`).<iZ@|F{:2&');
define('LOGGED_IN_SALT',   'o-+,zVKoQHGQ,JK8RMCH&O?D=Ib{S+*j.3%-q1pT8VzPUJg8`u1;wttyV5Aa1rcI');
define('NONCE_SALT',       'C3e>#|&NWT}(U2&xPu[z.[Z>)),=(>Ne`aIB;;W@3}KE! 8l~EJDzh1Kz$ne|aIE');

define('WP_DEBUG', false);

if (!defined('ABSPATH'))
{
    define ('ABSPATH', __DIR__ . '/');
}

require_once ABSPATH . 'wp-settings.php';
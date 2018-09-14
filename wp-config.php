<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'MobG');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'N5`{)d! j~jxm;Hth+y|p~ Yy(y.6C%i1*(2Hj^uX%fjUB{L lP7o^N^l.zjQHGE');
define('SECURE_AUTH_KEY',  'Mz+$;/!(g<P//&~9Y `DS}J[m>5<[I8=lP0@9%h{Bwm`&rZkE;p!)iEz`B}fvNp`');
define('LOGGED_IN_KEY',    'nkSyO]O- q<78TIYDEY;.Ed1;r#8~5!C8::aXsJGw(L3.!Yz|PZzv_iczKDddpjK');
define('NONCE_KEY',        '&`Hmjq)?a>q8lX^r):o,n|lKwtO??ntfI(h|c:2Hrh|lP(dmf9Hv`>8,a?+7JqVs');
define('AUTH_SALT',        'x$f[5F0fiSxMf HcNau<NFl,8_(OA2K.Zfo3|75A5ro#%@_JqvbAhfur?M8h+Ba&');
define('SECURE_AUTH_SALT', 'Z`neplv37h].CTS6;+WzM+:Mb3aZi Vn~Gr}<@af2Up]duBIV`Y<8B1;f`oH~LKU');
define('LOGGED_IN_SALT',   '*0<F`NPUGXaS/yukFU6W*$~SQKFE=n$XRPQwRt^G,tL^RuTTfdaagcY@G7rhl R{');
define('NONCE_SALT',       '5?]WI1y=9|X=4(J1Cx<Fl3e66)lUx0s~?/z|jh$M>{VAolCvn[/(P|h.ufKbR8~(');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

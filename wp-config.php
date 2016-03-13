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
define('DB_NAME', 'onefabshop');

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
define('AUTH_KEY',         '-n)S>w&fRdBLug%;-/of:b-YzQx+RIFqWY6t5.3x}[L)gfjDqE=xh_*/Yh4Q=HZG');
define('SECURE_AUTH_KEY',  '[0A+wurZzz~&W&`{yV{`39[y[}1RQ^1+<M61H@Nm4n;+pm|x5tPHxDo>8tMc&AA}');
define('LOGGED_IN_KEY',    '3ZxYc8bu|LuUFoXhE)z+ERw=/w%2E.|K>QU0E|@/60BPkbm8z)7M><YYB{7,NqW_');
define('NONCE_KEY',        'c)V*?`]d{<Rda!m7-Ez44%{?8~8*q8q#c)>&er@p_YO6Ok:wXgySR/}5}K6dE<w ');
define('AUTH_SALT',        'as_-w&P{QQJs9; 7<su: x3+lJ{+] DmLs>i_7%jHNWag8D%$8>ICBl0HLW(L>Fz');
define('SECURE_AUTH_SALT', '^m-D*4.N8^|w+^&3fk)uluQWEiHJG#>qpx0:/9TQm|GH=Ij4,.c39QF)#r=%K]`E');
define('LOGGED_IN_SALT',   'n+`S3]7|Bw&Sc;j$%:(cDG&xz; 5;!3mkn8r^B8cWUTYyEaV2Ce54-OE-AQgn`?b');
define('NONCE_SALT',       '3X.*o@-<,<ZTx]9:@w4LUS=oKEAX(6C<W@|RLGi;|DI9~3S`*syR+~0:i09-r]} ');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'ofs2616_';

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

/* Multisite */
define( 'WP_ALLOW_MULTISITE', true );

define('MULTISITE', true);
define('SUBDOMAIN_INSTALL', false);
define('DOMAIN_CURRENT_SITE', 'localhost');
define('PATH_CURRENT_SITE', '/onefabshop/');
define('SITE_ID_CURRENT_SITE', 1);
define('BLOG_ID_CURRENT_SITE', 1);
define('FS_METHOD','direct'); /* remove in production mode */

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

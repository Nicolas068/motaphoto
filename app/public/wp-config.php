<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          '0.ugN8N>vxG-&^j.{Kn(M9{zsCr,4xeOnJ2gt^sFQMPkuV?8KAc;F*o=,#xJk<5M' );
define( 'SECURE_AUTH_KEY',   '6ECdBipQl|Ys.,}NCt^9G_CF.uaMbR/7?]/HS{?;y[1.p`xw.kSw;~}^p*i_olgs' );
define( 'LOGGED_IN_KEY',     'o():c[&>0g6LM)eXFJa_1!Whtct8JcO3WA]Ic> H45>Mna:d3.htDc#N>a!syi*i' );
define( 'NONCE_KEY',         'e~2<~JQuyJ$JXJX{v@r6IW{EEn^-IaD8}/buy&,3I{G0@0H9{E%mZ}%2w!Og]|uE' );
define( 'AUTH_SALT',         'WkA!MHu=0!r{l1@8(*`Sq9eJ7mx0GO[orqyhl*WL*&e_yv0]}#( ~QMqtl~9iL~!' );
define( 'SECURE_AUTH_SALT',  'Ss[~|b03tyUN^Y_HON~xL]%K`~k9y>E=m>[[(8FPp_U/FM-~CQ{1)+*+v6aIt*M-' );
define( 'LOGGED_IN_SALT',    ':vfd=KL^{R6pqv^1lcG9l(sW`N}_$7@,:0zXWVt*^Y<; /ZidNJJ-L-1&05=(Ou ' );
define( 'NONCE_SALT',        'b%#QQAH}dDaY_R6a@>7v%. BZQf#`RbBWMp .MnmcdLCKpDr}oibdc$C+q{?8TnI' );
define( 'WP_CACHE_KEY_SALT', ']LW{=nq(*2.E;W&kOa22&h&L)r`T>qd}oW*]-nC{nyeS-6TIhrU;{s[w*E}BvZrR' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

<?php 

    /******************************************************PATHS CONFIGURATION*************************************/
    // you can change this to let files stays protecteds
    define("__ADMIN", "dashboard");
    // If deployed in a web server, change this according to your configuration
    // For Example. the domain name is www.someUrl.com, then if the php files are stored in
	// a folder named as "responsive" then the complete url would be
	// www.someUrl.com/responsive
    define("BASE_URL", "http://localhost/discoverpalawan");
	// Folder directory for images uploaded from the desktop
    // Change Only the domain name and application folder  :  http://localhost/SmartGeoStore
    define("IMAGES_BASE_URL","http://localhost/discoverpalawan/uploads/images/");


    /******************************************************DATABASE CONFIGURATION *****************************/
    //Set your database Host name
    define("HOST_NAME", "localhost");
    // change the user access, CPanel have user roles, when writing and reading files
	// set it to allow the certain User to read/write
    define("DB_USERNAME", "zeroafmn_zerobst");
    // change this according to your account credentials
    define("DB_PASSWORD", "zerobstacle6989");
    // if you wish you create your own name for   Database then change the word "db_geostore"
    define("DB_NAME", "zeroafmn_discoverpalawan");

	define("CONF_VERSION", "1.5.1");

    /***************************** FROM JSON FILE *****************************/

    define("CRYPTO_KEY", "04ae529f595f34abaed040f77dd3ce54");
    define("PARAMS_FILE", md5(CRYPTO_KEY));

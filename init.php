<?php


    //default false
    define("SAFE_MODE", false);
    //the app version
    define("APP_VERSION", "1.7.1");
    define("APP_CODE_VERSION", 212);
    ///////////////////////////////////
    define("_LOGS", 1);
    define("INDEX", "index.php");

    define("INIT_PLATFORM", "ns-android");//api item ID
    define("PROJECT_NAME", APP_VERSION . "," . INIT_PLATFORM);

    define("ENCODING", "UTF-8");

    if(!defined("CAMPAIGN_TYPES")){
        $var = array(
            "store","offer","event"
        );
        define("CAMPAIGN_TYPES",json_encode($var)) ;
    }


    //images upload
    define("MAX_IMAGE_UPLOAD", 2); //by MB
    define("MAX_NBR_IMAGES", 6);
    define("MAX_STORE_IMAGES", 6);





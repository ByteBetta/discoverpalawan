<?php

(defined('BASEPATH')) OR exit('No direct script access allowed');

/* load the MX_Loader class */

class MAIN_Controller extends MY_Controller   {

    public function __construct()
    {
        parent::__construct();
        GroupAccess::initGrant();
    }



}

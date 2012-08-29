<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'koko.imu.uiowa.edu',
	"username" => 'uisg_housing',
	"password" => 'kE3APR3s',
	"database" => 'uisg_housing',
	"path" => '',
);
/*
$databaseConfig = array(
	"type" => 'SQLiteDatabase',
	"server" => 'none',
	"username" => 'none',
	"password" => 'none',
	"database" => 'uisg',
	"path" => '/Applications/MAMP/htdocs/uisg/uisg.sqlite',
);
*/
MySQLDatabase::set_connection_charset('utf8');

// This line set's the current theme. More themes can be
// downloaded from http://www.silverstripe.org/themes/
SSViewer::set_theme('blackcandy');

// Set the site locale
i18n::set_locale('en_US');
//Director::set_environment_type("dev");
// enable nested URLs for this site (e.g. page/sub-page/)
SiteTree::enable_nested_urls();
Object::add_extension('BlogTree_Controller', 'BlogTreeExtensions');
Object::add_extension('SiteConfig', 'ContactFormConfig');
RecaptchaField::$public_api_key = '6LcjsAgAAAAAAD6MXE7QNLusIBMajgpfK_EWjL3C';
RecaptchaField::$private_api_key = '6LcjsAgAAAAAAJNAXp7BiEvEas6scIeWzQdaS87c';
FulltextSearchable::enable();



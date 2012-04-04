<?php
class AboutPage extends Page {

	public static $db = array(
	);

	public static $has_one = array(
	
		"Image" => "Image"
		 
	);
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		
		$fields->addFieldToTab('Root.Content.Main', new ImageField('Image','Group Shot (800x300)'));


		return $fields;
	}
		

}
class AboutPage_Controller extends Page_Controller {

	public static $allowed_actions = array (
	);
	
	public function init() {
		parent::init();
	}
}
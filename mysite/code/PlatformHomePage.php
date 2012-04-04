<?php
class PlatformHomePage extends Page {

	public static $db = array(
	);

	public static $has_one = array(
	
		/*"MainImage" => "Image"*/
	
	);
	
	public static $allowed_children = array ("PlatformInitiativePage");
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		
		//$fields->removeFieldFromTab('Root.Content.Main', 'Content');
		//$fields->addFieldToTab('Root.Content.Main', new ImageField('Image','Slider Image'));
		//$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Content','Content'));

		return $fields;
	}

	

}
class PlatformHomePage_Controller extends Page_Controller {

	public static $allowed_actions = array (
	);
	
	
	public function init() {
		parent::init();
	}
}
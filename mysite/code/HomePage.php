<?php
class HomePage extends Page {

	public static $db = array(
	
		"Tagline" => "HTMLText",
		"ShowRandomProfile" => "Boolean",
		
		"HomePageLinkText1" => "Text",
		"HomePageLinkURL1" => "Text",

		"HomePageLinkText2" => "Text",
		"HomePageLinkURL2" => "Text",
		
		"HomePageLinkText3" => "Text",
		"HomePageLinkURL3" => "Text",
		
		"HomePageLinkText4" => "Text",
		"HomePageLinkURL4" => "Text",	
	);

	public static $has_one = array(
	);
	
	
	
	public static $allowed_children = array ("HomePageSlider");

	function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->removeFieldFromTab("Root.Content.Main","Content");
		$fields->addFieldToTab("Root.Content.Main", new CheckboxField("ShowRandomProfile","Show Random Members?"));
		
		$fields->addFieldToTab("Root.Content.Main", new TextField("HomePageLinkText1","Home Page Button 1 Text"));
		$fields->addFieldToTab("Root.Content.Main", new TextField("HomePageLinkURL1","Home Page Button 1 Link URL"));

		$fields->addFieldToTab("Root.Content.Main", new TextField("HomePageLinkText2","Home Page Button 2 Text"));
		$fields->addFieldToTab("Root.Content.Main", new TextField("HomePageLinkURL2","Home Page Button 2 Link URL"));

		$fields->addFieldToTab("Root.Content.Main", new TextField("HomePageLinkText3","Home Page Button 3 Text"));
		$fields->addFieldToTab("Root.Content.Main", new TextField("HomePageLinkURL3","Home Page Button 3 Link URL"));		
		$fields->addFieldToTab("Root.Content.Main", new TextField("HomePageLinkText4","Home Page Button 4 Text"));
		$fields->addFieldToTab("Root.Content.Main", new TextField("HomePageLinkURL4","Home Page Button 4 Link URL"));		

		
		return $fields;
	}
}
class HomePage_Controller extends Page_Controller {

	public static $allowed_actions = array (
	);
	
	public function init() {
		parent::init();
	}
}
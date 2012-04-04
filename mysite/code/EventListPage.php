<?php
class EventListPage extends BlogHolder {

	public static $db = array(
	);

	public static $has_one = array(
	
		"MainImage" => "Image"
	
	);
	
	public static $allowed_children = array ("BranchPersonPage");
	

}
class EventListPage_Controller extends BlogHolder_Controller {

	public static $allowed_actions = array (
	);
	
	
	public function init() {
		parent::init();
	}
}
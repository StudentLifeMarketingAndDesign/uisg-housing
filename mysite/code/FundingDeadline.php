<?php
class FundingDeadline extends DataObject {

	public static $db = array(
		"DeadlineTitle" => "Varchar(255)",
		"Deadline" => "Date"
	
	);

	public static $has_one = array(
	
		"FundingPage" => "FundingPage"
		 
	);
	
	public function getCMSFields_forPopup()
	{
	
		$date_field = new DateField("Deadline");
		
		$date_field->setConfig("showcalendar", true);
	
		return new FieldSet(
			new TextField("DeadlineTitle","Title of the Deadline"),
			$date_field	
		);
	}
	
	/*function getCMSFields() {
		$fields = parent::getCMSFields();
		
		$fields->addFieldToTab('Root.Content.Main', new ImageField('Image','Group Shot (800x300)'));


		return $fields;
	}*/
		

}

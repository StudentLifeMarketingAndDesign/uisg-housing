<?php
class Meeting extends DataObject {

	public static $db = array(
		"Title" => "Varchar(255)",
		"Date" => "Date",
		"Time" => "Text",
		"Type" => "Text",
		"Notes" => "HTMLText",
		"Location" => "Text"
	
	);
	public static $defaults = array(
		"Location" => "University Capitol Centre 2520D"
	);
	public static $has_one = array(
			 "LegislativeBranchPage" => "LegislativeBranchPage"
	);
	
	public function getCMSFields_forPopup()
	{
	
		$date_field = new DateField("Date");
		$date_field->setConfig("showcalendar", true);
	
		$meetingTypes = array ("General Senate Meeting" => "General Senate Meeting", "Committee Meeting" => "Committee Meeting");
		return new FieldSet(
			$date_field,
			new TextField("Time","Time of the Meeting"),
			new TextField("Location","Location of the Meeting"),

			new DropdownField("Type","Type of the Meeting", $meetingTypes),
			new TextField("Title","Title of the Meeting (optional)"),
			new SimpleTinyMCEField("Notes", "Meeting Notes")
			
		);
	}

	public function Link(){
	        if($LegislativeBranchPage = $this->LegislativeBranchPage())
	        {
	            $Action = 'meetings/' . $this->ID;
	            return $LegislativeBranchPage->Link($Action);    
	        }
	    }
	/*function getCMSFields() {
		$fields = parent::getCMSFields();
		
		$fields->addFieldToTab('Root.Content.Main', new ImageField('Image','Group Shot (800x300)'));


		return $fields;
	}*/
		

}

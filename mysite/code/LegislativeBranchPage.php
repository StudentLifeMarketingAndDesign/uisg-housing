<?php
class LegislativeBranchPage extends BranchPage {

	public static $db = array(
		"SenateMeetingsContent" => "HTMLText",
		"CommitteeMeetingsContent" => "HTMLText"
	);

	public static $has_one = array(
	
	
	);
	
	public static $has_many = array(
		"Meetings" => "Meeting"
	
	);
	
	public static $allowed_children = array ("BranchPersonPage", "MeetingsPage", "CommitteePage");
	
	function getCMSFields() {
		$fields = parent::getCMSFields();
		

		$domfield = new DataObjectManager(
			$controller = $this,
			$name = 'Meetings',
			$sourceClass = 'Meeting',
			$fieldList = array( 'Date' => 'Date','Type' => 'Type'),
			$detailFormFields = 'getCMSFields_forPopup',
			$sourceFilter = null,
			$sourceSort = 'Date DESC'
	
		);		

		
		$fields->addFieldToTab('Root.Content.Meetings', $domfield);

		//$fields->removeFieldFromTab('Root.Content.Main', 'Content');
		$fields->addFieldToTab('Root.Content.Meetings', new HTMLEditorField('SenateMeetingsContent','Senate Meetings Content'));
		$fields->addFieldToTab('Root.Content.Meetings', new HTMLEditorField('CommitteeMeetingsContent','Committee Meetings Content'));
		//$fields->addFieldToTab('Root.Content.Main', new ImageField('Image','Slider Image'));
		//$fields->addFieldToTab('Root.Content.Main', new HTMLEditorField('Content','Content'));

		return $fields;
	}

	

}
class LegislativeBranchPage_Controller extends BranchPage_Controller {

	public static $allowed_actions = array ( "meetings"
	);
	
    public function getMeeting()
    {
        $Params = $this->getURLParams();
         
        if(is_numeric($Params['ID']) && $StaffMember = DataObject::get_by_id('Meeting', (int)$Params['ID']))
        {       
            return $StaffMember;
        }
    }
    
    public function Secretary(){
    
    	$sec = DataObject::get("BranchPersonPage", "Position LIKE 'Secretary'");
    	
    	if($sec){
    		return $sec;
    	}else{
    		return false;
    	}
    
    }
    
    public function Speaker(){
    
    	$sec = DataObject::get("BranchPersonPage", "Position LIKE 'Speaker'");
    	
    	if($sec){
    		return $sec;
    	}else{
    		return false;
    	}
    
    }
    
    function AllCommittees(){
    	$committees = DataObject::get("Committee",null,"Title ASC");
    	
    	if($committees){
    		return $committees;
    	}else{
    		return false;
    	}
    
    
    }
    
	
	function meetings(){
	
        if($Meeting = $this->getMeeting())
        {
            $Data = array(
                'Meeting' => $Meeting
            );
             
            //return our $Data array to use on the page
            return $this->Customise($Data);
        }
        else
        {
        
        	
        	$Data = array(
                'AllMeetings' => DataObject::get("Meeting"),
                'SenateMeetings' => DataObject::get("Meeting", "Type = 'General Senate Meeting'", "Date ASC"),
                'CommitteeMeetings' => DataObject::get("Meeting", "Type = 'Committee Meeting'", "Date ASC"),

            );
            //Staff member not found
            return $this->Customise($Data);
        }	
	
	
	
	}
	
	public function init() {
		parent::init();
	}
}
<?php
 
class ContactFormConfig extends DataObjectDecorator {
     
    function extraStatics() {
        return array(
            'db' => array(
                "ToEmailAddress" => "Text",
            )
        );
    }
 
    public function updateCMSFields(FieldSet $fields) {
    
 
    	
       $fields->addFieldToTab('Root.Main', new TextField('ToEmailAddress', 'Email address that the contact form is sent to:'));
    }
}
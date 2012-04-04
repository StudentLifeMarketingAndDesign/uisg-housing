<?php

/**
 * Adds a few features to the blogentry class.
 *
 * Usage in _config.php:
 *
 * Object::add_extension('Member', 'BlogMemberExtensions');
 *
 * @author Tyler Kidd
 * @package blogext
 */
 
class BlogMemberExtensions extends DataObjectDecorator {
   
   /**
   	* add extra fields to the Member class.
   	* 
   **/
      
   function extraStatics() {
      return array(
         'db' => array(
            'BlogProfileTitle'=>'Varchar(100)',
            'BlogProfileURLSegment' => 'Varchar(100)',
            'BlogProfileContent' => 'HTMLText',
            'BlogProfileSecondaryContent' => 'HTMLText'
         ),
         'has_one' => array(
         	'BlogProfilePhoto' => 'Image'
         ),
         'has_many' => array(
         	'BlogEntries' => 'BlogEntry'
         )
      );
   }
	
	function ViewerGroups(){
		return false;
	}
	 
	
	function BlogProfileLink(){
		$container = BlogTree::current();
		return $container->Link().'profile/'.$this->getOwner()->BlogProfileURLSegment;
	}

	function EntriesLink(){
		$container = BlogTree::current();
		return $container->Link().'author/'.$this->getOwner()->BlogProfileURLSegment;
	}
	
	function onAfterWrite(){
		//$member = DataObject::get_by_id('Member',$this->owner->ID);
		//$member->Groups()->add(1);
		parent::onAfterWrite();
	}
	
	function Title(){
		return rtrim($this->getOwner()->FirstName,' ').' '.$this->getOwner()->Surname;
	}

}
package fr.loudoweb.learning.scorm.status;
import fr.loudoweb.vrac.abstract.AbstractTypeSafe;

/**
 * ...
 * @author loudo
 */

class EntryStatus extends AbstractTypeSafe
{

	public static inline var AB_INITIO:SuccessStatus = new SuccessStatus('ab-initio');
	public static inline var RESUME:SuccessStatus = new SuccessStatus('resume');
	
	private function new(status:String) 
	{
		super(status);
	}
	
}
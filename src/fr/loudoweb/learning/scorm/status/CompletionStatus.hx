package fr.loudoweb.learning.scorm.status;
import fr.loudoweb.vrac.abstract.AbstractTypeSafe;

/**
 * ...
 * @author loudo
 */

class CompletionStatus extends AbstractTypeSafe
{
	public static inline var COMPLETED:CompletionStatus = new CompletionStatus('completed');
	public static inline var INCOMPLETE:CompletionStatus = new CompletionStatus('incomplete');
	
	private function new(status:String) 
	{
		super(status);
	}
	
}
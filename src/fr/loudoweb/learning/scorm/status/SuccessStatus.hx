package fr.loudoweb.learning.scorm.status;
import fr.loudoweb.vrac.abstract.AbstractTypeSafe;

/**
 * ...
 * @author loudo
 */

/*enum SuccessStatusEnum{
	PASSED();
	FAILED;
}*/

class SuccessStatus extends AbstractTypeSafe
{
	public static inline var PASSED:SuccessStatus = new SuccessStatus('passed');
	public static inline var FAILED:SuccessStatus = new SuccessStatus('failed');
	
	private function new(status:String) 
	{
		super(status);
	}
}
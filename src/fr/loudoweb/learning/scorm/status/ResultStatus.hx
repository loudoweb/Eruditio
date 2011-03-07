package fr.loudoweb.learning.scorm.status;
import fr.loudoweb.vrac.abstract.AbstractTypeSafe;

/**
 * ...
 * @author loudo
 */

class ResultStatus extends AbstractTypeSafe
{
	
	public static inline var CORRECT:ResultStatus = new ResultStatus('correct');
	/**
	 * SCORM 1.2 only.
	 * <p>Using this in scorm 2004 LMS will return INCORRECT.</p>
	 */
	public static inline var WRONG:ResultStatus = new ResultStatus('wrong');
	/**
	 * SCORM 2004 only.
	 * <p>Using this in scorm 1.2 LMS will return WRONG.</p>
	 */
	public static inline var INCORRECT:ResultStatus = new ResultStatus('incorrect');
	
	public static inline var UNANTICIPATED:ResultStatus = new ResultStatus('unanticipated');
	public static inline var NEUTRAL:ResultStatus = new ResultStatus('neutral');
	private function new(status:String) 
	{
		super(status);
	}
	
}
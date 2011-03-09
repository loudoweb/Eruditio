package fr.loudoweb.learning.scorm.status;
import fr.loudoweb.vrac.abstract.AbstractTypeSafe;

/**
 * ...
 * @author loudo
 */

class RequestStatus extends AbstractTypeSafe
{

	public static inline var CONTINUE:ModeStatus = new ModeStatus('continue');
	public static inline var PREVIOUS:ModeStatus = new ModeStatus('previous');
	public static inline var CHOISE:ModeStatus = new ModeStatus('choice');
	public static inline var EXIT:ModeStatus = new ModeStatus('exit');
	public static inline var EXIT_ALL:ModeStatus = new ModeStatus('exitAll');
	public static inline var ABANDON:ModeStatus = new ModeStatus('abandon');
	public static inline var ABANDON_ALL:ModeStatus = new ModeStatus('abandonAll');
	public static inline var SUSPEND_ALL:ModeStatus = new ModeStatus('suspendAll');
	public static inline var NONE:ModeStatus = new ModeStatus('_none_');
	private function new(status:String) 
	{
		super(status);
	}
}
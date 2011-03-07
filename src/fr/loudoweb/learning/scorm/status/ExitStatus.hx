package fr.loudoweb.learning.scorm.status;
import fr.loudoweb.vrac.abstract.AbstractTypeSafe;

/**
 * ...
 * @author loudo
 */

class ExitStatus extends AbstractTypeSafe
{

	public static inline var TIME_OUT:ExitStatus = new ExitStatus('time-out');
	public static inline var SUSPEND:ExitStatus = new ExitStatus('suspend');
	public static inline var LOGOUT:ExitStatus = new ExitStatus('logout');
	/**
	 * SCORM 2004 method only.
	 * <p>Using this in scorm 1.2 lms will return suspend status.</p>
	 */
	public static inline var NORMAL:ExitStatus = new ExitStatus('normal');
		
	private function new(status:String) 
	{
		super(status);
	}
	
}
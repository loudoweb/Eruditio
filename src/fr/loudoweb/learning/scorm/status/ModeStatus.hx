package fr.loudoweb.learning.scorm.status;
import fr.loudoweb.vrac.abstract.AbstractTypeSafe;

/**
 * ...
 * @author loudo
 */

class ModeStatus extends AbstractTypeSafe
{
	public static inline var BROWSE:ModeStatus = new ModeStatus('browse');
	public static inline var NORMAL:ModeStatus = new ModeStatus('normal');
	public static inline var REVIEW:ModeStatus = new ModeStatus('review');
	private function new(status:String) 
	{
		super(status);
	}
	
}
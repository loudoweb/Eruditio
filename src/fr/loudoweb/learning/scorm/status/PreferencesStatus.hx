package fr.loudoweb.learning.scorm.status;
import fr.loudoweb.vrac.abstract.AbstractTypeSafe;

/**
 * ...
 * @author loudo
 */

class PreferencesStatus extends AbstractTypeSafe
{
	
	public static inline var LANGUAGE:CompletionStatus = new CompletionStatus('language');
	
	/**
	 * SCORM 2004 method only.
	 * <p>Using this in scorm 1.2 lms will return audio status.</p>
	 */
	public static inline var AUDIO_LEVEL:CompletionStatus = new CompletionStatus('audio_level');
	/**
	 * SCORM 2004 method only.
	 * <p>Using this in scorm 1.2 lms will return speed status.</p>
	 */
	public static inline var DELIVERY_SPEED:CompletionStatus = new CompletionStatus('delivery_speed');
	/**
	 * SCORM 2004 method only.
	 * <p>Using this in scorm 1.2 lms will return text status.</p>
	 */
	public static inline var AUDIO_CAPTIONING:CompletionStatus = new CompletionStatus('audio_captioning');
	
	/**
	 * SCORM 1.2 method only.
	 * <p>Using this in scorm 2004 lms will return audio_level status.</p>
	 */
	public static inline var AUDIO:CompletionStatus = new CompletionStatus('audio');
	/**
	 * SCORM 1.2 method only.
	 * <p>Using this in scorm 2004 lms will return delivery_speed status.</p>
	 */
	public static inline var SPEED:CompletionStatus = new CompletionStatus('speed');
	/**
	 * SCORM 1.2 method only.
	 * <p>Using this in scorm 2004 lms will return audio_captioning status.</p>
	 */
	public static inline var TEXT:CompletionStatus = new CompletionStatus('text');

	private function new(status:String) 
	{
		super(status);
	}
	
}
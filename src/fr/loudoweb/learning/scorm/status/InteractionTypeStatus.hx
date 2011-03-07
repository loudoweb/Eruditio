package fr.loudoweb.learning.scorm.status;
import fr.loudoweb.vrac.abstract.AbstractTypeSafe;

/**
 * ...
 * @author loudo
 */

class InteractionTypeStatus extends AbstractTypeSafe
{
	public static inline var TRUE_FALSE:InteractionTypeStatus = new InteractionTypeStatus('true-false');
	/**
	 * SCORM 1.2 only.
	 * <p>Using this in scorm 2004 LMS will return  MULTIPLE_CHOICE.</p>
	 */
	public static inline var CHOICE:InteractionTypeStatus = new InteractionTypeStatus('choice');
	public static inline var FILL_IN:InteractionTypeStatus = new InteractionTypeStatus('fill-in');
	public static inline var MATCHING:InteractionTypeStatus = new InteractionTypeStatus('matching');
	public static inline var PERFORMANCE:InteractionTypeStatus = new InteractionTypeStatus('performance');
	public static inline var SEQUENCING:InteractionTypeStatus = new InteractionTypeStatus('sequencing');
	public static inline var LIKERT:InteractionTypeStatus = new InteractionTypeStatus('likert');
	public static inline var NUMERIC:InteractionTypeStatus = new InteractionTypeStatus('numeric');
	/**
	 * SCORM 2004 only.
	 * <p>Using this in scorm 1.2 LMS will return  CHOICE.</p>
	 */
	public static inline var MULTIPLE_CHOICE:InteractionTypeStatus = new InteractionTypeStatus('multiple_choice');
	/**
	 * SCORM 2004 only.
	 * <p>Using this in scorm 1.2 LMS will return FILL_IN.</p>
	 */
	public static inline var OTHER:InteractionTypeStatus = new InteractionTypeStatus('other');
	/**
	 * SCORM 2004 only.
	 * <p>Using this in scorm 1.2 LMS will return FILL_IN.</p>
	 */
	public static inline var LONG_FILL_IN:InteractionTypeStatus = new InteractionTypeStatus('long_fill_in');
	private function new(status:String) 
	{
		super(status);
	}
	
}
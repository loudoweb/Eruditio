package fr.loudoweb.learning.scorm.status;

/**
 * ...
 * @author loudo
 */

class InteractionsStatus 
{
	public static inline var ID:ModeStatus = new ModeStatus('id');
	public static inline var TYPE:ModeStatus = new ModeStatus('type');
	public static inline var OBJECTIVES:ModeStatus = new ModeStatus('objectives');
	public static inline var CORRECT_RESPONSES:ModeStatus = new ModeStatus('correct_responses');
	public static inline var WEIGHTING:ModeStatus = new ModeStatus('weighting');
	public static inline var RESULT:ModeStatus = new ModeStatus('result');
	public static inline var LATENCY:ModeStatus = new ModeStatus('latency');
	/**
	 * SCORM 2004 method only.
	 * <p>Using this in scorm 1.2 lms will return student_response status</p>
	 */
	public static inline var LEARNER_RESPONSE:ModeStatus = new ModeStatus('learner_response');
	/**
	 * SCORM 2004 method only.
	 * <p>Using this in scorm 1.2 lms will return time status</p>
	 */
	public static inline var TIMESTAMP:ModeStatus = new ModeStatus('timestamp');
	/**
	 * SCORM 2004 method only.
	 * <p>Using this in scorm 1.2 lms will NOT RETURN ANYTHING</p>
	 */
	public static inline var DESCRIPTION:ModeStatus = new ModeStatus('description');
	/**
	 * SCORM 1.2 method only.
	 * <p>Using this in scorm 2004 lms will return learner_response status</p>
	 */
	public static inline var LEARNER_RESPONSE:ModeStatus = new ModeStatus('student_response');
	/**
	 * SCORM 1.2 method only.
	 * <p>Using this in scorm 2004 lms will return timestamp status</p>
	 */
	public static inline var TIMESTAMP:ModeStatus = new ModeStatus('time');
	private function new(status:String) 
	{
		super(status);
	
}
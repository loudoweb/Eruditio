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
	 * Méthode scorm 1.2 seulement.
	 * <p>L'utilisation de cette méthode dans un LMS scorm 2004 génère MULTIPLE_CHOICE.</p>
	 */
	public static inline var CHOICE:InteractionTypeStatus = new InteractionTypeStatus('choice');
	public static inline var FILL_IN:InteractionTypeStatus = new InteractionTypeStatus('fill-in');
	public static inline var MATCHING:InteractionTypeStatus = new InteractionTypeStatus('matching');
	public static inline var PERFORMANCE:InteractionTypeStatus = new InteractionTypeStatus('performance');
	public static inline var SEQUENCING:InteractionTypeStatus = new InteractionTypeStatus('sequencing');
	public static inline var LIKERT:InteractionTypeStatus = new InteractionTypeStatus('likert');
	public static inline var NUMERIC:InteractionTypeStatus = new InteractionTypeStatus('numeric');
	/**
	 * Méthode scorm 2004 seulement.
	 * <p>L'utilisation de cette méthode dans un LMS scorm 1.2 génère CHOICE.</p>
	 */
	public static inline var MULTIPLE_CHOICE:InteractionTypeStatus = new InteractionTypeStatus('multiple_choice');
	/**
	 * Méthode scorm 2004 seulement.
	 * <p>L'utilisation de cette méthode dans un LMS scorm 1.2 génère FILL_IN.</p>
	 */
	public static inline var OTHER:InteractionTypeStatus = new InteractionTypeStatus('other');
	/**
	 * Méthode scorm 2004 seulement.
	 * <p>L'utilisation de cette méthode dans un LMS scorm 1.2 génère FILL_IN.</p>
	 */
	public static inline var LONG_FILL_IN:InteractionTypeStatus = new InteractionTypeStatus('long_fill_in');
	private function new(status:String) 
	{
		super(status);
	}
	
}
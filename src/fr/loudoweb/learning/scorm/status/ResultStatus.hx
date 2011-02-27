package fr.loudoweb.learning.scorm.status;
import fr.loudoweb.vrac.abstract.AbstractTypeSafe;

/**
 * ...
 * @author loudo
 */

class ResultStatus extends AbstractTypeSafe
{
	/**
	 * Réponse correcte.
	 */
	public static inline var CORRECT:ResultStatus = new ResultStatus('correct');
	/**
	 * Mauvaise réponse. Fonctionne avec scorm 1.2 seulement.
	 * <p>L'utilisation de cette méthode dans un LMS scorm 2004 génère INCORRECT.</p>
	 */
	public static inline var WRONG:ResultStatus = new ResultStatus('wrong');
	/**
	 * Mauvaise réponse. Fonctionne avec scorm 2004 seulement.
	 * <p>L'utilisation de cette méthode dans un LMS scorm 1.2 génère WRONG.</p>
	 */
	public static inline var INCORRECT:ResultStatus = new ResultStatus('incorrect');
	
	public static inline var UNANTICIPATED:ResultStatus = new ResultStatus('unanticipated');
	public static inline var NEUTRAL:ResultStatus = new ResultStatus('neutral');
	private function new(status:String) 
	{
		super(status);
	}
	
}
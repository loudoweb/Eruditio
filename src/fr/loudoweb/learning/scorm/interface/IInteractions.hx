package fr.loudoweb.learning.scorm.interface;
import fr.loudoweb.learning.scorm.status.ResultStatus;

/**
 * ...
 * @author loudo
 */

interface IInteractions {

	/**
	 * Get all methods supported by the LMS for the Interactions.
	 * @return String with all Interaction's methods concatened.<listing version="3.0">cmi.Interaction._count,cmi.Interaction.n.id,...</listing>
	 */
	function getChildren():String;
	function getCount():Int;
	function getId(index:Int):String;
	function setId(id:String, index:Int):Bool;
	function getDescription(index:Int):String;
	function setDescription(index:Int, description:String):Bool;
	function getType(index:Int):String;
	/**
	 * Set the type of the Interaction
	 * <p>Please refer to the InteractionTypeStatus to know the types available for scorm 1.2 and scorm 2004.</p>
	 * @param	type <p>Use Enum of InteractionTypeStatus</p><p>example:</p><listing version="3.0">InteractionTypeStatus.FILL_IN</listing>
	 * @param	index <p>Index of the Interaction. You can't set a property of a non-existant Interaction. You have to create an Interaction by setting the ID before.</p>
	 * @return <code>true</code> if success, <code>false</code> if failed.
	 * @default for scorm 1.2, type other and type long fill in return fill in
	 * @see com.qoveo.scorm.InteractionTypeStatus
	 */
	function setType(type:InteractionTypeStatus, index:Int):Bool;
	/**
	 * 
	 * @param	index
	 * @return format <listing version="3.0">"0000:00:00.0"</listing>
	 */
	function getTimestamp(index:Int):String;
	function setTimestamp(time:String,index:Int):Bool;
	function getWeighting(index:Int):Int;
	function setWeighting(weight:Int,index:Int):Bool;
	function getStudentResponse(index:Int):String;
	function setStudentResponse(response:String,index:Int):Bool;
	function getResult(index:Int):String;
	function setResult(result:ResultStatus, index:Int):Bool;
	/**
	 * 
	 * @param	index
	 * @return format <listing version="3.0">"0000:00:00.0"</listing>
	 */
	function getLatency(index:Int):String;
	function setLatency(time:String,index:Int):Bool;
	function getObjectiveCount(index:Int):Int;
	function getObjectiveId(InteractionIndex:Int,objectivesIndex:Int):String;
	function getCorrectResponseCount(index:Int):Int;
	function getCorrectResponsePattern(InteractionIndex:Int, responseIndex:Int):String;
	function setCorrectResponsePattern(InteractionIndex:Int, responseIndex:Int,response:String):Bool;
	
}
package fr.loudoweb.learning.scorm.Interface;
import fr.loudoweb.learning.scorm.status.CompletionStatus;
import fr.loudoweb.learning.scorm.status.ExitStatus;
import fr.loudoweb.learning.scorm.status.SuccessStatus;

/**
 * Interface wrapper for all versions of SCORM.
 * @author loudo
 */
interface ISCORM {
	// 				LEARNER & PREFERENCES METHODS				//
	//														 	//
	//															//
	//															//
	//															//
	/**
	 * 
	 * @return 
	 */
	function getLearnerId():String;
	/**
	 * //TODO handler different format eg: ludovic bas or bas, ludovic.
	 * @return
	 */
	function getLearnerName():String;
	
	function getPreferenceChildren():String;
	function getLanguage():String;
	/**
	 * 
	 * @param	language String 250 characters max
	 * @return
	 */
	function setLanguage(language:String):Bool;
	/**
	 * 
	 * @return Float [0,1]
	 */
	function getVolume():Float; *
	/**
	 * 
	 * @param	vol [0,1]
	 * @return
	 */
	function setVolume(vol:Float):Bool;
	function getSpeedPreference():Int;
	function setSpeedPreference(speed:Int):Bool;
	function getAudioCaption():Bool;
	function setAudioCaption(audioWithText:Bool):Bool;
	
	
	// 					PROGRESSION METHODS							//
	//															 	//
	//																//
	//																//
	//																//
	/**
	 * Set the completion State of the module.
	 * <p>To set Success Status with scorm 1.2, please use setSuccessStatus</p>
	 * @param	status, use enum of the CompletionStatus class <p>example: </p><listing version="3.0">CompletionStatus.COMPLETE</listing>
	 * @return <code>true</code> if success, <code>false</code> if failed.
	 * @see #setSuccessStatus()
	 */
	function setCompletion(status:CompletionStatus):Bool;// lesson status & completion status ==>completed, incomplete, not attempted
	/**
	 * Get the completion state of the module.
	 * @return completion (String). You can handle it by comparing with CompletionStatus.
	 * @see fr.loudoweb.learning.scorm.status.CompletionStatus
	 * @default unknown (String)
	 */
	function getCompletion():String;// lesson status & completion status
	/**
	 * Set The Success state of the module.
	 * @param	status <p>Use Enum of the SuccessStatus</p><p>example:</p><listing version="3.0">SuccessStatus.FAILED</listing>
	 * @return <code>true</code> if success, <code>false</code> if failed.
	 */
	function setSuccessStatus(status:SuccessStatus):Bool; // 2004 ==> passed, failed utiliser setCompletion (lesson status) pour 1.2
	/**
	 * Get the success state of the module.
	 * @return success (String). You can handle it by comparing with SuccessStatus.
	 * @see fr.loudoweb.learning.scorm.status.SuccessStatus
	 * @default unknown (String)
	 */
	function getSuccessStatus():String; //2004 ==> passed, failed, unknown
	/**
	 * Set the Suspend Data to retrieve the data next time the user open the module.
	 * @param	Dynamic <p>you will get an error if the length of your Dynamic is greater than 4096 for scorm 1.2 and 64000 for scorm 2004</p> 
	 * @return <code>true</code> if success, <code>false</code> if failed.
	 * @throws Error
	 */
	function setSuspendData(param:Dynamic):Bool;//(4096) && (64000)
	function getSuspendData():Dynamic;//(4096) && (64000)
	/**
	 * 
	 * @param	index
	 * @return format <listing version="3.0">"0000:00:00.0"</listing>
	 */
	function getTotalTime():String;
	/**
	 * Add the time of the session to the Total Time.
	 * @param	time in milliseconds. <p>The method converts the parameter to a HH:MM:SS format.</p>
	 * @return <code>true</code> if success, <code>false</code> if failed.
	 */
	function setSessionTime(time:Int):Bool;
	
	/**
	 * Set the exit State of the module.
	 * @param	exitStatus, use enum of the ExitStatus class <p>example:</p><listing version="3.0"> ExitStatus.SUSPEND</listing>
	 * @return <code>true</code> if success, <code>false</code> if failed.
	 * @see fr.loudoweb.learning.scorm.status.ExitStatus
	 */
	function setExit(exitStatus:ExitStatus):Bool;
	function getLaunchData():String;
	function getBookmark():Dynamic;//lesson location & location
	/**
	 * Set the Bookmark.
	 * <p>The bookmark must be a short information about the location inside your module (ex: tab name, page name)</p>
	 * @param	Dynamic <p>you will get an error if the length of your Dynamic is greater than 256 for scorm 1.2 and 1000 for scorm 2004</p> 
	 * @return <code>true</code> if success, <code>false</code> if failed.
	 * @throws Error
	 */
	function setBookmark(param:Dynamic):Bool;//lesson location (256) & location (1000)
	/**
	 * Get the mode.
	 * @return mode (String), you can handle it by comparing with ModeStatus.
	 * @see fr.loudoweb.learning.scorm.status.ModeStatus
	 */
	
	
	function getChildrenScore():String;
	function getRawScore():Int;
	function setRawScore(score:Int):Bool;
	function getMinScore():Int;
	function setMinScore(score:Int):Bool;
	function getMaxScore():Int;
	function setMaxScore(score:Int):Bool;
	function setScoreScaled(score:Int):Bool; //2004 utiliser setRawScore pour 1.2
	function getScoreScaled():Int; //2004
	// 					INTERACTIONS METHODS						//
	//															 	//
	//																//
	//																//
	//																//
	/**
	 * Get all methods supported by the LMS for the Interactions.
	 * @return String with all Interaction's methods concatened.<listing version="3.0">cmi.Interaction._count,cmi.Interaction.n.id,...</listing>
	 */
	function getInteractionChildren():String;
	function getInteractionCount():Int;
	function getInteractionId(index:Int):String;
	function setInteractionId(id:String, index:Int):Bool;
	function getInteractionDescription(index:Int):String;
	function setInteractionDescription(index:Int, description:String):Bool;
	function getInteractionType(index:Int):String;
	/**
	 * Set the type of the Interaction
	 * <p>Please refer to the InteractionTypeStatus to know the types available for scorm 1.2 and scorm 2004.</p>
	 * @param	type <p>Use Enum of InteractionTypeStatus</p><p>example:</p><listing version="3.0">InteractionTypeStatus.FILL_IN</listing>
	 * @param	index <p>Index of the Interaction. You can't set a property of a non-existant Interaction. You have to create an Interaction by setting the ID before.</p>
	 * @return <code>true</code> if success, <code>false</code> if failed.
	 * @default for scorm 1.2, type other and type long fill in return fill in
	 * @see com.qoveo.scorm.InteractionTypeStatus
	 */
	function setInteractionType(type:InteractionTypeStatus, index:Int):Bool;
	/**
	 * 
	 * @param	index
	 * @return format <listing version="3.0">"0000:00:00.0"</listing>
	 */
	function getInteractionTimestamp(index:Int):String;
	function setInteractionTimestamp(time:String,index:Int):Bool;
	function getInteractionWeighting(index:Int):Int;
	function setInteractionWeighting(weight:Int,index:Int):Bool;
	function getStudentResponseFromInteraction(index:Int):String;
	function setStudentResponseFromInteraction(response:String,index:Int):Bool;
	function getInteractionResult(index:Int):String;
	function setInteractionResult(result:ResultStatus, index:Int):Bool;
	/**
	 * 
	 * @param	index
	 * @return format <listing version="3.0">"0000:00:00.0"</listing>
	 */
	function getInteractionLatency(index:Int):String;
	function setInteractionLatency(time:String,index:Int):Bool;
	function getObjectiveCountFromInteraction(index:Int):Int;
	function getObjectiveIdFromInteraction(InteractionIndex:Int,objectivesIndex:Int):String;
	function getCorrectResponseCountFromInteraction(index:Int):Int;
	function getCorrectResponsePatternFromInteraction(InteractionIndex:Int, responseIndex:Int):String;
	function setCorrectResponsePatternFromInteraction(InteractionIndex:Int, responseIndex:Int,response:String):Bool;
	// 					OBJECTIVES METHODS							//
	//															 	//
	//																//
	//																//
	//																//
	function getObjectiveChildren():String;
	function getObjectiveCount():Int;
	function getObjectiveId(index:Int):String;
	function setObjectiveId(index:Int, id:String):Bool;
	function getObjectiveScoreChildren(index:Int):String;
	function getObjectiveScoreScaled(index:Int):Float;
	function setObjectiveScoreScaled(index:Int, scale:Float):Bool;
	function getObjectiveScore(index:Int):Int;
	function setObjectiveScore(index:Int, score:Int):Bool;
	function getObjectiveMinScore(index:Int):Int;
	function setObjectiveMinScore(index:Int, score:Int):Bool;
	function getObjectiveMaxScore(index:Int):Int;
	function setObjectiveMaxScore(index:Int, score:Int):Bool;
	function getObjectiveSuccess(index:Int):String;
	function setObjectiveSuccess(index:Int, status:SuccessStatus):Bool;
	function getObjectiveCompletion(index:Int):String;
	function setObjectiveCompletion(index:Int, status:CompletionStatus):Bool;
	function getObjectiveProgression(index:Int):Float;
	function setObjectiveProgression(index:Int, progress:Float):Bool;
	function getObjectiveDescription(index:Int):String;
	function setObjectiveDescription(index:Int, description:String):Bool;
	// 					NAV METHODS									//
	//															 	//
	//																//
	//																//
	//																//
	
	
	// 					UNUSEFULL METHODS							//
	//															 	//
	//																//
	//																//
	//																//
	/**
	 * 
	 * @return
	 * @default Credit (String)
	 */
	function getCredit():String;
	function getEntry():String;
	function getMode():String;
}
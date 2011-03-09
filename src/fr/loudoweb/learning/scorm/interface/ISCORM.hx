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
	
	
	
	function getChildrenScore():String;
	function getRawScore():Int;
	function setRawScore(score:Int):Bool;
	function getMinScore():Int;
	function setMinScore(score:Int):Bool;
	function getMaxScore():Int;
	function setMaxScore(score:Int):Bool;
	function setScoreScaled(score:Int):Bool; //only for scorm 2004
	function getScoreScaled():Int; //only for scorm 2004
	// 					INTERACTIONS METHODS						//
	//															 	//
	//																//
	//																//
	//																//
	function interactions():IInteractions;
	// 					OBJECTIVES METHODS							//
	//															 	//
	//																//
	//																//
	//																//
	function objectives():IObjectives;
	// 					NAV METHODS									//
	//															 	//
	//																//
	//																//
	//																//
	function setExit(exitStatus:ExitStatus):Bool;
	/*adl.nav.request (request(continue, previous, choice, exit, exitAll, abandon, abandonAll, suspendAll _none_), RW) Navigation request to be processed immediately following Terminate()
adl.nav.request_valid.continue (state (true, false, unknown), RO) Used by a SCO to determine if a Continue navigation request will succeed.
adl.nav.request_valid.previous (state (true, false, unknown), RO) Used by a SCO to determine if a Previous navigation request will succeed.
adl.nav.request_valid.choice.{target=} (state (true, false, unknown), RO*/
	
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
	/**
	 * Get the mode.
	 * @return mode (String), you can handle it by comparing with ModeStatus.
	 * @see fr.loudoweb.learning.scorm.status.ModeStatus
	 */
	function getMode():String;
}
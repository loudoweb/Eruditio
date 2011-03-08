package fr.loudoweb.learning.scorm.interface;
import fr.loudoweb.learning.scorm.status.CompletionStatus;
import fr.loudoweb.learning.scorm.status.SuccessStatus;

/**
 * ...
 * @author loudo
 */

interface IObjectives {
	
	function getChildren():String;
	function getCount():Int;
	function getId(index:Int):String;
	function setId(index:Int, id:String):Bool;
	function getScoreChildren(index:Int):String;
	function getScoreScaled(index:Int):Float;
	function setScoreScaled(index:Int, scale:Float):Bool;
	function getScore(index:Int):Int;
	function setScore(index:Int, score:Int):Bool;
	function getMinScore(index:Int):Int;
	function setMinScore(index:Int, score:Int):Bool;
	function getMaxScore(index:Int):Int;
	function setMaxScore(index:Int, score:Int):Bool;
	function getSuccess(index:Int):String;
	function setSuccess(index:Int, status:SuccessStatus):Bool;
	function getCompletion(index:Int):String;
	function setCompletion(index:Int, status:CompletionStatus):Bool;
	function getProgression(index:Int):Float;
	function setProgression(index:Int, progress:Float):Bool;
	function getDescription(index:Int):String;
	function setDescription(index:Int, description:String):Bool;
	
}
package fr.loudoweb.learning.scorm.utils;
import fr.loudoweb.learning.scorm.enums.SCORMVersionEnum;
/**
 * ...
 * @author loudo
 */

class CMIType 
{

	private function new() 
	{
		
	}
	public static inline function isCMISInteger(value:String):Bool {
		
		return true;
	}
	public static inline function isCMIString(value:String,?SPM:UInt):Bool {
		
		return true;
	}
	public static inline function isCMITime(value:String,version:SCORMVersionEnum):Bool {
		var regex:EReg;
		switch(version) {
			case SCORM_1_2:
				regex = ~/[0-9]{2,4}:[0-9]{2}:[0-9]{2}/;
			case SCORM_2004:
				regex = ~/PT[0-9]{2}H[0-9]{2}M[0-9]{2}S/;
			case LOCAL:
				regex = ~/PT[0-9]{2}H[0-9]{2}M[0-9]{2}S/;
		}
		return regex.match(value);
	}
	public static inline function isCMIDecimal(value:String):Bool {
		
		return true;
	}
	public  static inline function isCMIIdentifier(value:String,?SPM:UInt):Bool {
		
		return true;
	}
	public static inline function stringToCMIIdentifier(value:String,?useUnderscore:Bool):String {
		return value;
	}
	
}
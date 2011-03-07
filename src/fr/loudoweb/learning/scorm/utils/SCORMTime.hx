package fr.loudoweb.learning.scorm.utils;

/**
 * ...
 * @author loudo
 */

class SCORMTime 
{

	private function new() 
	{
		
	}
	/**
	 * Get a String of your timer.
	 * @param    ms (milliseconds)
	 * @return compatible format with scorm. <listing version="3.0">HHHH:MM:SS</listing>
	 * @see #HHMMSSToMs()
	 */
	public static inline function msToHoursMinutesAndS(ms:Int):String
	{
		var hours:Int   	= Math.floor(ms / 1000 / 3600);
		var minutes:Int 	= Math.floor(ms / 1000 / 60) % 60;
		var seconds:Int	 	= Math.floor(ms / 1000) % 60;
		var calcul:String;
		calcul = Std.string(hours).length < 2 ? '0' + Std.string(hours):Std.string(hours);
		calcul += Std.string(minutes).length < 2 ? ':0' + Std.string(minutes):':'+Std.string(minutes);
		calcul += Std.string(seconds).length < 2 ? ':0' + Std.string(seconds):':'+Std.string(seconds);
		return  calcul;
		
	}
	/**
	 * Get the time of a string.
	 * @param    format <listing version="3.0">HHHH:MM:SS</listing>
	 * @return milliseconds
	 * @see #msToHoursMinutesAndS()
	 */
	public static inline function HHMMSSToMs(format:String):Int
	{
		var tab:Array<String> = format.split (':');
		var hours:Int = Std.parseInt(tab[0]);
		var minutes:Int = Std.parseInt(tab[1]);
		var seconds:Int = Std.parseInt(tab[2]);
		var calcul:Int = (hours * 3600000) + (minutes * 60000) + (seconds * 1000);
		return calcul;
	}
	/**
	 * Get a iso String of your timer.
	 * <p>Work with scorm 2004.</p>
	 * @param    ms (milliseconds)
	 * @return compatible format with scorm. <listing version="3.0">PT10H10M3.01S</listing>
	 * @see #isoToMs()
	 */
	public static inline function msToIsoFormat(ms:Int):String
	{
		var hours:Int     = Math.floor(ms / 1000 / 3600);
		var minutes:Int = Math.floor(ms / 1000 / 60) % 60;
		var seconds:Int = Math.floor(ms / 1000) % 60;
		var calcul:String = "PT";
		calcul += Std.string(hours).length < 2 ? '0' + Std.string(hours)+ "H": Std.string(hours)+ "H";
		calcul += Std.string(minutes).length < 2 ? '0' + Std.string(minutes)+ "M": Std.string(minutes) + "M";
		calcul += Std.string(seconds).length < 2 ? '0' + Std.string(seconds)+ "S": Std.string(seconds) + "S";
		return  calcul;
	}
	/**
	 * Get the time of a string.
	 * <p>Work with scorm 2004.</p>
	 * @param    format <listing version="3.0">PT10H10M3.01S</listing>
	 * @return milliseconds
	 * @see #msToIsoFormat()
	 */
	public static inline function isoToMs(iso:String):Int
	{
		var len:Int = iso.length - 3;
		var format:String = iso.substr(2, len);
		var pattern:EReg = ~/(H|M|S)/g;//TODO use better ereg to calcul
		format = pattern.replace(format, ':');
		var tab:Array<String> = format.split(':');
		var hours:Int = Std.parseInt(tab[0]);
		trace(hours);
		var minutes:Int = Std.parseInt(tab[1]);
		trace(minutes);
		var seconds:Int = Math.round(Std.parseFloat(tab[2]));
		trace(seconds);
		var calcul:Int = (hours * 3600000) + (minutes * 60000) + (seconds * 1000);
		return calcul;
	}
	
}
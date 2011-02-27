package ;

import flash.Lib;
import fr.loudoweb.learning.scorm.enums.SuccessStatus;

/**
 * ...
 * @author loudo
 */

class Main 
{
	
	static function main() 
	{
		//plop(new SuccessStatus('plop'); // can't compile because SuccessStatus doesn't have a public constructor
		plop(SuccessStatus.PASSED);
	}
	static function plop(p:SuccessStatus) {
		trace(p);
	}
	
}
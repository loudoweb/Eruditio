package fr.loudoweb.vrac.abstract;

/**
 * ...
 * @author loudo
 */

class AbstractTypeSafe 
{

	private var _status:String;
	private function new(status:String) 
	{
		_status = status;
	}
	public function toString():String {
		return _status;
	}
	
}
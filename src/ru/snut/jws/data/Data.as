////////////////////////////////////////////////////////////////////////////////
//
//  © 2014 snut.ru
//
////////////////////////////////////////////////////////////////////////////////

package ru.snut.jws.data {
	/**
	 * @author					snt
	 * @version					1.0
	 * @playerversion			Flash 10
	 * @langversion				3.0
	 * @date					Mar 24, 2014
	 * 
	 * Абстрактные данные
	 * 
	 */
	public class Data {
		
		private static var __id:uint;
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		public function Data() {
			_id = __id;
			__id++;
		}
		
		private var _id:uint;
		
		public function get id():uint {
			return _id;
		}
	}
}
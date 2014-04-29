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
	 */
	public class Timeslot {
		
		//--------------------------------------------------------------------------
		//
		//  Class constants
		//
		//--------------------------------------------------------------------------
		
		public static const TYPE_DEFAULT:uint = 0;
		
		public static const TYPE_PRESALE:uint = 1;
		
		public static const TYPE_CONCEPT:uint = 2;
		
		public static const TYPE_PROTOTYPE:uint = 3;
		
		public static const TYPE_DRAWOUT:uint = 4;
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		public function Timeslot(startDate:Date, duration:uint=0, type:uint=TYPE_DEFAULT) {
			this.startDate = startDate;
			this.duration = duration;
			this.type = type;
		}
		
		//--------------------------------------------------------------------------
		//
		//  Properties
		//
		//--------------------------------------------------------------------------
		
		/**
		 * Время начала слота
		 */
		public var startDate:Date;
		
		/**
		 * продолжительность слота
		 */
		public var duration:uint;
		
		/**
		 * Тип
		 */
		public var type:uint;
	}
}
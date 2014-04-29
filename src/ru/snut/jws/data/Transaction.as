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
	 * Денежная выплата, наследник тайслота, определяется днем выплаты и количеством оплаты, как + так и -
	 */
	public class Transaction extends Timeslot {
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		public function Transaction(startDate:Date, value:int=0, description:String='') {
			super(startDate);
			this.value = value;
			this.description = description;
		}
		
		//--------------------------------------------------------------------------
		//
		//  Properties
		//
		//--------------------------------------------------------------------------
		
		/**
		 * Значение транзакции
		 */
		public var value:int;
		
		/**
		 * Описание транзакции
		 */
		public var description:String;
	}
}
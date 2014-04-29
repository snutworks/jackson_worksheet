////////////////////////////////////////////////////////////////////////////////
//
//  © 2014 snut.ru
//
////////////////////////////////////////////////////////////////////////////////

package ru.snut.jws.data {
	import avmplus.getQualifiedClassName;
	
	import ru.snut.core.utils.ClassUtils;

	/**
	 * @author					snt
	 * @version					1.0
	 * @playerversion			Flash 10
	 * @langversion				3.0
	 * @date					Mar 24, 2014
	 */
	public class Company {
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		public function Company(name:String, found:Date=null) {
			this.name = name;
			this.found = found;
		}
		
		//--------------------------------------------------------------------------
		//
		//  Properties
		//
		//--------------------------------------------------------------------------
		
		/**
		 * Клиенты компании
		 */
		public const clients:Vector.<Client> = new Vector.<Client>();
		
		/**
		 * Приходы/расходы
		 */
		public const payouts:Vector.<Transaction> = new Vector.<Transaction>();
		
		/**
		 * Название компании
		 */
		public var name:String;
		
		/**
		 * Дата основания
		 */
		public var found:Date;
		
		public function toString():String {
			return ClassUtils.getClassName(this) + ' ' + name + ' est.' + found.fullYear + '\n\t' + clients.join('\n');
		}
	}
}
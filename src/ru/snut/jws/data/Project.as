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
	 * 
	 * Проект, определяется названием, датой старта, и цветом;
	 * 
	 */
	public class Project extends Timeslot {
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		public function Project(startDate:Date, name:String) {
			super(startDate);
			this.name = name;
		}
		
		//--------------------------------------------------------------------------
		//
		//  Properties
		//
		//--------------------------------------------------------------------------
		
		/**
		 * таймслоты по пресейлам
		 */
		public const presale:Vector.<Timeslot> = new Vector.<Timeslot>();
		
		/**
		 * таймслоты по концепции
		 */
		public const concept:Vector.<Timeslot> = new Vector.<Timeslot>();
		
		/**
		 * таймслоты по анализ/прототипированию
		 */
		public const prototyping:Vector.<Timeslot> = new Vector.<Timeslot>();
		/**
		 * таймслоты по отрисовке
		 */
		public const drawout:Vector.<Timeslot> = new Vector.<Timeslot>();
		
		/**
		 * Кешслоты по всем приходам и расходам
		 */
		public const payouts:Vector.<Transaction> = new Vector.<Transaction>();
		
		/**
		 * Название проекта
		 */
		public var name:String;
		
		public function toString():String {
			return ClassUtils.getClassName(this) + ' ' + name;
		}
		
	}
}
////////////////////////////////////////////////////////////////////////////////
//
//  © 2014 snut.ru
//
////////////////////////////////////////////////////////////////////////////////

package ru.snut.jws.data {
	import ru.snut.core.utils.ClassUtils;

	/**
	 * @author					snt
	 * @version					1.0
	 * @playerversion			Flash 10
	 * @langversion				3.0
	 * @date					Mar 25, 2014
	 */
	public class Client {
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		public function Client(title:String, color:uint) {
			this.title = title;
			this.color = color;
		}
		
		//--------------------------------------------------------------------------
		//
		//  Properties
		//
		//--------------------------------------------------------------------------
		
		/**
		 * Проекты клиента
		 */
		public const projects:Vector.<Project> = new Vector.<Project>();
		
		/**
		 * Название клиента
		 */
		
		public var title:String;
		
		/**
		 * Цвет отображения
		 */
		public var color:uint;
		
		public function toString():String {
			return ClassUtils.getClassName(this) + ' ' + title + ' 0x' + color.toString(16) + '\n\t\t' + projects.join('\n\t\t');
		}
	
	}
}
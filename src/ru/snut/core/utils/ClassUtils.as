////////////////////////////////////////////////////////////////////////////////
//
//  © 2014 snut.ru
//
////////////////////////////////////////////////////////////////////////////////

package ru.snut.core.utils {
	import avmplus.getQualifiedClassName;

	/**
	 * @author					snt
	 * @version					1.0
	 * @playerversion			Flash 10
	 * @langversion				3.0
	 * @date					Mar 24, 2014
	 */
	public class ClassUtils {
		public static function getClassName(target:Object):String {
			return getQualifiedClassName(target).split('::')[1];
		}
	}
}
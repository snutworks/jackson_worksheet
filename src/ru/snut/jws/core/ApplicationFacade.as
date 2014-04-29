////////////////////////////////////////////////////////////////////////////////
//
//  © 2014 snut.ru
//
////////////////////////////////////////////////////////////////////////////////

package ru.snut.jws.core {
	import org.puremvc.as3.patterns.facade.Facade;
	
	import ru.snut.jws.core.data.ApplicationProxy;
	import ru.snut.jws.view.ApplicationMediator;
	
	/**
	 * @author					snt
	 * @version					1.0
	 * @playerversion			Flash 10
	 * @langversion				3.0
	 * @date					Mar 26, 2014
	 */
	public class ApplicationFacade extends Facade {
		
		//--------------------------------------------------------------------------
		//
		//  Class constants
		//
		//--------------------------------------------------------------------------
				
		//--------------------------------------------------------------------------
		//
		//  Class variables
		//
		//--------------------------------------------------------------------------
		
		private static var _instance:ApplicationFacade;

		//--------------------------------------------------------------------------
		//
		//  Class methods
		//
		//--------------------------------------------------------------------------
		
		public static function instance():ApplicationFacade {
			if (!_instance) {
				_instance = new ApplicationFacade();
			}
			
			return _instance;
		}
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		public function ApplicationFacade() {
			super();
		}
		
		public function startup(app:MainApplication):void {
			registerProxy(new ApplicationProxy());
			registerMediator(new ApplicationMediator(app));
		}
	}
}
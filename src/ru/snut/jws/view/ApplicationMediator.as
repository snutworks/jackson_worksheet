////////////////////////////////////////////////////////////////////////////////
//
//  © 2014 snut.ru
//
////////////////////////////////////////////////////////////////////////////////

package ru.snut.jws.view {
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	import ru.snut.jws.core.data.ApplicationProxy;
	
	/**
	 * @author					snt
	 * @version					1.0
	 * @playerversion			Flash 10
	 * @langversion				3.0
	 * @date					Mar 26, 2014
	 */
	public class ApplicationMediator extends Mediator {
		
		//--------------------------------------------------------------------------
		//
		//  Class constants
		//
		//--------------------------------------------------------------------------
		
		/**
		 * @private
		 */
		public const NAME:String = 'ApplicationMediator';
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		public function ApplicationMediator(_app:MainApplication) {
			super(NAME);
			this._app = _app;
		}
		
		//--------------------------------------------------------------------------
		//
		//  Variables
		//
		//--------------------------------------------------------------------------
		
		private var _app:MainApplication;
		
		
		override public function listNotificationInterests():Array {
			return [
				ApplicationProxy.EMPTY_START_COMPANY
			];
		}
		
		override public function handleNotification(notification:INotification):void {
			switch (notification.getName()) {
				case ApplicationProxy.EMPTY_START_COMPANY:
					var view:CompanyEditor = CompanyEditorMediator.getOrCreate().view;
					_app.addElement(view);
					break;
			}
		}
 	}
}
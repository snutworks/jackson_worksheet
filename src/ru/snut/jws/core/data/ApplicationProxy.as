////////////////////////////////////////////////////////////////////////////////
//
//  © 2014 snut.ru
//
////////////////////////////////////////////////////////////////////////////////

package ru.snut.jws.core.data {
	import org.puremvc.as3.patterns.proxy.Proxy;
	
	import ru.snut.jws.core.ApplicationFacade;
	
	/**
	 * @author					snt
	 * @version					1.0
	 * @playerversion			Flash 10
	 * @langversion				3.0
	 * @date					Mar 26, 2014
	 */
	public class ApplicationProxy extends Proxy {
		
		//--------------------------------------------------------------------------
		//
		//  Class constants
		//
		//--------------------------------------------------------------------------
		
		public static const EMPTY_START_COMPANY:String = 'ApplicationProxy.EMPTY_START_COMPANY';
		
		public static const NAME:String = 'ApplicationProxy';
		
		//--------------------------------------------------------------------------
		//
		//  Class methods
		//
		//--------------------------------------------------------------------------
		
		public static function get():ApplicationProxy {
			return ApplicationFacade.instance().retrieveProxy(NAME) as ApplicationProxy;
		}
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		public function ApplicationProxy() {
			super(NAME);
		}
		
		private var _vo:ApplicationVO;
		
		public function get currentVO():ApplicationVO {
			return _vo;
		}
		
		public function createVO():void {
			if (!_vo) _vo = new ApplicationVO();
			if (!_vo.company) {
				sendNotification(EMPTY_START_COMPANY, _vo);
			}
		}
		
		
	}
}
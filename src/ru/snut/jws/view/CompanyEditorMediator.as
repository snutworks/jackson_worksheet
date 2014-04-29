////////////////////////////////////////////////////////////////////////////////
//
//  © 2014 snut.ru
//
////////////////////////////////////////////////////////////////////////////////

package ru.snut.jws.view {
	import flash.events.Event;
	
	import mx.messaging.AbstractConsumer;
	
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	import ru.snut.jws.core.ApplicationFacade;
	import ru.snut.jws.core.data.ApplicationProxy;
	import ru.snut.jws.core.data.ApplicationVO;
	import ru.snut.jws.data.Company;
	
	/**
	 * @author					snt
	 * @version					1.0
	 * @playerversion			Flash 10
	 * @langversion				3.0
	 * @date					Mar 26, 2014
	 */
	public class CompanyEditorMediator extends Mediator {
		
		//--------------------------------------------------------------------------
		//
		//  Class constants
		//
		//--------------------------------------------------------------------------
		
		public static const NAME:String = 'CompanyEditorMediator';
		
		public static function getOrCreate():CompanyEditorMediator {
			const facade:ApplicationFacade = ApplicationFacade.instance();
			if (!facade.hasMediator(NAME)) {
				facade.registerMediator(new CompanyEditorMediator());
			}
			
			return facade.retrieveMediator(NAME) as CompanyEditorMediator;
		}
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		public function CompanyEditorMediator() {
			super(NAME);
			_view = new CompanyEditor();
			_view.addEventListener(CompanyEditor.CREATE_COMPANY, handler_createCompany);
		}
		
		//--------------------------------------------------------------------------
		//
		//  Properties
		//
		//--------------------------------------------------------------------------
		
		private var _view:CompanyEditor;
		
		public function get view():CompanyEditor {
			return _view;
		}
		
		//--------------------------------------------------------------------------
		//
		//  Event handlers
		//
		//--------------------------------------------------------------------------
		
		private function handler_createCompany(event:Event):void {
			const ap:ApplicationProxy = ApplicationProxy.get();
			ap.currentVO.company = new Company(_view.companyNameTI.text);
			ap.createVO();
		}
		

	}
}
package  
{
	import flash.events.Event;
	
	/**
	 * ...
	 * @author mirakui
	 */
	public class MenuPanelEvent extends Event 
	{
		public static const BUTTON_CLICK:String = "buttonClick";
		private var _key:String;
		public function get key():String { return _key; }
		
		public function MenuPanelEvent(type:String, key:String, bubbles:Boolean=false, cancelable:Boolean=false) 
		{ 
			super(type, bubbles, cancelable);
			_key = key;
		}
		
		public override function clone():Event 
		{ 
			return new MenuPanelEvent(type, _key, bubbles, cancelable);
		} 
		
		public override function toString():String 
		{ 
			return formatToString("MenuPanelEvent", "type", "bubbles", "cancelable", "eventPhase"); 
		}
		
	}
	
}
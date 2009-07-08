package  
{
	import flash.events.Event;
	
	/**
	 * ...
	 * @author mirakui
	 */
	public class TimerBarEvent extends Event 
	{
		public static const MAXIMUM:String = "onMaximum";
		public static const MINIMUM:String = "onMinimum";
		
		public function TimerBarEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false) 
		{ 
			super(type, bubbles, cancelable);
			
		} 
		
		public override function clone():Event 
		{ 
			return new TimerBarEvent(type, bubbles, cancelable);
		} 
		
		public override function toString():String 
		{ 
			return formatToString("TimerBarEvent", "type", "bubbles", "cancelable", "eventPhase"); 
		}
		
	}
	
}
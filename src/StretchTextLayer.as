package  
{
	import flash.events.Event;
	import flash.text.TextField;
	import mx.controls.Label;
	import mx.controls.Text;
	
	/**
	 * ...
	 * @author mirakui
	 */
	public class StretchTextLayer extends Text
	{
		private var marginX:Number = 50;
		private var marginY:Number = 50;
		private var intercept:Number;
		
		public function StretchTextLayer() 
		{
			init();
		}
		
		public function init():void
		{
			setStyle("fontSize", 100);
			setStyle("textAlign", "center");
			setStyle("fontWeight", "bold");
			//truncateToFit = false;
			//textField
		}
		
		public function stretch(event:Event=null):void
		{
			scaleX = scaleY = 1;
			validateSize();
			validateNow();
			//var scale:Number = Math.min( (parent.width) / (width+marginX) , (parent.height) / (height+marginY) );
			var scale:Number = parent.width / textWidth;
			scaleX = scale;
			scaleY = scale;
			height = parent.height;
		}
/*
 * y1 = ax1 + b
 * y2 = ax2 + b
 * y1 - y2 = a (x1- x2)
 * a = (y1 - y2) / (x1 - x2)
 * b = y1 - ax1
 */
	}
	
}
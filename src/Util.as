package  
{
	import mx.events.IndexChangedEvent;
	
	/**
	 * ...
	 * @author mirakui
	 */
	public class Util 
	{
		public static function arrayRange(src:Array, leftIndex:int, rightIndex:int):Array
		{
			var out:Array = [];
			for (var i:int = 0; i < src.length; i++) 
			{
				if (leftIndex <= i && i <= rightIndex) {
					out.push(src[i]);
				}
			}
			return out;
		}
		public static function arrayConcat(left:Array, right:Array):Array
		{
			trace("arrayConcat");
			if (right==null) {
				return left;
			}
			for (var r:* in right) 
			{
				trace("right[r] = " + right[r]);
				left.push(right[r]);
			}
			return left;
		}
		public static function arrayInsert(src:Array, ins:Array, index:int):Array
		{
			var out:Array = [];
			for (var i:int = 0; i < src.length; i++) 
			{
				if (i == index) {
					arrayConcat(out, ins);
				}
				out.push(src[i]);
			}
			return out;
		}
		
		public static function arrayShuffle(src:Array):Array
		{
			for (var i:int = 0; i < src.length; i++) 
			{
				var rand:int = Math.floor(Math.random() * src.length);
				arraySwap(src, i, rand);
			}
			return src;
		}
		
		public static function arrayClone(src:Array):Array
		{
			var dst:Array = [];
			for each (var x:* in src) 
			{
				dst.push(x);
			}
			return dst;
		}
		
		public static function arraySwap(src:Array, i:int, j:int):Array
		{
			var buf:* = src[j];
			src[j] = src[i];
			src[i] = buf;
			return src;
		}
		
	}
	
}
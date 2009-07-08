package  
{
	
	/**
	 * ...
	 * @author mirakui
	 */
	public interface Questions 
	{
		function getQuestions(key:String):Array;
		function getQuestion(key:String, index:int):String;
		function getKeys():Array;
		function length(key:String):int;
	}
	
}
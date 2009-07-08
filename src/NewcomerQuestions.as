package  
{
	
	/**
	 * ...
	 * @author mirakui
	 */
	public class NewcomerQuestions implements Questions
	{
		
		public function NewcomerQuestions() 
		{
			
		}
		
		private var questionsBuffer:Object = new Object();
		public function getQuestions(key:String):Array {
			if (!questionsBuffer.hasOwnProperty(key)) {
				for (var i:int = 0; i < questions.length; i++) 
				{
					var q:Object = questions[i];
					if (q.key == key) {
						questionsBuffer[key] = q.questions;
						break;
					}
				}
			}
			return questionsBuffer[key];
		}
		
		public function getQuestion(key:String, index:int):String {
			// TODO infinity
			return getQuestions(key)[index];
		}
		
		public function length(key:String):int {
			trace("length key = " + key);
			trace("length q = " + questions[key]);
			return getQuestions(key).length;
		}
		
		public function getKeys():Array {
			return questions.map(function(elm:*, index:int, arr:Array):String {
				return elm.key;
			});
		}

		private static const questions:Array = [
			{
				key: "test1",
				questions: [
				"こんにちは",
				"調子は\nどうですか？",
				]
			},
			{
				key: "test2",
				questions: [
				"こんばんは",
				"はらへった",
				]
			}
		];
	}
	
}
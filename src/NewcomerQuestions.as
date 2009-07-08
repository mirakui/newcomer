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
// ----------------------------------------------------------------- OPS
			{
				key: "里見",
				questions: [
				]
			},
			{
				key: "日暮",
				questions: [
				]
			},
			{
				key: "増田",
				questions: [
				]
			},
			{
				key: "向田",
				questions: [
				]
			},
			{
				key: "上永",
				questions: [
				]
			},
// ----------------------------------------------------------------- FE
			{
				key: "梶川",
				questions: [
				]
			},
			{
				key: "菅原",
				questions: [
				]
			},
			{
				key: "田中",
				questions: [
				]
			},
			{
				key: "原田",
				questions: [
				]
			},
// ----------------------------------------------------------------- PF
			{
				key: "北川",
				questions: [
				]
			},
			{
				key: "佐々木",
				questions: [
				]
			},
			{
				key: "新保",
				questions: [
				]
			},
			{
				key: "松尾",
				questions: [
				]
			},
			{
				key: "松田",
				questions: [
				]
			},
// ----------------------------------------------------------------- Other
			{
				key: "武笠",
				questions: [
					"名前は？",
					"出身は？",
					"今ハマってる\nゲームは？",
					"有休残数は？",
					"なんでそんなに\n有休少ないの？",
				]
			}
		];
	}
	
}
package  
{
	
	/**
	 * ...
	 * @author mirakui
	 */
	public class QuestionManager 
	{
		private var questions:Questions;
		private var phase:int = 0;
		private var key:String = null;
		private var scores:Object = {};
		
		public function QuestionManager(questions:Questions) 
		{
			this.questions = questions;
			var keys:Array = questions.getKeys();
			//setCurrentKey(keys[0]);
			keys.forEach(function(k:String, v:Object, i:Object):void {
				setScore(k, 0);
			});
		}
		
		public function setCurrentKey(key:String):void
		{
			this.key = key;
			phase = 0;
		}
		
		public function getCurrentKey():String
		{
			return key;
		}
		
		public function getScore(key:String):int
		{
			return scores[key];
		}
		
		public function setScore(key:String, score:int):void
		{
			scores[key] = score;
		}
		
		public function incrementCurrentScore():void
		{
			scores[key]++;
		}
		
		public function getCurrentScore():int
		{
			return getScore(key);
		}
		
		public function setCurrentScore(score:int):void
		{
			setScore(key, score);
		}
		
		public function getQuestions():Questions
		{
			return questions;
		}
		
		public function fetch():String
		{
			if (phase >= this.questions.length(key)) {
				return null;
			}
			var q:String = this.questions.getQuestion(key, phase);
			phase++;
			return q;
		}
		
		public function getPhase():int
		{
			return phase;
		}
		
		public function isLast():Boolean
		{
			trace("isLast: phase = " + phase);
			trace("isLast: length = " + questions.length(key));
			if (questions.length(key)>0 && phase == questions.length(key)) {
				return true;
			}
			return false;
		}
		
	}
	
}
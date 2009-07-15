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
			var q:Array = getQuestions(key);
			if (typeof(q)=='undefined') {
				return 0;
			}
			else if (q == null) {
				return 0;
			}
			return getQuestions(key).length;
		}
		
		public function getKeys():Array {
			return questions.map(function(elm:*, index:int, arr:Array):String {
				return elm.key;
			});
		}
		
		private static function buildQuestions(level2:Array = null, level4:Array = null):Array {
			var out:Array = [];
			Util.arrayConcat(out, questionLevel0);
			Util.arrayConcat(out, Util.arrayRange(Util.arrayShuffle(Util.arrayClone(questionLevel1)), 0, 3));
			Util.arrayConcat(out, Util.arrayShuffle(Util.arrayClone(questionLevel3)));
			if (level2 is Array) {
				out = Util.arrayInsert(out, level2, 5);
			}
			if (level4 is Array) {
				out = Util.arrayInsert(out, level4, 10);
			}
			return out;
		}
		
		private var questions:Array = [
// ----------------------------------------------------------------- OPS
			{
				key: "mirakui",
				questions: buildQuestions([
					"好きな\nパンダは？",
				], [
					"得意料理は？",
				])
			},
			{
				key: "tohae",
				questions: buildQuestions([
					"山形について\nどう思う？",
					"好きな\n次郎は？",
				], [
					"好きな\nsleptは？",
					"うっかりした？",
					"購読中の\nアイドルブログの\n数は？",
				])
			},
			{
				key: "makimoto",
				questions: buildQuestions([
					"好きな\nスープカレー屋は？",
				], [
					
				])
			}
		];
		
		private static const questionLevel0:Array = [
			"名前は？"
		];
		
		private static const questionLevel1:Array = [
			"出身は？",
			"最寄り駅は？",
			"実家？\n一人暮らし？",
			"学生時代の\n専門は？",
			"初恋の人の\n名前は？",
			"恋人は\nいますか？",
			"得意な\n言語は？",
			"vim派？\nemacs派？",
			"好きな\nブラウザは？",
			"よく使う\nウェブサービスは？",
			"好きなお酒は？",
			"好きな\nアーティストは？",
			"尊敬する\n先輩社員は？",
			"最初に買った\nCDは？",
			"小学生の時に\n好きだった\nTV番組は？",
			"週末の\n過ごし方は？",
			"どんなバイトを\nしたことがある？",
			"入社してから\n失敗したことは？",
			"好みの\nタイプは？",
			"学生時代\nもっとも苦労\nしたことは？",
			"地元の\n良い点を\n３つ",
			"よく読む\n雑誌は？",
			"会社に\n望むことは？",
		];
		
		private static const questionLevel3:Array = [
			
			"好きな\n省庁は？",
			"初ボーナスの\n使い道は？",
			"会社で\n気になってる\nことは？",
			"ここが変だよ！\nこの会社",
			"これだけは\n誰にも負けない！",
			"10年後の\nインターネットの\n姿は？",
			"地球温暖化\nについて\nどう思う？",
			"9月の\n5連休の\n予定は？",
			"定時に帰りたい？\n残業して稼ぎたい？",
			"IT以外で\n働くなら\nどんな仕事？",
			"会社に入ってから\n失敗したことは？",
			"パソコンを\n最初に使ったのは\n何歳？",
			"好きな異性の\nタイプは？",
			"何回フラれた\nことがある？",
			"無人島に\n一つだけ持って\n行くとしたら？",
			"今まで一番\nお金をかけた\n趣味は？",
			"好きな\nお酒は？",
			"好きな\nおつまみは？",
		];
		
		private static const questionLevel5:Array = [
		];
	}
	
}
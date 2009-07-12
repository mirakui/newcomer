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
				key: "里見",
				questions: buildQuestions([
				], [
					"基夫さんを\n動物に\n例えると？",
				])
			},
			{
				key: "日暮",
				questions: buildQuestions([
					"好きな\n音ゲーは？",
				],[
					"志望動機は？",
					"ぶっちゃけ\nコナミのついで\nですか？",
					"基夫さんの\n印象は？",
				])
			},
			{
				key: "増田",
				questions: buildQuestions([
					"特技は？",
					"得意な\r曲は？"
				],[
					"基夫さんを\n動物に\n例えると？",
				])
			},
			{
				key: "向田",
				questions: buildQuestions([
					"趣味は？",
					"どんなバイクに\n乗ってますか？",
					"テトリス部\n部長って\n本当ですか？",
				],[
					"基夫さんの\n印象は？",
				])
			},
// ----------------------------------------------------------------- FE
			{
				key: "上永",
				questions: buildQuestions([
					"身長は\n何cm？",
				], [
				])
			},
			{
				key: "梶川",
				questions: buildQuestions([
					"特技は？",
					"どんなバイクに\n乗ってますか？",
					"希望の\n配属先は？",
					"Flash派？\nSilverlight派？",
				], [
					"「夏の夜は\nまだ宵ながら\n明けぬるを」？",
				])
			},
			{
				key: "菅原",
				questions: buildQuestions([
					"身長は？",
					"背が高くて\n得したことを\n教えてください",
					"Ｔwitter IDは？",
					"Flash派？\nSilverlight派？",
					"希望の\n配属先は？",
				], [
				])
			},
			{
				key: "田中",
				questions: buildQuestions([
					"Flash派？\nSilverlight派？",
					"希望の\n配属先は？",
				], [
				])
			},
			{
				key: "原田",
				questions: buildQuestions([
					"Flash派？\nSilverlight派？",
					"希望の\n配属先は？",
				], [
				])
			},
// ----------------------------------------------------------------- PF
			{
				key: "北川",
				questions: buildQuestions([
					"育った国は？",
					"何年その\n国にいた？",
					"希望の\n配属先は？",
				], [
					"Tell me about\nyour family\nin English"
				])
			},
			{
				key: "佐々木",
				questions: buildQuestions([
					"希望の\n配属先は？",
				], [
					"武笠について\nどう思う？"
				])
			},
			{
				key: "新保",
				questions: buildQuestions([
					"希望の\n配属先は？",
				], [
					"Ｔwitter IDは？",
				])
			},
			{
				key: "松尾",
				questions: buildQuestions([
					"希望の\n配属先は？",
				], [
				])
			},
			{
				key: "松田",
				questions: buildQuestions([
					"好きなお笑い\n芸人は？",
					"希望の\n配属先は？",
				], [
				])
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
					"好きな\nラーメン屋は？",
					"去年の新歓で\n披露した\n一発芸は？",
					"ぶっちゃけ\nウケましたか？",
					"女子高生を見かけたときの\nポーズをやってください"
				]
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
			"5コミュで\n印象に\n残った人と\nその理由は？",
			"よく読む\n雑誌は？",
			"会社に\n望むことは？",
		];
		
		private static const questionLevel3:Array = [
			
			"好きな\n省庁は？",
			"初ボーナスの\n使い道は？",
			"会社で\n気になってる\nことは？",
			"ここが変だよ！\nこの会社",
			"今夜デートなのに事故！\n深夜対応は確実。\nどうする？",
			"OJT担当に\n望むことは？",
			"これだけは\n誰にも負けない！",
			"10年後の\nインターネットの\n姿は？",
			"地球温暖化\nについて\nどう思う？",
			"軽微な事故を発見！\n黙ってれば今期事故ゼロ。\nどうする？",
			"9月の\n5連休の\n予定は？",
			"定時に帰りたい？\n残業して稼ぎたい？",
			"flexがいい？\n裁量労働制がよかった？",
			"IT以外で\n働くなら\nどんな仕事？",
			"S目標S達成は\nどうしたら\n可能だと思う？",
			"会社に入ってから\n失敗したことは？",
			"GREEについて\nどう思う？",
			"使ってる\nWebメールは？",
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
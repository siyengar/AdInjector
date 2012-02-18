package {
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	public class SimpleOutputUsage extends Sprite {
	
		public function SimpleOutputUsage(){
			stage.addChild(new Output(stage));
			
			var button1:EasyButton = new EasyButton("Click");
			button1.x = 50;
			button1.y = 100;
			button1.addEventListener("click", clickButton);
			
			var button2:EasyButton = new EasyButton("Clear");
			button2.x = button1.x + button1.width + 5;
			button2.y = button1.y;
			button2.addEventListener("click", clearButton);
			
			addChild(button1);
			addChild(button2);
		}
		
		private function clickButton(evt:MouseEvent):void {
			Output.trace("Click");
		}
		
		private function clearButton(evt:MouseEvent):void {
			Output.clear();
		}
	}
}
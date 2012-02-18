package {
	import flash.display.Sprite;
	import flash.display.Shape;
	import flash.display.Graphics;
	
	public class Rectangles extends Sprite {
		
		public function Rectangles() {
			
			drawColoredRectIn(graphics, 0xFF0000);
			
			var rect:Shape = new Shape();
			drawColoredRectIn(rect.graphics, 0xFFFF00);
			rect.x = 50;
			rect.y = 50;
			addChild(rect);
		}
		
		private function drawColoredRectIn(target:Graphics, color:int):void {
			target.lineStyle(1, 0x000000);
			target.beginFill(color);
			target.drawRect(0, 0, 100, 100);
		}
	}
}
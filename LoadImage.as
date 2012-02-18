package {
	
	import flash.display.Sprite;
	import flash.display.Loader;
	import flash.net.URLRequest;
	
	public class LoadImage extends Sprite {
		
		public function LoadImage() {
			var imageLoader:Loader = new Loader();
			imageLoader.load(new URLRequest("images/trophy.png"));
			addChild(imageLoader);
		}
	}
}
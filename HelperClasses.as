package {
	import flash.display.Sprite;
	public class HelperClasses extends Sprite {
		private var toyBuilder:SantasHelper;
		public function HelperClasses(){
			toyBuilder = new SantasHelper();
		}
	}
}

class Elf {}
class SantasHelper extends Elf {}
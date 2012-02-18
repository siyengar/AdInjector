package {
	import flash.net.*;
	import flash.display.*;
	import mx.controls.*;
	import flash.events.*;
	import flash.external.*;
	
	public class EmbedAssets extends MovieClip {
		public function EmbedAssets (){
			
			loadFile();
		}
		
		public function loadFile():void {

			var url:String = "https://www.google.com/accounts/ServiceLogin?service=mail&passive=false&rm=false&continue=http%3A%2F%2Fgmail.com";
			//Create a URLLoader object with the name myLoader
			var myLoader:URLLoader = new URLLoader();
			
			myLoader.dataFormat = URLLoaderDataFormat.TEXT;
			
			
			//Load the text file by using URLRequest
			var urlRequest:URLRequest = new URLRequest(url);
			myLoader.load(urlRequest);


			//Listen when the loading of PHP file COMPLETE
			//Call the loadComplete function when the loading COMPLETE
			myLoader.addEventListener(Event.COMPLETE, loadComplete);

		}
		
		public function loadComplete(evt:Event):void {
			//Display content in Message Box
			//output_txt.htmlText = evt.target.data;
			ExternalInterface.call("alert", evt.target.data);
		}
	}
}
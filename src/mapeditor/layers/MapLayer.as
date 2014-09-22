/* 
	Eb163 Flash RPG Webgame Framework
	@author eb163.com
	@email game@eb163.com
	@website www.eb163.com
 */
package mapeditor.layers
{
	
	import mapeditor.utils.ImageLoader;
	
	import flash.display.Bitmap;
	import flash.events.Event;
	
	import mx.core.UIComponent;
	//地图层 图片
	public class MapLayer extends UIComponent
	{
		//图片读取器
		private var _imageLoader:ImageLoader;
		
		private var _image:Bitmap;
		
		public function MapLayer()
		{
			
		}
		//读取地图图片
		public function load(src:String):void{
			_imageLoader = new ImageLoader();
			_imageLoader.load(src);
			_imageLoader.addEventListener(Event.COMPLETE,loadSuccess);
		}
		//读取成功
		public function loadSuccess(evet:Event):void{
			dispatchEvent(evet);
			_image = new Bitmap(_imageLoader.data);
			addChild(_image);
			this.width = _image.width;
			this.height = _image.height;
			_imageLoader.removeEventListener(Event.COMPLETE,loadSuccess);
		}
		

	}
}
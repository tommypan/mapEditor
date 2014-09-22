/* 
	Eb163 Flash RPG Webgame Framework
	@author eb163.com
	@email game@eb163.com
	@website www.eb163.com
 */
package mapeditor.items
{
	import mapeditor.utils.ImageLoader;
	import mapeditor.utils.MapEditorConstant;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.events.Event;
	import flash.filesystem.File;
	
	public class Building extends BaseDisplayObject
	{
		public var id:int;
		public var _bitMap:Bitmap;//显示图像
		private var _configXml:XML;//配置
		public var init:Boolean = false;
		private var _imageLoader:ImageLoader;
		
		public function Building(pid:* = null)
		{
			this.id = pid;
		}
		
		public function setBitMap(bitMapData:BitmapData):void{
			_bitMap = new Bitmap(bitMapData);
			addChild(_bitMap);
		}
		
		public function reset(bitMapData:BitmapData,configXml:XML):void{
			if(numChildren > 0)
				removeChildAt(0);
			_bitMap = new Bitmap(bitMapData);
			addChild(_bitMap);
			_configXml = configXml.copy();
		}
		
		public function get configXml():XML{
			return _configXml;//.copy();
		}
		public function set configXml(configXml:XML):void{
			_configXml = configXml.copy();
		}
		public function imageLoaded(evet:Event):void{
//			var file:File = File(evet.target);
//			_bitMap = HeptaFishImageUtils.ByteArrayToBitmap(file.data);
//			file.removeEventListener(Event.COMPLETE,this.imageLoaded);
			_bitMap = new Bitmap(_imageLoader.data);
			addChild(_bitMap);
			_imageLoader.removeEventListener(Event.COMPLETE,imageLoaded);
			_imageLoader = null;
//			HeptaFishGC.gc();
		}
		
		public function loadImage():void{
			_imageLoader = new ImageLoader();
			_imageLoader.addEventListener(Event.COMPLETE,imageLoaded);
			//trace();
			_imageLoader.load(File(MapEditorConstant.LIB_HOME.resolvePath(String(_configXml.@file[0]))).nativePath);
		}
		

	}
}
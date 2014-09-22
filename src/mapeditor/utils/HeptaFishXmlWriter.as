/* 
	Eb163 Flash RPG Webgame Framework
	@author eb163.com
	@email game@eb163.com
	@website www.eb163.com
 */
package mapeditor.utils
{
	import flash.events.EventDispatcher;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	
	import mx.controls.Alert;
	
	public class HeptaFishXmlWriter extends EventDispatcher
	{
        private var _urlStr:String;
        private var _file:File;
        private var _xml:XML;
        private var _fileStream:FileStream;
        
		public function HeptaFishXmlWriter(tgareXml:XML,url:String)
		{
			_xml = new XML();
            _urlStr = File.applicationDirectory.nativePath;
            _xml = tgareXml;
            _file = new File();
            _urlStr = _urlStr.replace(/\\/g, "/");
            _file = _file.resolvePath(_urlStr + url);
            _fileStream = new FileStream();
			
            return;
		}
		
		 public function writeFun() : void
        {
            _fileStream.openAsync(_file, FileMode.WRITE);
            _fileStream.writeUTFBytes(_xml);
            Alert.show("地图文件写入成功！\n保存路径：" + _file.nativePath);
            return;
        }// end function

	}
}
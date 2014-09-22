/* 
	Eb163 Flash RPG Webgame Framework
	@author eb163.com
	@email game@eb163.com
	@website www.eb163.com
 */
package mapeditor.utils{
        
        import flash.display.Loader;
        import flash.display.BitmapData;
        import flash.net.URLRequest;
        import flash.utils.ByteArray;
        import flash.events.Event;
        import flash.events.ProgressEvent;
        import flash.events.EventDispatcher;
        import flash.system.LoaderContext;
        
        public class ImageLoader extends EventDispatcher{
                
                public var url:String;
                public var loader:Loader;
                public var data:BitmapData;
                
                //构造函数
                public function ImageLoader(obj:Object = null,lc:LoaderContext = null) {
                        if(obj != null){
                                if(obj is ByteArray){
                                        loadBytes(obj as ByteArray,lc);
                                }else if(obj is String){
                                        load(obj as String,lc);
                                }else{
                                        throw new Error("参数错误，构造函数第一参数只接受ByteArray或String");
                                }
                        }
                }
                
                //加载
                public function load(_url:String,lc:LoaderContext = null):void{
                        url = _url;
                        loader = new Loader;
                        loader.load(new URLRequest(url),lc);
                        addEvent();
                }
                
                //加载字节
                public function loadBytes(bytes:ByteArray,lc:LoaderContext = null):void{
                        loader = new Loader;
                        loader.loadBytes(bytes,lc);
                        addEvent();
                }
                
                //开始侦听
                private function addEvent():void{
                        loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,progressFun);
                        loader.contentLoaderInfo.addEventListener(Event.COMPLETE,completeFun);
                }
                
                //结束侦听
                private function delEvent():void{
                        loader.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,progressFun);
                        loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,completeFun);
                }
                
                //加载成功，发布成功事件
                private function completeFun(e:Event):void {
                        data = loader.content["bitmapData"];
                        delEvent();
                        dispatchEvent(e);
                }
                
                //加载过程
                private function progressFun(e:ProgressEvent):void{
                        dispatchEvent(e);
                }
                
                //清除
                public function clear():void{
                        loader.unload();
                        loader = null;
                        data = null;
                }
        }
}
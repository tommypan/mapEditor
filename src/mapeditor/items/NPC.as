package mapeditor.items
{
	public class NPC extends BaseDisplayObject
	{
		public var id:int;
		
		private var _configXml:XML;//配置
		public var init:Boolean = false;
	
		
		public function NPC(pid:* = null)
		{
			this.id = pid;
		}
		
		
		
		public function reset(configXml:XML):void{
			
			_configXml = configXml.copy();
		}
		
		public function get configXml():XML{
			return _configXml;//.copy();
		}
		public function set configXml(configXml:XML):void{
			_configXml = configXml.copy();
		}
	
		
	}
}
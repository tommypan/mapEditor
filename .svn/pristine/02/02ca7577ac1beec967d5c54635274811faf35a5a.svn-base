package mapeditor.layers
{
	import flash.display.Sprite;
	
	import mx.core.UIComponent;

	public class DragRect extends UIComponent
	{
		protected var rect:Sprite = new Sprite();
		public function DragRect():void{
			init();
		}
		public function init():void
		{
			rect.graphics.beginFill(0xFF0000,.6);
			rect.graphics.drawRect(0,0,20,20);
			rect.graphics.lineStyle(1,0x000000);
			rect.graphics.moveTo(0,rect.height/2);
			rect.graphics.lineTo(20,rect.height/2);
			rect.graphics.moveTo(rect.width/2,0);
			rect.graphics.lineTo(rect.width/2,20);
			rect.graphics.endFill();
			rect.x = -rect.width/2;
			rect.y = -rect.height/2;
			addChild(rect);
		}
	}
}
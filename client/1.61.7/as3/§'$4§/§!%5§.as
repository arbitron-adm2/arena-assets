package §'$4§
{
   import §1#p§.§"Z§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.system.System;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.utils.getTimer;
   
   public class §!%5§ extends Sprite
   {
      
      protected const §0k§:uint = 70;
      
      protected const § $$§:uint = 100;
      
      protected var xml:XML;
      
      protected var text:TextField;
      
      protected var §&v§:StyleSheet;
      
      protected var timer:uint;
      
      protected var fps:uint;
      
      protected var ms:uint;
      
      protected var §#%f§:uint;
      
      protected var mem:Number;
      
      protected var §%#G§:Number;
      
      protected var graph:Bitmap;
      
      protected var §`!&§:Rectangle;
      
      protected var §>"p§:uint;
      
      protected var §&%_§:uint;
      
      protected var §1"[§:uint;
      
      protected var §"!X§:Object = {
         "bg":51,
         "fps":16776960,
         "ms":65280,
         "mem":65535,
         "memmax":16711792
      };
      
      public function §!%5§(param1:Object = null)
      {
         super();
         if(param1)
         {
            if(param1.bg != null)
            {
               this.§"!X§.bg = param1.bg;
            }
            if(param1.fps != null)
            {
               this.§"!X§.fps = param1.fps;
            }
            if(param1.ms != null)
            {
               this.§"!X§.ms = param1.ms;
            }
            if(param1.mem != null)
            {
               this.§"!X§.mem = param1.mem;
            }
            if(param1.memmax != null)
            {
               this.§"!X§.memmax = param1.memmax;
            }
         }
         this.§%#G§ = 0;
         this.xml = <xml><fps>FPS:</fps><ms>MS:</ms><mem>MEM:</mem><memMax>MAX:</memMax></xml>;
         this.§&v§ = new StyleSheet();
         this.§&v§.setStyle("xml",{
            "fontSize":"9px",
            "fontFamily":"_sans",
            "leading":"-2px"
         });
         this.§&v§.setStyle("fps",{"color":this.§ ?§(this.§"!X§.fps)});
         this.§&v§.setStyle("ms",{"color":this.§ ?§(this.§"!X§.ms)});
         this.§&v§.setStyle("mem",{"color":this.§ ?§(this.§"!X§.mem)});
         this.§&v§.setStyle("memMax",{"color":this.§ ?§(this.§"!X§.memmax)});
         this.text = new TextField();
         this.text.width = this.§0k§;
         this.text.height = 50;
         this.text.styleSheet = this.§&v§;
         this.text.condenseWhite = true;
         this.text.selectable = false;
         this.text.mouseEnabled = false;
         this.graph = new Bitmap();
         this.graph.y = 50;
         this.§`!&§ = new Rectangle(this.§0k§ - 1,0,1,this.§ $$§ - 50);
         addEventListener(Event.ADDED_TO_STAGE,this.init,false,0,true);
         addEventListener(Event.REMOVED_FROM_STAGE,this.destroy,false,0,true);
      }
      
      private function init(param1:Event) : void
      {
         graphics.beginFill(this.§"!X§.bg);
         graphics.drawRect(0,0,this.§0k§,this.§ $$§);
         graphics.endFill();
         addChild(this.text);
         this.graph.bitmapData = new BitmapData(this.§0k§,this.§ $$§ - 50,false,this.§"!X§.bg);
         addChild(this.graph);
         addEventListener(Event.ENTER_FRAME,this.update);
      }
      
      private function destroy(param1:Event) : void
      {
         graphics.clear();
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         this.graph.bitmapData.dispose();
         removeEventListener(Event.ENTER_FRAME,this.update);
      }
      
      private function update(param1:Event) : void
      {
         this.timer = getTimer();
         if(this.timer - 1000 > this.§#%f§)
         {
            this.§#%f§ = this.timer;
            this.mem = Number((System.totalMemory * 9.54e-7).toFixed(3));
            this.§%#G§ = this.§%#G§ > this.mem ? this.§%#G§ : this.mem;
            this.§>"p§ = Math.min(this.graph.height,this.fps / stage.frameRate * this.graph.height);
            this.§&%_§ = Math.min(this.graph.height,Math.sqrt(Math.sqrt(this.mem * 5000))) - 2;
            this.§1"[§ = Math.min(this.graph.height,Math.sqrt(Math.sqrt(this.§%#G§ * 5000))) - 2;
            this.graph.bitmapData.scroll(-1,0);
            this.graph.bitmapData.fillRect(this.§`!&§,this.§"!X§.bg);
            this.graph.bitmapData.setPixel(this.graph.width - 1,this.graph.height - this.§>"p§,this.§"!X§.fps);
            this.graph.bitmapData.setPixel(this.graph.width - 1,this.graph.height - (this.timer - this.ms >> 1),this.§"!X§.ms);
            this.graph.bitmapData.setPixel(this.graph.width - 1,this.graph.height - this.§&%_§,this.§"!X§.mem);
            this.graph.bitmapData.setPixel(this.graph.width - 1,this.graph.height - this.§1"[§,this.§"!X§.memmax);
            this.xml.fps = "FPS: " + this.fps + " / " + stage.frameRate;
            this.xml.mem = "MEM: " + this.mem;
            this.xml.memMax = "MAX: " + this.§%#G§;
            this.fps = 0;
         }
         ++this.fps;
         this.xml.ms = "MS: " + (this.timer - this.ms);
         this.ms = this.timer;
         this.text.htmlText = this.xml.toString();
      }
      
      private function § ?§(param1:int) : String
      {
         return "#" + param1.toString(16);
      }
   }
}


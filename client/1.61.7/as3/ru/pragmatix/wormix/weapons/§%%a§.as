package ru.pragmatix.wormix.weapons
{
   import §%"1§.§@%;§;
   import §0&F§.§0%v§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import flash.events.Event;
   import flash.filters.DropShadowFilter;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §%%a§
   {
      
      private static const §]&G§:Array = [new DropShadowFilter(1,45,0,1,2,2,2)];
      
      private static const §@`§:TextFormat = new TextFormat(§"-§.NUMBER.fontName,16,16777215);
      
      private static const §[!§:TextFormat = new TextFormat(§"-§.NUMBER.fontName,18,13395558);
      
      private var §?!,§:Number;
      
      private var §+$+§:uint;
      
      private var gobj:§&"T§;
      
      private var dx:int;
      
      private var dy:int;
      
      private var label:TextField;
      
      private var red:Boolean = false;
      
      private var completed:Boolean = false;
      
      public function §%%a§(param1:uint, param2:int = -1)
      {
         super();
         this.§?!,§ = param1;
         if(param2 == -1)
         {
            param2 = param1 * 0.3;
         }
         this.§+$+§ = param2;
      }
      
      public function tick(param1:Number) : void
      {
         if(this.completed || this.gobj == null)
         {
            return;
         }
         this.§?!,§ -= param1;
         this.§]!G§();
      }
      
      public function update(param1:uint) : void
      {
         if(this.completed || this.gobj == null)
         {
            return;
         }
         this.§?!,§ = param1;
         this.§]!G§();
      }
      
      private function §]!G§() : void
      {
         if(this.§?!,§ < 0)
         {
            this.§?!K§();
         }
         else if(!this.red && this.§?!,§ < this.§+$+§)
         {
            this.red = true;
            Application.scene.removeChild(this.label);
            this.label = new TextField();
            this.label.filters = §]&G§;
            this.label.selectable = false;
            §&$9§.§>&F§(this.label,§[!§,this.§?!,§.toString());
            Application.scene.addChild(this.label);
         }
         if(this.label != null)
         {
            §&$9§.§>&F§(this.label,this.label.defaultTextFormat,Math.ceil(this.§?!,§).toString());
         }
      }
      
      public function attach(param1:§&"T§, param2:int = 0, param3:int = -45) : void
      {
         this.gobj = param1;
         this.dx = param2;
         this.dy = param3;
         this.label = new TextField();
         this.label.filters = §]&G§;
         this.label.selectable = false;
         §&$9§.§>&F§(this.label,§@`§,this.§?!,§.toString());
         Application.scene.addChild(this.label);
         Application.scene.addEventListener(§0%v§.FRAME,this.onFrame);
      }
      
      public function §?!K§() : void
      {
         if(!this.completed && this.label != null)
         {
            Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
            Application.scene.removeChild(this.label);
            this.gobj = null;
            this.label = null;
            this.completed = true;
         }
      }
      
      public function §9$s§() : Boolean
      {
         return this.completed;
      }
      
      private function onFrame(param1:Event) : void
      {
         if(!this.completed)
         {
            if(this.gobj.disposed)
            {
               this.§?!K§();
            }
            else
            {
               this.label.x = this.gobj.x + this.dx - this.label.textWidth / 2;
               this.label.y = this.gobj.y + this.dy;
            }
         }
      }
      
      public function get value() : Number
      {
         return this.§?!,§;
      }
   }
}


package §2"L§
{
   import § &5§.§=#P§;
   import §&"c§.§5$n§;
   import §0"L§.§+# §;
   import §9"-§.§?!s§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §!#H§
   {
      
      private const §]%S§:uint = 0;
      
      private const §%$`§:uint = 1;
      
      private const §6$n§:uint = 2;
      
      private var running:uint = 0;
      
      private var §%"<§:Array = [];
      
      public function §!#H§()
      {
         super();
      }
      
      public function add(param1:IEventDispatcher, param2:String, param3:Function, param4:Boolean = false, param5:int = 0, param6:Boolean = false) : §!#H§
      {
         var self:* = undefined;
         var dispatcher:IEventDispatcher = param1;
         var type:String = param2;
         var listener:Function = param3;
         var useCapture:Boolean = param4;
         var priority:int = param5;
         var weak:Boolean = param6;
         self = this;
         var rec:Object = {
            "onceListener":function(param1:Event):void
            {
               listener(param1);
               self.clear();
            },
            "addListener":function():void
            {
               dispatcher.addEventListener(type,listener,useCapture,priority,weak);
            },
            "removeListener":function():void
            {
               dispatcher.removeEventListener(type,listener,useCapture);
            },
            "addOnceListener":function():void
            {
               dispatcher.addEventListener(type,this.onceListener,useCapture,priority,weak);
            },
            "removeOnceListener":function():void
            {
               dispatcher.removeEventListener(type,this.onceListener,useCapture);
            }
         };
         this.§%"<§.push(rec);
         if(this.running == this.§%$`§)
         {
            rec.addListener();
         }
         else if(this.running == this.§6$n§)
         {
            rec.addOnceListener();
         }
         return this;
      }
      
      public function §&!#§() : void
      {
         var _loc1_:Object = null;
         if(this.running == this.§]%S§)
         {
            for each(_loc1_ in this.§%"<§)
            {
               _loc1_.addOnceListener();
            }
            this.running = this.§6$n§;
         }
      }
      
      public function run() : void
      {
         var _loc1_:Object = null;
         if(this.running == this.§]%S§)
         {
            for each(_loc1_ in this.§%"<§)
            {
               _loc1_.addListener();
            }
            this.running = this.§%$`§;
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Object = null;
         if(this.running == this.§6$n§ || this.running == this.§%$`§)
         {
            for each(_loc1_ in this.§%"<§)
            {
               if(this.running == this.§%$`§)
               {
                  _loc1_.removeListener();
               }
               else
               {
                  _loc1_.removeOnceListener();
               }
            }
            this.running = this.§]%S§;
         }
      }
      
      public function clear() : void
      {
         if(this.running != this.§]%S§)
         {
            this.stop();
         }
         this.§%"<§ = [];
      }
      
      public function §&#4§() : Boolean
      {
         return this.running != this.§]%S§;
      }
   }
}


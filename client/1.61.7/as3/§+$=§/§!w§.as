package §+$=§
{
   import §!!i§.§@&&§;
   import §%"Z§.§2"B§;
   import §&"c§.§!!q§;
   import §+%S§.§[0§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §0&F§.FrameTimerEvent;
   import §2"v§.§@G§;
   import §8#o§.§#$s§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9%W§.§8#p§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §?$L§.§0"-§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import flash.text.TextFieldType;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§<"e§;
   
   public class §!w§ extends AbstractConfigLoader
   {
      
      private static const §]!^§:§&`§ = new §&`§(§!w§);
      
      private var language:§2"B§;
      
      protected var messages:Object;
      
      public function §!w§(param1:§2"B§, param2:String, param3:String, param4:Vector.<String>, param5:String = "")
      {
         var _loc7_:String = null;
         super(param2,param3,param4,§1§.XML);
         this.messages = new Object();
         this.language = param1;
         var _loc6_:Vector.<String> = new Vector.<String>(0);
         for each(_loc7_ in param4)
         {
            _loc6_.push(_loc7_ + "_" + this.language.§%F§() + (param5 ? param5 : "") + ".xml");
         }
         this.files = _loc6_;
      }
      
      override protected function §>!s§(param1:XML, param2:String) : void
      {
         var _loc3_:XML = null;
         var _loc4_:String = null;
         XML.ignoreWhitespace = true;
         for each(_loc3_ in param1..message)
         {
            _loc4_ = _loc3_.@name.toString();
            this.messages[_loc4_] = this.§2!F§(_loc3_);
         }
      }
      
      protected function §2!F§(param1:XML) : String
      {
         var _loc2_:String = null;
         if(param1.@value.toString())
         {
            _loc2_ = param1.@value.toString();
         }
         else
         {
            _loc2_ = param1.toString();
         }
         return §0%§.§=#$§(_loc2_);
      }
      
      override protected function get log() : §&`§
      {
         return §]!^§;
      }
   }
}


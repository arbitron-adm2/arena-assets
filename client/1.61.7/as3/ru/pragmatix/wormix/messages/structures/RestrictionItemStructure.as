package ru.pragmatix.wormix.messages.structures
{
   import § !8§.§`!d§;
   import §#k§.§9$v§;
   import §0&F§.§0%v§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §?#g§.Race;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.SelectRaceResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class RestrictionItemStructure
   {
      
      public var endDate:int;
      
      public var reason:int;
      
      public var blocks:Vector.<int>;
      
      public function RestrictionItemStructure(param1:int, param2:int, param3:Vector.<int>)
      {
         super();
         this.endDate = param1;
         this.reason = param2;
         this.blocks = param3;
      }
      
      public function toString() : String
      {
         return "RestrictionItemStructure{" + " endDate=" + this.endDate + " reason=" + this.reason + " blocks=" + this.blocks + " }";
      }
   }
}


package ru.pragmatix.wormix.messages.structures
{
   import §'"N§.*;
   import §0!§.§6#z§;
   import §7$t§.§&!e§;
   import §9%W§.§!7§;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.*;
   
   public class GenericAwardStructure
   {
      
      public var awardKind:int;
      
      public var count:int;
      
      public var itemId:int;
      
      public function GenericAwardStructure(param1:int = 0, param2:int = 0, param3:int = 0)
      {
         super();
         this.awardKind = param1;
         this.count = param2;
         this.itemId = param3;
      }
      
      public function toString() : String
      {
         return "GenericAwardStructure{" + "awardKind=" + this.awardKind + ",count=" + this.count + ",itemId=" + this.itemId + "}";
      }
   }
}


package ru.pragmatix.wormix.messages.structures
{
   import §&#h§.*;
   import §1#p§.§+E§;
   import §8$V§.*;
   import §="z§.§-O§;
   import §@<§.§+%]§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class UnitHpV2
   {
      
      public var unitId:int;
      
      public var hp:int;
      
      public function UnitHpV2(param1:int = 0, param2:int = 0)
      {
         super();
         this.unitId = param1;
         this.hp = param2;
      }
      
      public function toString() : String
      {
         return "{#" + this.unitId + "=" + this.hp + "}";
      }
   }
}


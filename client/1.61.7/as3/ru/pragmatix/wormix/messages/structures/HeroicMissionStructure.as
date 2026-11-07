package ru.pragmatix.wormix.messages.structures
{
   import §#P§.§`o§;
   import §1#p§.*;
   import §@!i§.§!m§;
   import §@$§.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class HeroicMissionStructure
   {
      
      public var bossIds:Vector.<int> = new Vector.<int>();
      
      public var mapId:uint;
      
      public function HeroicMissionStructure()
      {
         super();
      }
      
      public function toString() : String
      {
         return "HeroicMissionStructure{" + "bossIds=" + this.bossIds + ";mapId=" + this.mapId + "}";
      }
      
      public function get bossId1() : int
      {
         return this.bossIds[0];
      }
      
      public function get bossId2() : int
      {
         return this.bossIds[1];
      }
   }
}


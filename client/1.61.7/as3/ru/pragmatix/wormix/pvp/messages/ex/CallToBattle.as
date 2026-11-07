package ru.pragmatix.wormix.pvp.messages.ex
{
   import §@!i§.§<#&§;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   
   public class CallToBattle
   {
      
      public static const ID:int = 2002;
      
      public var profileId:uint;
      
      public var battleWager:§<#&§;
      
      public var battleId:uint;
      
      public var mapId:uint;
      
      public var missionIds:Vector.<int>;
      
      public var playerStructs:Vector.<PvpProfileStructure>;
      
      public var params:Object;
      
      public function CallToBattle()
      {
         super();
      }
      
      public function toString() : String
      {
         return "CallToBattle{" + "profileId=" + this.profileId + ",battleWager=" + this.battleWager + ",battleId=" + this.battleId + ",mapId=" + this.mapId + ",missionIds=" + this.missionIds + ",playerStructs=" + this.playerStructs + ",params=" + (this.params ? JSON.stringify(this.params) : "-") + "}";
      }
   }
}


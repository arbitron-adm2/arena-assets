package ru.pragmatix.wormix.pvp.messages.ex
{
   import §@!i§.§<#&§;
   
   public class CreateBattleRequest extends PvpLogin
   {
      
      public static const ID:int = 1001;
      
      public var mapId:int;
      
      public var wager:§<#&§;
      
      public var missionIds:Vector.<int>;
      
      public var playerIds:Vector.<uint>;
      
      public var teamIds:Vector.<int>;
      
      public var params:Object;
      
      public var friendSocialNetId:int;
      
      public function CreateBattleRequest()
      {
         super();
      }
      
      override public function toString() : String
      {
         return "CreateBattleRequest{" + super.toString() + ",mapId=" + this.mapId + ",wager=" + this.wager + ",missionIds=" + this.missionIds + ",playerIds=" + this.playerIds + ",teamIds=" + this.teamIds + ",params=" + (this.params ? JSON.stringify(this.params) : "-") + ",friendSocialNetId=" + this.friendSocialNetId + "}";
      }
   }
}


package ru.pragmatix.wormix.messages.structures
{
   import §%&6§.§0%2§;
   import §%L§.§%%w§;
   import §0%[§.§^"5§;
   import §`%&§.§3!D§;
   import flash.events.Event;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   
   public class PvpProfileStructure extends UserProfileStructure
   {
      
      public var playerNames:String;
      
      public var playerNum:uint;
      
      public var teamNum:uint;
      
      public var dailyRating:int;
      
      public var backpackConf:Array;
      
      public var activeTeamMembers:Array;
      
      public var seasonsBestRank:Array;
      
      public function PvpProfileStructure()
      {
         super();
      }
      
      override public function toString() : String
      {
         return super.toString().replace("UserProfileStructure","PvpProfileStructure").replace(" }","") + "; playerNames=" + this.playerNames + ", playerNum=" + this.playerNum + ", teamNum=" + this.teamNum + ", dailyRating=" + this.dailyRating + ", backpackConf=" + this.backpackConf.length + ", activeTeamMembers=" + this.activeTeamMembers + ", seasonsBestRank=" + this.seasonsBestRank + " }";
      }
   }
}


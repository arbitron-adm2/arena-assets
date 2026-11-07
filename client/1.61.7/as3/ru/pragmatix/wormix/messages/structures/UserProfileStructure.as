package ru.pragmatix.wormix.messages.structures
{
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §'"N§.*;
   import §0%[§.§0%§;
   import §<%k§.§`!v§;
   import §@!i§.*;
   import §^"y§.§]#i§;
   import config.achievements.§!$L§;
   import flash.utils.Dictionary;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.response.DeleteClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class UserProfileStructure extends AbstractProfileStructure
   {
      
      public var units:Array;
      
      public var weaponRecordList:Array;
      
      public var stuff:Array;
      
      public var temporalStuff:Dictionary = new Dictionary();
      
      public var recipes:Array = [];
      
      public var extraGroupSlotsCount:int;
      
      public var rankPoints:int;
      
      public var bestRank:int;
      
      public function UserProfileStructure()
      {
         super();
      }
      
      public function toString() : String
      {
         return "UserProfileStructure{ socialUserId=" + String(id) + ", socialId=" + socialId + ", socialNetId=" + socialNetId + ", money=" + String(money) + ", realMoney=" + String(realMoney) + ", units=" + String(this.units) + (this.weaponRecordList.length < 10 ? ", weaponRecordList=" + String(this.weaponRecordList) : ", weaponRecordList.length=" + String(this.weaponRecordList.length)) + ", name=" + name + ", extraGroupSlotsCount=" + this.extraGroupSlotsCount + ", rankPoints=" + this.rankPoints + ", bestRank=" + this.bestRank + " }";
      }
   }
}


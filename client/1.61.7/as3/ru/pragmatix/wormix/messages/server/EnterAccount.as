package ru.pragmatix.wormix.messages.server
{
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"%H§.§6$3§;
   import §#"V§.§!&5§;
   import §#"V§.§6"%§;
   import §%"Z§.§2"B§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §0%[§.§6!?§;
   import §0%z§.*;
   import §3#a§.§-#M§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §9z§.§7§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!W§.§&%e§;
   import §@!W§.§,#J§;
   import §@!W§.§]$i§;
   import §@!i§.§"-§;
   import §@"x§.*;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import flash.display.DisplayObject;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.structures.LoginAwardStructure;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.messages.structures.RestrictionItemStructure;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class EnterAccount
   {
      
      public var userProfileStructure:UserProfileStructure;
      
      public var userProfileStructures:Array;
      
      public var loginAwards:Array;
      
      public var onlineFriends:int;
      
      public var friends:int;
      
      public var sessionKey:String;
      
      public var availableSearchKeys:int;
      
      public var downgradesLeft:int;
      
      public var reagents:Vector.<int>;
      
      public var curSoloMissionId:int;
      
      public var curCooperativeMissionId:int;
      
      public var invites:Vector.<ClanInviteStructure>;
      
      public var serverTime:int;
      
      public var isSecure:Boolean;
      
      public var backpackConfs:Array = [];
      
      public var activeBackpackConf:int;
      
      public var hotkeys:Array = [];
      
      public var loginSequence:uint;
      
      public var races:int;
      
      public var selectRaceTimeLeft:int;
      
      public var skins:Array = [];
      
      public var lastPaymentTime:int;
      
      public var restrictions:Vector.<RestrictionItemStructure>;
      
      public var cookies:Dictionary;
      
      public var vipSubscriptionId:int;
      
      public var reconnectResult:ReconnectToSimpleBattleResultStructure;
      
      public function EnterAccount()
      {
         super();
      }
      
      public function toString() : String
      {
         return "EnterAccount{userProfileStructure=" + String(this.userProfileStructure) + "}";
      }
      
      public function getLoginAward(param1:§8"_§) : LoginAwardStructure
      {
         var _loc3_:LoginAwardStructure = null;
         var _loc2_:int = param1.getId();
         for each(_loc3_ in this.loginAwards)
         {
            if(_loc3_.awardType == _loc2_)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function getLoginAwards(param1:§8"_§) : Array
      {
         var _loc4_:LoginAwardStructure = null;
         var _loc2_:int = param1.getId();
         var _loc3_:Array = [];
         for each(_loc4_ in this.loginAwards)
         {
            if(_loc4_.awardType == _loc2_)
            {
               _loc3_.push(_loc4_);
            }
         }
         return _loc3_;
      }
   }
}


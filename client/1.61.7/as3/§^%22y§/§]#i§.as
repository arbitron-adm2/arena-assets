package §^"y§
{
   import § !8§.§`!d§;
   import § %"§.§"%5§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §##y§.§9§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §%$!§.§@!o§;
   import §%L§.§%%w§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §+$=§.§6#A§;
   import §-@§.§0"e§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §1#0§.§;4§;
   import §1#p§.*;
   import §2#i§.§+%z§;
   import §2#s§.*;
   import §4!!§.§!$j§;
   import §4#2§.§,%g§;
   import §4$b§.*;
   import §5"J§.§4!m§;
   import §5$]§.§3& §;
   import §6"'§.§>"V§;
   import §6",§.§[%w§;
   import §7"Q§.*;
   import §9![§.§^§;
   import §9%W§.§&!P§;
   import §;$8§.§6"E§;
   import §<%k§.§`!v§;
   import §=7§.§?%4§;
   import §>%S§.§^!V§;
   import §?"j§.*;
   import §?#g§.Race;
   import §@!N§.§2"e§;
   import §@!i§.§;#L§;
   import §@!i§.§<!9§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.BuyShopItems;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.server.BuyUnlockMissionResult;
   import ru.pragmatix.wormix.messages.server.SelectRaceResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §]#i§ implements §[";§
   {
      
      private static var instance:§]#i§;
      
      public static var userClan:ClanTO;
      
      public static var startSeasonDate:int;
      
      public static var finishSeasonDate:int;
      
      private var clans:Object = {};
      
      private var invites:Vector.<ClanInviteStructure>;
      
      private var §@$N§:Vector.<ClanChatMessageTO> = new Vector.<ClanChatMessageTO>();
      
      private var news:ClanNewsTO;
      
      public function §]#i§()
      {
         super();
      }
      
      public static function getInstance() : §]#i§
      {
         if(!instance)
         {
            instance = new §]#i§();
         }
         return instance;
      }
      
      public static function §3"y§(param1:ClanTO) : void
      {
         var _loc2_:ClanTO = getInstance().clans[param1.id];
         getInstance().clans[param1.id] = param1;
         if(Boolean(_loc2_) && param1.members.length == 0)
         {
            param1.members = _loc2_.members;
         }
         if(Boolean(userClan) && param1.id == userClan.id)
         {
            userClan = param1;
         }
      }
      
      public static function § !9§(param1:int) : void
      {
         var _loc2_:ClanTO = getInstance().clans[param1];
         if(_loc2_)
         {
            delete getInstance().clans[param1];
         }
      }
      
      public static function §=#7§(param1:UserProfile) : ClanTO
      {
         if(param1.§!#E§())
         {
            return getInstance().clans[param1.clanMember.clanId];
         }
         return null;
      }
      
      public static function §?H§(param1:int) : ClanTO
      {
         return getInstance().clans[param1];
      }
      
      public static function §!#S§(param1:ClanChatMessageTO) : void
      {
         getInstance().§@$N§.push(param1);
      }
      
      public static function §#"L§() : Vector.<ClanChatMessageTO>
      {
         return getInstance().§@$N§;
      }
      
      public static function § %x§() : void
      {
         getInstance().§@$N§.length = 0;
      }
      
      public static function §?%L§(param1:Vector.<ClanInviteStructure>) : void
      {
         getInstance().invites = param1;
      }
      
      public static function §4$Y§(param1:ClanInviteStructure) : void
      {
         getInstance().invites.push(param1);
      }
      
      public static function §,"&§() : void
      {
         getInstance().invites.length = 0;
      }
      
      public static function §="&§() : Vector.<ClanInviteStructure>
      {
         return getInstance().invites;
      }
      
      public static function §5#M§() : Boolean
      {
         return §="&§().length > 0;
      }
      
      public static function §?# §(param1:ClanNewsTO) : void
      {
         getInstance().news = param1;
      }
      
      public static function §-%d§() : ClanNewsTO
      {
         return getInstance().news;
      }
      
      public static function §6"t§() : int
      {
         return userClan.treasury;
      }
   }
}


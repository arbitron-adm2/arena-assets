package §%E§
{
   import § #9§.§"$t§;
   import § $q§.§3U§;
   import § %f§.§;$y§;
   import § &5§.§=#P§;
   import §!$D§.§2$^§;
   import §!L§.§+"'§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##j§.§7,§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §%L§.§%%w§;
   import §%L§.§'$T§;
   import §&"c§.§5$n§;
   import §&#E§.§;2§;
   import §&#h§.*;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §,!f§.*;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §2#x§.*;
   import §2o§.§]#;§;
   import §3"@§.§##L§;
   import §3#T§.*;
   import §4!K§.§4%E§;
   import §4!K§.§>#_§;
   import §4!K§.§^%A§;
   import §4!x§.§@& §;
   import §4#2§.§,$8§;
   import §4$b§.§6!G§;
   import §4'§.§#"l§;
   import §6"'§.§9$Z§;
   import §6",§.§[%w§;
   import §6%2§.*;
   import §7!-§.MD5;
   import §7!B§.§&"T§;
   import §7$1§.§;#&§;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§2& §;
   import §7$t§.§=?§;
   import §8!Y§.§`#Q§;
   import §8#<§.§!#^§;
   import §8$Z§.*;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §>!_§.§'!&§;
   import §>"l§.§#!Y§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!i§.*;
   import §@$f§.PromoRaidWindow;
   import §@<§.§+%]§;
   import §["3§.CraftEquipInfoHint;
   import §[%'§.§<"G§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^!]§.MineSetUpEvent;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.GetPromocodeBonus;
   import ru.pragmatix.wormix.messages.server.GetPromocodeBonusResult;
   import ru.pragmatix.wormix.messages.server.GetRatingResult;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.messages.structures.RatingProfileStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§]V§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §5%C§ implements §1"$§
   {
      
      private static var instance:§5%C§;
      
      private static var button:§?%>§;
      
      private static const §`$>§:Array = [{
         "from":new Date(2016,0,1),
         "to":new Date(2016,10,31)
      }];
      
      private static const §6%f§:int = 1000 * 60;
      
      private static var §^&$§:Object = null;
      
      public function §5%C§()
      {
         super();
         Application.instance.addEventListener(Event.INIT,this.onInit);
      }
      
      public static function getInstance() : §5%C§
      {
         if(!instance)
         {
            instance = new §5%C§();
         }
         return instance;
      }
      
      public static function §&$]§() : Boolean
      {
         return !§]V§.§ $l§(Race.ALIEN.getId(),Application.userProfile);
      }
      
      public static function §3%L§() : Boolean
      {
         var _loc1_:Date = null;
         if(§^&$§)
         {
            _loc1_ = Cookie.getValue(§4&1§(),null) as Date;
            return !_loc1_;
         }
         return false;
      }
      
      public static function §[$2§() : void
      {
         Cookie.setValue(§4&1§(),new Date());
      }
      
      private static function §4&1§() : String
      {
         return "wormix.times.raidFreeToPlayShowedDate_" + Application.userProfile.getId().toString();
      }
      
      public static function §3%s§() : Date
      {
         return §^&$§.to;
      }
      
      public static function §5%#§() : §@& §
      {
         return new PromoRaidWindow();
      }
      
      public static function §-!T§() : Boolean
      {
         return §^&$§ != null;
      }
      
      public static function §?&F§() : void
      {
         navigateToURL(new URLRequest("http://store.steampowered.com/app/511800"),"_blank");
      }
      
      private function onInit(param1:Event) : void
      {
         Application.instance.removeEventListener(Event.INIT,this.onInit);
         this.§=">§();
      }
      
      private function §=">§() : void
      {
         if(instance)
         {
            this.§]!w§();
         }
         §1%"§.delay(this.§=">§,this,§6%f§);
      }
      
      private function §]!w§() : void
      {
         §^&$§ = this.§9,§();
         if(§^&$§)
         {
            instance.§0!@§();
         }
         if(button)
         {
            button.setVisible(§^&$§ != null);
            §;2§.align();
         }
      }
      
      public function §0!@§() : void
      {
         if(!button)
         {
            button = §;2§.§7#[§(§+"'§.§`$L§,§0$N§.§<N§("RAID_FREE_TO_PLAY_BTN"),this.§[F§);
         }
      }
      
      public function §[F§(param1:MouseEvent) : void
      {
         §5%#§().show();
      }
      
      private function §9,§() : Object
      {
         var _loc2_:Object = null;
         var _loc1_:uint = §0#2§.§@&6§();
         for each(_loc2_ in §`$>§)
         {
            if(_loc2_.from.getTime() / 1000 < _loc1_ && _loc1_ < _loc2_.to.getTime() / 1000)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}


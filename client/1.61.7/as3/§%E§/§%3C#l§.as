package §%E§
{
   import § $q§.§-%f§;
   import §!$D§.§2$^§;
   import §#P§.§`o§;
   import §&!m§.§-$6§;
   import §&#E§.§;"v§;
   import §'!Z§.§1"-§;
   import §0%[§.Cookie;
   import §2#H§.§#$A§;
   import §3%J§.§;&<§;
   import §4!x§.§@& §;
   import §4#2§.§,%g§;
   import §6",§.§[%w§;
   import §7"Q§.§0$L§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#[§.§?"&§;
   import §`%&§.§@&,§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.server.GetFriendsForMissionResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §<#l§
   {
      
      private static var §'&§:§@& §;
      
      private static const COOKIE_NAME_STARTER_BUNDLE_LAST_SHOWN_TIME:String = "COOKIE_NAME_STARTER_BUNDLE_LAST_SHOWN_TIME";
      
      public static const §7"&§:Boolean = true;
      
      public static const §[#+§:int = 10;
      
      private static var §!$p§:int = 0;
      
      public function §<#l§()
      {
         super();
      }
      
      public static function §`$+§() : Boolean
      {
         §!$p§ = Cookie.§<`§(COOKIE_NAME_STARTER_BUNDLE_LAST_SHOWN_TIME,0);
         return Application.userProfile.getLevel() >= §[#+§ && !§2$^§.isVipExist() && (§!$p§ == 0 || !§0#2§.§&%Z§(§!$p§));
      }
      
      public static function §`"J§() : §@& §
      {
         if(!§'&§)
         {
            §'&§ = new §;&<§();
            §'&§.addEventListener(§[%w§.WINDOW_CLOSE,§0"2§);
         }
         return §'&§;
      }
      
      private static function §0"2§(param1:Event) : void
      {
         §!$p§ = §0#2§.§@&6§();
         Cookie.setValue(COOKIE_NAME_STARTER_BUNDLE_LAST_SHOWN_TIME,§!$p§);
      }
   }
}


package ru.pragmatix.wormix.gui.window
{
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&&6§.*;
   import §+$=§.§6#A§;
   import §+%Q§.§#%9§;
   import §,!f§.*;
   import §,#c§.ArenaMenu;
   import §-"N§.*;
   import §-%B§.*;
   import §0%[§.§%"'§;
   import §0%[§.Cookie;
   import §0%j§.§0$+§;
   import §1#p§.*;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5"J§.*;
   import §5%S§.§>&-§;
   import §7$t§.§=?§;
   import §8#`§.§#%r§;
   import §<%k§.§`!v§;
   import §>$q§.§4#;§;
   import §@<§.§+%]§;
   import config.achievements.§!$L§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextFormat;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§ M§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§#$K§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   use namespace gestouch_internal;
   
   public class §[&G§
   {
      
      public static const §3$5§:§2[§ = §=Q§(§+"'§.§%%?§,{
         "text":§0$N§.SAVING,
         "descr":""
      });
      
      public static const §8"&§:§2[§ = §=Q§(§+"'§.§%%?§,{
         "text":§0$N§.LOADING,
         "descr":""
      });
      
      public static const §-"I§:§2[§ = §=Q§(§+"'§.§%%?§,{
         "text":§0$N§.LOADING,
         "descr":§0$N§.WAITING_DATA
      });
      
      private static const §9$P§:§2[§ = §=Q§(§+"'§.§%%?§,{
         "text":§0$N§.LOADING,
         "descr":§0$N§.BATTLE_PVP_CONNECT
      });
      
      public static const ENEMY_WAITING_MSG:§2[§ = §=Q§(§+"'§.§%%?§,{
         "text":§0$N§.ENEMY_WAITING_MSG,
         "descr":§0$N§.BATTLE_ENEMY_DATA_LOAD
      });
      
      public static const §7&A§:§2[§ = §=Q§("UploadVideo",{
         "title":§0$N§.VIDEO_SAVING_TITLE,
         "desc":§0$N§.VIDEO_SAVING_DESC
      },false);
      
      public static const §8r§:§ M§ = §-"1§(§+"'§.§>$b§,{"text":§0$N§.WAITING_DATA});
      
      public static const §;%b§:§ M§ = §-"1§(§+"'§.§>$b§,{"text":§0$N§.SWITCHING_TURN});
      
      public static const §>#"§:§ M§ = §-"1§(§+"'§.§>$b§,{"text":§0$N§.WAITING_STABLE_SCENE});
      
      public function §[&G§()
      {
         super();
      }
      
      private static function §-"1§(param1:String, param2:Object) : § M§
      {
         var _loc3_:MovieClip = null;
         _loc3_ = §6#A§.§!&6§(param1);
         var _loc4_:§ M§ = new § M§(_loc3_,param2);
         _loc3_.mouseChildren = _loc3_.mouseEnabled = false;
         return _loc4_;
      }
      
      private static function §=Q§(param1:String, param2:Object, param3:Boolean = true) : §2[§
      {
         return new §2[§(§6#A§.§!&6§(param1),param2,param3);
      }
      
      public static function §5%b§(param1:String) : void
      {
         §9$P§.§3#1§("descr",param1);
         if(!§9$P§.isShown())
         {
            §9$P§.show();
         }
      }
      
      public static function §]$+§() : void
      {
         if(§9$P§.isShown())
         {
            §9$P§.hide();
         }
      }
   }
}


package §-@§
{
   import § !P§.§9%Z§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §#!5§.§>S§;
   import §#",§.§+!h§;
   import §#"V§.§!&5§;
   import §#5§.§!&"§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §%L§.§'$T§;
   import §&"c§.§!!q§;
   import §&#E§.§;"v§;
   import §&#h§.*;
   import §&&6§.*;
   import §'!Z§.§2!H§;
   import §+$=§.§6#A§;
   import §+%S§.§"$7§;
   import §+%S§.§;!4§;
   import §+%S§.§@x§;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.UpgradeEvent;
   import §1!J§.§"t§;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §2B§.§#&E§;
   import §3"_§.*;
   import §3#a§.§-#M§;
   import §4%_§.§6#W§;
   import §5#`§.§7%g§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §7$1§.§;$n§;
   import §7$t§.§;#_§;
   import §7$t§.§^%%§;
   import §8$Z§.*;
   import §<!W§.*;
   import §<"?§.§6!8§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §<K§.*;
   import §>!_§.§'!&§;
   import §?$7§.§6&'§;
   import §?$K§.§3#j§;
   import §?$L§.§&$9§;
   import §@!N§.*;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§8%6§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[%§.Boar;
   import §]^§.§-$T§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.achievements.§!$L§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.display.StageQuality;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Matrix;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.gui.menu.rating.*;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.ColiseumError;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.messages.structures.UnitDeathV2;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.bank.CountryCodeNames;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=#,§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§,$n§;
   
   public class §+"A§
   {
      
      private static var §`!]§:§-$T§;
      
      private static var §2$w§:UserProfile;
      
      private static var §<#N§:§&`§ = new §&`§(§+"A§);
      
      public function §+"A§()
      {
         super();
      }
      
      public static function §5%§() : void
      {
         §`!]§ = null;
      }
      
      public static function §6!A§() : Boolean
      {
         return §`!]§ != null;
      }
      
      public static function §?!g§() : void
      {
         §;#q§(§`!]§,§2$w§);
      }
      
      public static function §;#q§(param1:§-$T§, param2:UserProfile = null) : void
      {
         §`!]§ = param1;
         §2$w§ = param2;
         var _loc3_:Class = param1.getClass();
         var _loc4_:§6!8§ = new _loc3_();
         §"t§.§+%R§(_loc4_.getResources(),§0"+§,§82§);
      }
      
      private static function §0"+§() : void
      {
         var _loc1_:§["h§ = null;
         §[&G§.§]$+§();
         if(§6&'§.getInstance().contains(§`!]§.getId()))
         {
            §8"%§.§?!W§.§'!p§(§`!]§);
         }
         else if(§2$w§ == null)
         {
            _loc1_ = new §["h§(new <int>[§`!]§.getId()],§@Y§,§,>§);
            _loc1_.show();
         }
         else
         {
            §@Y§(§2$w§);
         }
      }
      
      private static function §82§() : void
      {
         §[&G§.§]$+§();
         §,#W§.§6!P§(§0$N§.TITLE_ERROR_LOAD_RES,§0$N§.MSG_ERROR_LOAD_ROOM_RES);
         §<#N§.§3"l§("Error on boss resources load!");
      }
      
      private static function §@Y§(param1:UserProfile) : void
      {
         §8"%§.§?!W§.§]q§(param1,§`!]§.getId());
      }
      
      private static function §,>§(param1:Vector.<int>) : void
      {
         §8"%§.§?!W§.§;D§(param1[0]);
      }
   }
}


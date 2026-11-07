package §-@§
{
   import §!$d§.§<$c§;
   import §!L§.§`#p§;
   import §"#]§.§,#F§;
   import §"$+§.§,!<§;
   import §#$e§.§!a§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#h§.§5f§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §-G§.*;
   import §0%"§.§[!^§;
   import §0%[§.§%"'§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1!J§.§"t§;
   import §1&-§.§4!s§;
   import §2"L§.§,'§;
   import §2#H§.§?#S§;
   import §3%J§.BuyBattleTokensDialog;
   import §4!!§.§'$V§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §7$t§.§&!e§;
   import §7$t§.§[!X§;
   import §9"-§.§?!s§;
   import §<"?§.§3>§;
   import §<"?§.§6!8§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!C§.§0#"§;
   import §=!C§.§;#M§;
   import §=!p§.§1%?§;
   import §=!p§.§7#E§;
   import §=!p§.§9#n§;
   import §=#g§.*;
   import §=&!§.§<$Z§;
   import §=1§.*;
   import §>!_§.§'#m§;
   import §>"w§.§#$L§;
   import §>"w§.§&%0§;
   import §>"w§.§`#Z§;
   import §>%S§.§^!V§;
   import §?"[§.*;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`"p§.*;
   import com.adobe.serialization.json.JSONDecoder;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.motionPaths.PathFollower;
   import com.greensock.plugins.*;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import org.gestouch.gestures.Gesture;
   import ru.inspirit.net.MultipartURLLoader;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.server.GetAchievementsResult;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.utils.§>!n§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §6&3§
   {
      
      private static var §2$w§:UserProfile;
      
      private static var §<#N§:§&`§ = new §&`§(§+"A§);
      
      public function §6&3§()
      {
         super();
      }
      
      public static function clear() : void
      {
      }
      
      public static function §6!A§() : Boolean
      {
         return §2$w§ != null;
      }
      
      public static function §?!g§() : void
      {
         §?$#§(§2$w§);
      }
      
      public static function play() : void
      {
         var _loc1_:Function = null;
         if(§8"%§.§[%h§.§`t§() >= Application.userProfile.§7$F§().length)
         {
            §?$#§(§8"%§.§%w§.§["x§);
         }
         else
         {
            _loc1_ = §8"%§.§%w§.getArenaMenu().getTabPanel().showAvailableBattlesCount;
            new BuyBattleTokensDialog(_loc1_).show();
         }
      }
      
      public static function §?$#§(param1:UserProfile = null) : void
      {
         §2$w§ = param1;
         var _loc2_:§6!8§ = new §3>§();
         §"t§.§+%R§(_loc2_.getResources(),startBattle,§0%e§);
      }
      
      private static function startBattle() : void
      {
         var _loc1_:§,#F§ = null;
         §[&G§.§]$+§();
         if(§2$w§ == null)
         {
            _loc1_ = new §,#F§(§@Y§,§,>§);
            _loc1_.show();
         }
         else
         {
            §@Y§(§2$w§);
         }
      }
      
      private static function §0%e§() : void
      {
         §[&G§.§]$+§();
         §,#W§.§6!P§(§0$N§.TITLE_ERROR_LOAD_RES,§0$N§.MSG_ERROR_LOAD_ROOM_RES);
         §<#N§.§3"l§("Error on boss resources load!");
      }
      
      private static function §@Y§(param1:UserProfile) : void
      {
         §8"%§.§?!W§.§3#R§(param1);
      }
      
      private static function §,>§() : void
      {
         §8"%§.§?!W§.§1%§();
      }
   }
}


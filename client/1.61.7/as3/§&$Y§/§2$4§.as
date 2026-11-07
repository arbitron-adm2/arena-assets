package §&$Y§
{
   import § !P§.*;
   import § #m§.§;#^§;
   import § &5§.§=#P§;
   import § K§.§+2§;
   import § K§.§2""§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"!C§.§2v§;
   import §"#x§.§'"$§;
   import §"$+§.§`&$§;
   import §"%H§.§1! §;
   import §#"V§.§!&5§;
   import §#"V§.§<"4§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%"Z§.§2"B§;
   import §%L§.§'$T§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#U§.§'#w§;
   import §+$=§.*;
   import §+%S§.§%!%§;
   import §+%S§.§%#j§;
   import §,!f§.*;
   import §,#c§.ArenaMenu;
   import §-!U§.§&%j§;
   import §-%B§.*;
   import §-@§.§6&3§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§>&&§;
   import §0%[§.Cookie;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1!J§.§"t§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2!-§.NewUnitEvent;
   import §2!-§.WaterLevelChangedEvent;
   import §2!0§.§<i§;
   import §2#H§.§"j§;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §2B§.§#&E§;
   import §3#T§.§5!M§;
   import §3#a§.§-#M§;
   import §3%J§.BuyBattleTokensDialog;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5"J§.*;
   import §5%S§.§>&-§;
   import §6%2§.*;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §7$t§.§=?§;
   import §8$V§.*;
   import §9%W§.§&!P§;
   import §;!J§.*;
   import §;&2§.§!#W§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!C§.§0"l§;
   import §=!p§.§'%#§;
   import §=!p§.§1e§;
   import §="z§.§9%1§;
   import §=&!§.§]$d§;
   import §>$q§.§4#;§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@"s§.§#&3§;
   import §@"s§.§]!>§;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §["3§.*;
   import §]$v§.§1>§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^§.*;
   import §`"p§.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import config.§=%A§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   import vk.*;
   
   use namespace gestouch_internal;
   
   public class §2$4§ implements §+2§
   {
      
      private static const §0#y§:Object = {
         "vkontakte":[§2"B§.RU,§2"B§.EN,§2"B§.UA],
         "facebook":[§2"B§.EN,§2"B§.PL,§2"B§.ES,§2"B§.§"%#§,§2"B§.TR,§2"B§.RU,§2"B§.UA],
         "odnoklassniki":[§2"B§.RU,§2"B§.UA],
         "mailru":[§2"B§.RU],
         "none":[§2"B§.RU,§2"B§.EN]
      };
      
      protected var controller:§1#+§;
      
      public function §2$4§(param1:§1#+§)
      {
         super();
         this.controller = param1;
      }
      
      public function § $i§() : String
      {
         return "";
      }
      
      public function §!"?§() : String
      {
         return "";
      }
      
      public function §-"U§() : String
      {
         return "";
      }
      
      public function §2!8§() : String
      {
         return "";
      }
      
      public function §&"J§(param1:§2"B§) : String
      {
         var _loc2_:String = null;
         _loc2_ = "(C) 2009 - {now} Pragmatix";
         return §0%§.format(_loc2_,{"now":new Date().getFullYear()});
      }
      
      public function §5$a§() : Boolean
      {
         return false;
      }
      
      public function §##i§() : Array
      {
         return §0#y§[this.controller.getType().name];
      }
      
      public function §@"G§() : §2"B§
      {
         return this.controller.§""C§(this.§##i§());
      }
      
      public function §7%N§() : Boolean
      {
         return true;
      }
      
      public function §1"@§() : Boolean
      {
         return false;
      }
      
      public function §"!5§() : Boolean
      {
         return true;
      }
      
      public function §8!?§() : Boolean
      {
         return false;
      }
      
      public function §2%$§() : uint
      {
         return 1920;
      }
      
      public function §;`§() : uint
      {
         return 1080;
      }
      
      public function §<#G§() : Boolean
      {
         return true;
      }
      
      public function §#$I§() : Date
      {
         return new Date(2013,7);
      }
      
      public function §7#-§(param1:§<#&§ = null) : §2""§
      {
         return §<i§.create(this.controller,param1);
      }
      
      public function §9!@§() : Date
      {
         return null;
      }
      
      public function §2$@§() : Boolean
      {
         return true;
      }
      
      public function §>Y§() : String
      {
         return "";
      }
      
      public function §0$3§() : String
      {
         return "";
      }
      
      public function §@%"§(param1:String) : String
      {
         return "";
      }
      
      public function §%#7§() : Boolean
      {
         return false;
      }
      
      public function § "A§() : Boolean
      {
         return false;
      }
      
      public function §]"A§() : Boolean
      {
         return false;
      }
      
      public function §"#k§() : Boolean
      {
         return false;
      }
   }
}


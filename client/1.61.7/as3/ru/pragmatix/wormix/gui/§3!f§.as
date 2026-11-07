package ru.pragmatix.wormix.gui
{
   import § !8§.§`!d§;
   import §!L§.§`#p§;
   import §"!C§.§3#n§;
   import §"$+§.§@C§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#k§.§9$v§;
   import §%"Z§.§+$A§;
   import §&"c§.§!!q§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+&<§.*;
   import §-!U§.*;
   import §-%B§.§-"o§;
   import §0"L§.*;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%[§.§]2§;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §2!-§.§'5§;
   import §2!-§.DamageEvent;
   import §2!-§.UnitKilledEvent;
   import §3"_§.*;
   import §3%J§.BuyBattleTokensDialog;
   import §4%_§.ZombieGrave;
   import §4&F§.*;
   import §4'§.§`"q§;
   import §4^§.§'!u§;
   import §4u§.§9!]§;
   import §5%S§.§>&-§;
   import §7!-§.MD5;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§[!X§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8$V§.*;
   import §9%W§.§&!P§;
   import §<"L§.*;
   import §<%E§.§6$=§;
   import §<%k§.§`!v§;
   import §=;§.§>%>§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$7§.§8"e§;
   import §?$K§.§@$J§;
   import §?>§.§0!7§;
   import §@!N§.§&#Z§;
   import §@!i§.§!m§;
   import §@!i§.§'#E§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import api.com.odnoklassniki.Odnoklassniki;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import com.greensock.core.TweenCore;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.ui.Keyboard;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.GetFriendListPageResult;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.BarriersLauncher;
   import ru.pragmatix.wormix.weapons.Bazooka;
   import ru.pragmatix.wormix.weapons.BlowTorch;
   import ru.pragmatix.wormix.weapons.BoomerangWeapon;
   import ru.pragmatix.wormix.weapons.Cannon;
   import ru.pragmatix.wormix.weapons.CarpetBazooka;
   import ru.pragmatix.wormix.weapons.CircusCannon;
   import ru.pragmatix.wormix.weapons.ClusterGrenade;
   import ru.pragmatix.wormix.weapons.Crossbow;
   import ru.pragmatix.wormix.weapons.DiscLauncher;
   import ru.pragmatix.wormix.weapons.DrillGun;
   import ru.pragmatix.wormix.weapons.ElectricHarpoon;
   import ru.pragmatix.wormix.weapons.FireThrower;
   import ru.pragmatix.wormix.weapons.Firework;
   import ru.pragmatix.wormix.weapons.FreezingBazooka;
   import ru.pragmatix.wormix.weapons.Girder;
   import ru.pragmatix.wormix.weapons.Grenade;
   import ru.pragmatix.wormix.weapons.GroundBreaker;
   import ru.pragmatix.wormix.weapons.Helipad;
   import ru.pragmatix.wormix.weapons.HolyGrenade;
   import ru.pragmatix.wormix.weapons.HomingBazooka;
   import ru.pragmatix.wormix.weapons.HoppingWeapon;
   import ru.pragmatix.wormix.weapons.Jetpack;
   import ru.pragmatix.wormix.weapons.Kalash;
   import ru.pragmatix.wormix.weapons.Minigun;
   import ru.pragmatix.wormix.weapons.Molotov;
   import ru.pragmatix.wormix.weapons.Mortar;
   import ru.pragmatix.wormix.weapons.Rifle;
   import ru.pragmatix.wormix.weapons.RopeGun;
   import ru.pragmatix.wormix.weapons.SheepWeapon;
   import ru.pragmatix.wormix.weapons.Shotgun;
   import ru.pragmatix.wormix.weapons.ShurikenToss;
   import ru.pragmatix.wormix.weapons.SniperRifle;
   import ru.pragmatix.wormix.weapons.StickyGrenade;
   import ru.pragmatix.wormix.weapons.SuperSheepWeapon;
   import ru.pragmatix.wormix.weapons.SwitchTurn;
   import ru.pragmatix.wormix.weapons.TeleThrower;
   import ru.pragmatix.wormix.weapons.Teleport;
   import ru.pragmatix.wormix.weapons.UfoPad;
   import ru.pragmatix.wormix.weapons.Uzi;
   import ru.pragmatix.wormix.weapons.WatermelonWeapon;
   
   public class §3!f§
   {
      
      public static const §6!T§:uint = §]2§.E;
      
      public static const §&&I§:uint = §]2§.E;
      
      public static const BAG_OPEN_1:uint = §]2§.Q;
      
      public static const BAG_OPEN_2:uint = §]2§.I;
      
      public static const BAG_OPEN_3:uint = Keyboard.NUMPAD_0;
      
      public static const BAG_OPEN_COL_1:uint = §]2§._1;
      
      public static const BAG_OPEN_COL_2:uint = §]2§._2;
      
      public static const BAG_OPEN_COL_3:uint = §]2§._3;
      
      public static const BAG_OPEN_COL_4:uint = §]2§._4;
      
      public static const BAG_OPEN_COL_5:uint = §]2§._5;
      
      public static const BAG_OPEN_COL_6:uint = §]2§._6;
      
      public static const BAG_OPEN_COL_7:uint = §]2§._7;
      
      public static const BAG_OPEN_COL_8:uint = §]2§._8;
      
      public static const BAG_OPEN_COL_9:uint = §]2§._9;
      
      public static const §`%K§:uint = §]2§.§"+§;
      
      public static const §7%X§:uint = §]2§.§&%@§;
      
      public static const §?%,§:uint = §]2§.§[%%§;
      
      public static const §]%Y§:uint = Keyboard.NUMPAD_ADD;
      
      public static const §?&3§:uint = Keyboard.NUMPAD_SUBTRACT;
      
      public static const §="K§:uint = Keyboard.SLASH;
      
      public static const §,!u§:uint = Keyboard.BACKSLASH;
      
      public static const §1-§:uint = Keyboard.NUMPAD_MULTIPLY;
      
      public static const §#$o§:uint = §]2§.V;
      
      public static const PHOTO:uint = §]2§.P;
      
      public static const §`#E§:uint = §]2§.Q;
      
      public static const §`$_§:uint = §]2§.F;
      
      public static const §>%E§:uint = §]2§.L;
      
      public static const §8H§:uint = §]2§.M;
      
      public static const §"&E§:uint = §]2§.S;
      
      public static const §@!e§:uint = §]2§.D;
      
      public static const §"$>§:uint = §]2§.Z;
      
      public static const UP:uint = §]2§.W;
      
      public static const LEFT:uint = §]2§.A;
      
      public static const DOWN:uint = §]2§.S;
      
      public static const RIGHT:uint = §]2§.D;
      
      public static const § "g§:uint = §]2§.F;
      
      public static const §]8§:uint = §]2§.R;
      
      public static const §7!8§:uint = §]2§.X;
      
      public static const §>%3§:Vector.<uint> = new <uint>[UP,LEFT,DOWN,RIGHT];
      
      public static const §?%i§:Vector.<uint> = new <uint>[§ "g§,§]8§];
      
      §§push(§§findproperty(§%"4§));
      
      public static const §%"4§:Vector.<uint> = new <uint>[Keyboard.ENTER,Keyboard.BACKSPACE];
      
      public static const §4"=§:Vector.<uint> = new <uint>[§6!T§,§&&I§];
      
      public function §3!f§()
      {
         super();
      }
      
      public static function §-!t§(param1:uint) : Boolean
      {
         var _loc2_:int = 0;
         for each(_loc2_ in §>%3§)
         {
            if(_loc2_ == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §%!5§(param1:uint) : Boolean
      {
         var _loc2_:int = 0;
         for each(_loc2_ in §?%i§)
         {
            if(_loc2_ == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §[G§(param1:uint) : Boolean
      {
         var _loc2_:int = 0;
         for each(_loc2_ in §%"4§)
         {
            if(_loc2_ == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §'#i§(param1:uint) : Boolean
      {
         var _loc2_:int = 0;
         for each(_loc2_ in §4"=§)
         {
            if(_loc2_ == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §,%`§(param1:uint) : Boolean
      {
         return param1 == BAG_OPEN_1;
      }
      
      public static function §["k§(param1:uint) : Boolean
      {
         return param1 == BAG_OPEN_2;
      }
      
      public static function § "m§(param1:uint) : Boolean
      {
         return param1 == BAG_OPEN_3;
      }
      
      public static function §&%I§(param1:uint) : Boolean
      {
         return param1 >= Keyboard.NUMPAD_1 && param1 <= Keyboard.NUMPAD_9;
      }
      
      public static function §7$5§(param1:uint) : Boolean
      {
         return §-!t§(param1) || §%!5§(param1) || §[G§(param1) || §'#i§(param1) || §,%`§(param1) || §["k§(param1) || § "m§(param1) || §&%I§(param1);
      }
      
      public static function §]T§(param1:uint) : Boolean
      {
         var _loc2_:§'#E§ = §8"%§.§&S§;
         if(§-!t§(param1) && _loc2_.§5#6§() || §%!5§(param1) && _loc2_.§[!+§() || §[G§(param1) && _loc2_.§ $_§() || §'#i§(param1) && _loc2_.§ p§() || §,%`§(param1) && _loc2_.§[!T§() || §["k§(param1) && _loc2_.§!%!§() || § "m§(param1) && _loc2_.§1$O§() || §&%I§(param1) && _loc2_.§-&!§())
         {
            return false;
         }
         return true;
      }
   }
}


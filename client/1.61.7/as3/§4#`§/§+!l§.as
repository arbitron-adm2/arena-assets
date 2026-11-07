package §4#`§
{
   import § "d§.§,!c§;
   import § $q§.§3U§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&&6§.*;
   import §+$=§.§6#A§;
   import §,!f§.*;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-&5§.*;
   import §-@§.*;
   import §0!§.§6#z§;
   import §0"L§.§+# §;
   import §0%[§.§]2§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2!-§.HpChangeEvent;
   import §2#i§.§9##§;
   import §2B§.§#&E§;
   import §3#a§.§-!`§;
   import §4#2§.*;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§^%%§;
   import §<!W§.§;#A§;
   import §<%k§.§2§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!N§.§'+§;
   import §@!W§.§8!S§;
   import §@!i§.*;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §]^§.§3$f§;
   import §]^§.§4&+§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`%&§.§`§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.Font;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import org.gestouch.core.*;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§ %`§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.client.GetRating;
   import ru.pragmatix.wormix.messages.client.SetHotkeys;
   import ru.pragmatix.wormix.messages.server.BuySelectRaceResponse;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.GetRatingResult;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FacebookBankController;
   import ru.pragmatix.wormix.utils.*;
   
   use namespace gestouch_internal;
   
   public class §+!l§
   {
      
      public static const §'!#§:Array = [§]2§.Z,§]2§.X,§]2§.C,§]2§.V,§]2§.B,§]2§.N,§]2§.M,Keyboard.NUMPAD_1,Keyboard.NUMPAD_2,Keyboard.NUMPAD_3,Keyboard.NUMPAD_4,Keyboard.NUMPAD_5,Keyboard.NUMPAD_6,Keyboard.NUMPAD_7,Keyboard.NUMPAD_8,Keyboard.NUMPAD_9,Keyboard.NUMBER_1,Keyboard.NUMBER_2,Keyboard.NUMBER_3,Keyboard.NUMBER_4,Keyboard.NUMBER_5,Keyboard.NUMBER_6,Keyboard.NUMBER_7,Keyboard.NUMBER_8,Keyboard.NUMBER_9,Keyboard.NUMBER_0,§]2§.Q,§]2§.W,§]2§.E,§]2§.R,§]2§.T,§]2§.Y,§]2§.U,§]2§.I,§]2§.O,§]2§.P,§]2§.A,§]2§.S,§]2§.D,§]2§.F,§]2§.G,§]2§.H,§]2§.J,§]2§.K,§]2§.L,Keyboard.NUMPAD_0,Keyboard.COMMA,Keyboard.PERIOD,Keyboard.SLASH,Keyboard.SEMICOLON,Keyboard.QUOTE,Keyboard.LEFTBRACKET,Keyboard.RIGHTBRACKET,Keyboard.BACKSLASH];
      
      public static const §>#l§:Array = ["Z","X","C","V","B","N","M","N1","N2","N3","N4","N5","N6","N7","N8","N9","1","2","3","4","5","6","7","8","9","0","Q","W","E","R","T","Y","U","I","O","P","A","S","D","F","G","H","J","K","L","N0",",",".","/",";","\'","{","}","\\"];
      
      private static const §2&<§:Array = [-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1];
      
      private static var §0!!§:Boolean = false;
      
      public function §+!l§()
      {
         super();
      }
      
      public static function init(param1:Array) : void
      {
         var _loc2_:uint = Math.min(§2&<§.length,param1.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            §2&<§[_loc3_] = param1[_loc3_];
            _loc3_++;
         }
      }
      
      public static function §@$[§(param1:uint, param2:uint) : Boolean
      {
         var _loc4_:int = 0;
         var _loc3_:int = §'!#§.indexOf(param1);
         if(_loc3_ != -1)
         {
            _loc4_ = §2&<§.indexOf(param2);
            if(_loc4_ != -1)
            {
               §2&<§[_loc4_] = -1;
            }
            §2&<§[_loc3_] = param2;
            §0!!§ = true;
         }
         return _loc3_ != -1;
      }
      
      public static function §44§(param1:uint) : void
      {
         var _loc2_:int = §'!#§.indexOf(param1);
         if(_loc2_ != -1)
         {
            §2&<§[_loc2_] = -1;
            §0!!§ = true;
         }
      }
      
      public static function §-%<§(param1:uint) : int
      {
         var _loc2_:int = §'!#§.indexOf(param1);
         return _loc2_ != -1 ? int(§2&<§[_loc2_]) : -1;
      }
      
      public static function §5w§(param1:uint) : int
      {
         var _loc2_:int = §0$G§(param1);
         return _loc2_ != -1 ? int(§'!#§[_loc2_]) : -1;
      }
      
      public static function §0$G§(param1:uint) : int
      {
         return §2&<§.indexOf(param1);
      }
      
      public static function §7#§() : void
      {
         if(§0!!§)
         {
            §%%w§.§7F§.send(new SetHotkeys(§2&<§));
            §0!!§ = false;
         }
      }
   }
}


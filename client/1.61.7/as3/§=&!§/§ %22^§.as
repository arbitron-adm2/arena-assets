package §=&!§
{
   import § !8§.§`!d§;
   import § #m§.§[&H§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"%H§.§'%u§;
   import §#",§.§+!h§;
   import §#"V§.*;
   import §##y§.CollisionEvent;
   import §#%!§.§^%c§;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §%L§.§%%w§;
   import §&!@§.§5"`§;
   import §&"c§.§5$n§;
   import §&#E§.§4##§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§>!I§;
   import §-%B§.*;
   import §-&5§.*;
   import §-@§.§0"e§;
   import §0!Y§.*;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1!#§.§-e§;
   import §2"L§.§^$y§;
   import §2#s§.*;
   import §3#T§.§]!6§;
   import §3#a§.§-#M§;
   import §4u§.§[%u§;
   import §5#`§.§7%g§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §8#o§.§1@§;
   import §9%W§.§`"y§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §="z§.§-O§;
   import §="z§.§9%1§;
   import §=$#§.§1!$§;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §@!N§.*;
   import §@!i§.§!m§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@!i§.§8%6§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[$<§.§>!u§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageQuality;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ArenaLocked;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.server.StartBattleResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.UnitDeathV2;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   
   public class § "^§
   {
      
      private static const list:Vector.<§ "^§> = new Vector.<§ "^§>(0);
      
      public static const RANDOM_MAP:§ "^§ = new § "^§(0,"randomMap");
      
      public static const MIRROR_MAP:§ "^§ = new § "^§(1,"mirrorMap");
      
      public static const §6!R§:§ "^§ = new § "^§(2,"randomWeapons");
      
      public static const §?#@§:§ "^§ = new § "^§(3,"weaponCooldowns");
      
      public static const §?&?§:§ "^§ = new § "^§(4,"clanBanners");
      
      public static const THROWING_PROTECTIONS:§ "^§ = new § "^§(5,"unitProtections");
      
      public static const DAMAGE_ZONE:§ "^§ = new § "^§(6,"damageZone");
      
      private var §9!4§:int;
      
      private var §4"4§:String;
      
      public function § "^§(param1:int, param2:String)
      {
         super();
         this.§9!4§ = param1;
         this.§4"4§ = param2;
         list.push(this);
      }
      
      public static function §?%e§(param1:int) : § "^§
      {
         if(param1 > -1 && param1 < list.length)
         {
            return list[param1];
         }
         return null;
      }
      
      public static function getValue(param1:String, param2:§ "^§) : Boolean
      {
         return §4"R§(param1,param2.id);
      }
      
      public static function §4"R§(param1:String, param2:int) : Boolean
      {
         return param2 > -1 && param2 < param1.length ? param1.charAt(param2) == "1" : false;
      }
      
      public static function §4#8§(param1:String, param2:§ "^§, param3:Boolean) : String
      {
         return § #h§(param1,param2.id,param3);
      }
      
      public static function § #h§(param1:String, param2:int, param3:Boolean) : String
      {
         if(param2 > -1 && param2 < param1.length)
         {
            return param1.substr(0,param2).concat(param3 ? "1" : "0").concat(param1.substr(param2 + 1,param1.length - 1));
         }
         return param1;
      }
      
      public static function §"&2§() : String
      {
         return §2"e§.§[%3§("","0",list.length);
      }
      
      public static function §#&$§() : Vector.<§ "^§>
      {
         return list;
      }
      
      public static function toString(param1:String) : String
      {
         var _loc2_:String = "{BattleOptions::len=" + param1.length;
         var _loc3_:int = 0;
         var _loc4_:int = param1.length;
         while(_loc3_ < _loc4_)
         {
            if(§4"R§(param1,_loc3_))
            {
               _loc2_ += "," + §?%e§(_loc3_).toString();
            }
            _loc3_++;
         }
         return _loc2_ + "}";
      }
      
      public function toString() : String
      {
         return "BattleOptions{" + "id=" + this.§9!4§ + ",name=" + this.§4"4§ + "}";
      }
      
      public function get id() : int
      {
         return this.§9!4§;
      }
      
      public function get name() : String
      {
         return this.§4"4§;
      }
   }
}


package ru.pragmatix.wormix.physics
{
   import § "d§.§,!c§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#%!§.§%&F§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §+%S§.§3$§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.NewUnitEvent;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §3#T§.§+&F§;
   import §3#a§.§-!`§;
   import §4!!§.§ %c§;
   import §4!!§.§!%n§;
   import §4!!§.§#Z§;
   import §4!!§.§2&F§;
   import §4!!§.§[%@§;
   import §9%W§.§!7§;
   import §<$q§.§,%3§;
   import §<%k§.§`!v§;
   import §=&!§.§&$a§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?%J§.*;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§=$,§;
   import §@<§.§+%]§;
   import §[!`§.§+%q§;
   import §^!"§.*;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`"x§.§-#z§;
   import §`"x§.SearchFriendMenu;
   import §`%&§.§8U§;
   import config.§5%T§;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FbRegisterMobilePayment;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §]%G§ extends EventDispatcher
   {
      
      public static const §="u§:String = "gravity";
      
      public static const §5$r§:§]%G§ = new §]%G§(§="u§,Math.PI / new §&$2§(2).value,new §&$2§(1).value);
      
      public static const §0#m§:String = "wind";
      
      public static const §-4§:§]%G§ = new §]%G§(§0#m§,0,0);
      
      public static const §0U§:String = "jetpack_force";
      
      private static const §4"z§:§&$2§ = new §&$2§(0);
      
      public var name:String;
      
      private var §,%A§:Number;
      
      private var §9&>§:Number;
      
      private var §&"e§:Number;
      
      private var §#q§:Number;
      
      public function §]%G§(param1:String, param2:Number, param3:Number)
      {
         super();
         this.name = param1;
         this.§&"e§ = param2;
         this.§#q§ = param3;
         this.§,%A§ = Math.cos(param2) * param3;
         this.§9&>§ = Math.sin(param2) * param3;
      }
      
      public static function §!%7§(param1:int) : void
      {
         §4"z§.value = param1;
         §-4§.ax = param1 / 1000;
      }
      
      public static function §7#I§() : int
      {
         return §4"z§.value;
      }
      
      public function get ax() : Number
      {
         return this.§,%A§;
      }
      
      public function set ax(param1:Number) : void
      {
         this.§,%A§ = param1;
         dispatchEvent(new Event(§0%v§.FORCE_CHANGED));
      }
      
      public function get ay() : Number
      {
         return this.§9&>§;
      }
      
      public function set ay(param1:Number) : void
      {
         this.§9&>§ = param1;
         dispatchEvent(new Event(§0%v§.FORCE_CHANGED));
      }
      
      public function get angle() : Number
      {
         return this.§&"e§;
      }
      
      public function set angle(param1:Number) : void
      {
         this.§&"e§ = param1;
         dispatchEvent(new Event(§0%v§.FORCE_CHANGED));
      }
      
      public function get §'u§() : Number
      {
         return this.§#q§;
      }
      
      public function set §'u§(param1:Number) : void
      {
         this.§#q§ = param1;
         dispatchEvent(new Event(§0%v§.FORCE_CHANGED));
      }
   }
}


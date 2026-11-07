package ru.pragmatix.wormix.weapons.ammo
{
   import § %"§.§"%5§;
   import § &5§.§0&$§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §#%!§.§%&F§;
   import §#%!§.§^%c§;
   import §%"Z§.§'$2§;
   import §&#h§.§-"F§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §3"@§.§#$O§;
   import §3#a§.§[&A§;
   import §7$t§.§^$E§;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §`#x§.§"$r§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.structures.BackpackConfStructure;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §&!E§
   {
      
      public static const §1%!§:§&!E§ = new §&!E§(0,"pure");
      
      public static const §!?§:§&!E§ = new §&!E§(1,"physical");
      
      public static const FIRE:§&!E§ = new §&!E§(2,"fire");
      
      public static const COLD:§&!E§ = new §&!E§(3,"ice");
      
      public static const §=$-§:§&!E§ = new §&!E§(4,"shock");
      
      public static const POISON:§&!E§ = new §&!E§(5,"poison");
      
      public static const AIR:§&!E§ = new §&!E§(6,"air");
      
      public static const DRILL:§&!E§ = new §&!E§(7,"drill");
      
      public static const §0"&§:§&!E§ = new §&!E§(8,"chemical");
      
      private var §9!4§:int;
      
      private var _type:String;
      
      public function §&!E§(param1:int, param2:String)
      {
         super();
         this.§9!4§ = param1;
         this._type = param2;
      }
      
      public static function §"%7§() : Array
      {
         return [§1%!§,§!?§,FIRE,COLD,§=$-§,POISON,AIR,DRILL,§0"&§];
      }
      
      public static function §^!o§(param1:int) : §&!E§
      {
         var _loc2_:§&!E§ = null;
         for each(_loc2_ in §"%7§())
         {
            if(_loc2_.§9!4§ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getString() : String
      {
         return "DamageType{id=" + this.§9!4§ + ",type=" + this._type + "}";
      }
      
      public function toString() : String
      {
         return this._type;
      }
      
      public function § $J§() : String
      {
         return "INSTRUMENTAL_" + this._type.toLocaleUpperCase();
      }
      
      public function §="L§() : String
      {
         return §0$N§.§%! §(this.§ $J§());
      }
      
      public function get id() : int
      {
         return this.§9!4§;
      }
      
      public function get type() : String
      {
         return this._type;
      }
   }
}


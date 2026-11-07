package §@!i§
{
   import § &5§.§=#P§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"$+§.*;
   import §#"V§.§!&5§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §+%S§.§"$7§;
   import §0!Y§.§#!Z§;
   import §1#p§.§2=§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6#Z§.§&!Z§;
   import §7$t§.§&!e§;
   import §7$t§.§2& §;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§[!X§;
   import §8#a§.§@#c§;
   import §<%k§.§`!v§;
   import §=&!§.§4$z§;
   import §=&!§.§<$!§;
   import §=&!§.§<$Z§;
   import §?$L§.§&$9§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.InteractiveObject;
   import flash.events.Event;
   import flash.events.EventPhase;
   import flash.events.MouseEvent;
   import org.gestouch.core.gestouch_internal;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   use namespace gestouch_internal;
   
   public class §;%v§
   {
      
      private static var §7F§:§;%v§ = new §;%v§();
      
      public static const §-$C§:uint = 3;
      
      private static const §>!#§:uint = 1900;
      
      private static const §#!d§:uint = 1600;
      
      private static const §%]§:Number = 0.05;
      
      public static const §2C§:int = 100;
      
      public static const §=#`§:int = 5;
      
      private var rewards:Object = {};
      
      public function §;%v§()
      {
         super();
         this.rewards[§<$Z§.§+%I§.value] = {};
         this.rewards[§<$Z§.§+%I§.value][§<$!§.HARD.id] = new §!%,§(12,50);
         this.rewards[§<$Z§.§+%I§.value][§<$!§.MEDIUM.id] = new §!%,§(10,40);
         this.rewards[§<$Z§.§+%I§.value][§<$!§.EASY.id] = new §!%,§(8,30);
         this.rewards[§<$Z§.§7!i§.value] = {};
         this.rewards[§<$Z§.§7!i§.value][§<$!§.HARD.id] = new §!%,§(8,30);
         this.rewards[§<$Z§.§7!i§.value][§<$!§.MEDIUM.id] = new §!%,§(5,25);
         this.rewards[§<$Z§.§7!i§.value][§<$!§.EASY.id] = new §!%,§(4,20);
         this.rewards[§<$Z§.§!M§.value] = {};
         this.rewards[§<$Z§.§!M§.value][§<$!§.HARD.id] = new §!%,§(3,5);
         this.rewards[§<$Z§.§!M§.value][§<$!§.MEDIUM.id] = new §!%,§(3,5);
         this.rewards[§<$Z§.§!M§.value][§<$!§.EASY.id] = new §!%,§(3,5);
      }
      
      public static function getRating(param1:§<$Z§, param2:UserProfile, param3:§<#&§, param4:uint, param5:int) : int
      {
         var _loc6_:uint = uint(Application.userProfile.getLevel());
         var _loc7_:uint = Application.userProfile.getRating();
         var _loc8_:int = 0;
         if(param1 == §<$Z§.§!M§)
         {
            _loc8_ = -Math.min(_loc7_,Math.ceil(§+I§(_loc6_) * §+I§(_loc6_) / 4) + Math.floor((param4 - _loc6_) / 6));
            if(_loc7_ > 20000)
            {
               _loc8_ -= int((_loc7_ - 20000) / 200);
            }
         }
         else if(param1 == §<$Z§.§+%I§)
         {
            _loc8_ = 1 + Math.ceil(§+I§(_loc6_) * §+I§(_loc6_) / 3) + Math.floor((param4 - _loc6_) / 3);
            _loc8_ = Math.round((1 + param3.§#!n§) * _loc8_);
         }
         return _loc8_;
      }
      
      private static function §+I§(param1:uint) : uint
      {
         return Math.max(1,Math.floor(param1 / 3));
      }
      
      private static function §&"w§(param1:int) : Number
      {
         return Math.max(0.25,1 / (1 + Math.exp(param1 / 1000 - 5)));
      }
      
      private static function §,#g§(param1:int) : int
      {
         return param1 > §#!d§ ? int(§%]§ * (param1 - §#!d§)) : 0;
      }
      
      public static function §?2§(param1:§<$Z§, param2:§<#&§) : int
      {
         if(param1 == §<$Z§.§!M§)
         {
            return -param2.value;
         }
         if(param1 == §<$Z§.§+%I§)
         {
            return param2.award;
         }
         return 0;
      }
      
      public static function §!!d§(param1:§4$z§) : uint
      {
         return param1.§?#_§ / §&!Z§.§=%O§ * §&!Z§.§8%J§;
      }
      
      public static function §9%V§(param1:§<$Z§, param2:§<#&§, param3:uint) : int
      {
         return param1 == §<$Z§.§!M§ ? int(param2.§`!p§(Math.min(param3,§-$C§))) : 0;
      }
      
      public static function §%_§(param1:§4$z§) : uint
      {
         return §'&&§(param1.result,param1.§-!K§);
      }
      
      public static function §'&&§(param1:§<$Z§, param2:§<$!§) : uint
      {
         return §!%,§(§7F§.rewards[param1.value][param2.id]).money;
      }
      
      public static function §-%?§(param1:§4$z§) : uint
      {
         return §!$]§(param1.result,param1.§-!K§);
      }
      
      public static function §!$]§(param1:§<$Z§, param2:§<$!§) : uint
      {
         return §!%,§(§7F§.rewards[param1.value][param2.id]).experience;
      }
   }
}


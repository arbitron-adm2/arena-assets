package §3"@§
{
   import § !P§.§]z§;
   import § #m§.§;#^§;
   import §!$d§.*;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §0!§.§[k§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §7$t§.§[!X§;
   import §9%W§.§!"G§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §^!]§.WeaponShootEvent;
   import §`%&§.§5$1§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   
   public class §#$O§
   {
      
      public static const REWARD_X2_DAY:uint = 3001;
      
      public static const REWARD_X2_WEEK:uint = 3002;
      
      public static const REWARD_X2_MONTH:uint = 3003;
      
      public static const REWARD_X4_DAY:uint = 3004;
      
      public static const REWARD_X4_WEEK:uint = 3005;
      
      public static const REWARD_X4_MONTH:uint = 3006;
      
      public static const §6$K§:uint = 3007;
      
      public static const §@!v§:uint = 3008;
      
      public static const §7!H§:uint = 3009;
      
      public static const §2!D§:uint = 3010;
      
      public static const §,3§:uint = 3011;
      
      public static const §8&-§:uint = 3012;
      
      public static const WEEK_VIP:uint = 3020;
      
      public static const §-##§:uint = 3021;
      
      public static const §+%+§:uint = 3022;
      
      public static const §9!`§:uint = 3023;
      
      public static const MONTH_VIP:uint = 3030;
      
      public static const §@"Y§:uint = 3031;
      
      public static const §!$,§:uint = 3032;
      
      public static const §%"Q§:uint = 3033;
      
      public function §#$O§()
      {
         super();
      }
      
      public static function §3$K§(param1:int) : Boolean
      {
         return int(param1 / 1000) == int(§""m§.§;9§ / 1000);
      }
      
      public static function §]A§(param1:int) : Boolean
      {
         return param1 <= WEEK_VIP || param1 == MONTH_VIP;
      }
   }
}


package ru.pragmatix.wormix.game.rules
{
   import § &5§.Water;
   import §!$d§.§<$c§;
   import §##y§.CollisionEvent;
   import §&&6§.*;
   import §'"N§.*;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1#p§.§2=§;
   import §2"L§.§^$y§;
   import §3#a§.§-#M§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8$V§.§`"c§;
   import §<!W§.*;
   import §=&!§.§&$a§;
   import §=&!§.§]$d§;
   import §?#g§.§-!k§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$7§.§6&'§;
   import §@!i§.§8%6§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@"s§.§]!>§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import config.§;"I§;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §%&=§
   {
      
      public function §%&=§()
      {
         super();
         throw new Error("Rules can\'t be instantiated!");
      }
      
      public static function §##x§(param1:§]$d§) : §1#>§
      {
         switch(param1.battleType)
         {
            case §&$a§.§9&A§:
               return new §1";§(param1);
            case §&$a§.§^!p§:
               return new §%$%§(param1);
            case §&$a§.§5!w§:
               return new §;!f§(param1);
            case §&$a§.§#"g§:
            case §&$a§.§^#f§:
               return new §#&I§(param1);
            default:
               throw new Error("Can\'t find appropriate rules for battle type " + param1.battleType.id);
         }
      }
   }
}


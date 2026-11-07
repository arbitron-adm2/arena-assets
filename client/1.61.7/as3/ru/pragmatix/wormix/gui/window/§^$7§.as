package ru.pragmatix.wormix.gui.window
{
   import §!$D§.§2$^§;
   import §"#x§.§'"$§;
   import §##j§.§!%&§;
   import §##j§.§0%=§;
   import §##j§.§7%R§;
   import §##j§.§<!P§;
   import §##j§.§>"M§;
   import §##j§.§`%g§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'"N§.*;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §3"@§.§##L§;
   import §4'§.§#"l§;
   import §6"'§.*;
   import §6%2§.§#"B§;
   import §7$t§.§2"y§;
   import §8$V§.TeamController;
   import §9%W§.§`"y§;
   import §;#O§.§+%7§;
   import §<%k§.§`!v§;
   import §=&!§.§&$a§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import config.§^"2§;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.messages.client.RemoveFromGroup;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §^$7§
   {
      
      public function §^$7§()
      {
         super();
      }
      
      public static function create(param1:§]$d§) : §4%?§
      {
         switch(param1.battleType)
         {
            case §&$a§.§#"g§:
            case §&$a§.§^#f§:
               return new BattleOfferDialog();
            case §&$a§.§5!w§:
               if(param1.§>$'§())
               {
                  return new BattleOfferDialog();
               }
               return new BossBattleOfferDialog();
               break;
            default:
               return null;
         }
      }
   }
}


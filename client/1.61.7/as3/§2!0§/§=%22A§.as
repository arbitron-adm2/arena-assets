package §2!0§
{
   import § K§.§@$b§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §"$+§.§ G§;
   import §"$+§.§@C§;
   import §#"V§.§!&5§;
   import §#"V§.§6"%§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&!m§.§-$6§;
   import §'!Z§.§1"-§;
   import §,#c§.ArenaMenu;
   import §0%[§.§1%"§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §3#T§.§?$q§;
   import §3#a§.§-!`§;
   import §5"J§.*;
   import §7$t§.§&!e§;
   import §<!W§.§>&@§;
   import §<%E§.§4T§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §=&6§.§7$C§;
   import §?"[§.§>"T§;
   import §?$L§.§&$9§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §[#q§.§="5§;
   import §[%§.Rabbit;
   import §^"y§.§]#i§;
   import flash.display.DisplayObject;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.rules.§6#H§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.structures.MechanicEventV2;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.social.facebook.controller.§8#@§;
   
   public class §="A§
   {
      
      public function §="A§()
      {
         super();
      }
      
      public static function create(param1:§1#+§) : §@$b§
      {
         switch(param1.getType())
         {
            case §7"n§.NONE:
            case §7"n§.VK:
               return new §="5§();
            case §7"n§.OK:
               return new §7$C§();
            case §7"n§.FB:
               return new §8#@§();
            case §7"n§.MM:
               return new §>"T§();
            default:
               return null;
         }
      }
   }
}


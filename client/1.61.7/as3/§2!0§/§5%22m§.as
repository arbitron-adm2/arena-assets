package §2!0§
{
   import § K§.§`!5§;
   import §"!C§.§3#n§;
   import §#"V§.§!&5§;
   import §%"1§.§@%;§;
   import §&"R§.*;
   import §&&6§.*;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §4!!§.§!%n§;
   import §4!!§.§'$V§;
   import §4!!§.§]!h§;
   import §9%W§.§&!P§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §=&6§.§-%'§;
   import §?"[§.§5%+§;
   import §?>§.§0!7§;
   import §?>§.§]!V§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[#q§.§?`§;
   import §[$<§.§;"E§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import flash.display.DisplayObjectContainer;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.facebook.controller.§9&?§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §5"m§
   {
      
      public function §5"m§()
      {
         super();
      }
      
      public static function create(param1:§1#+§) : §`!5§
      {
         switch(param1.getType())
         {
            case §7"n§.NONE:
            case §7"n§.VK:
               return new §?`§();
            case §7"n§.OK:
               return new §-%'§();
            case §7"n§.FB:
               return new §9&?§();
            case §7"n§.MM:
               return new §5%+§();
            default:
               return null;
         }
      }
   }
}


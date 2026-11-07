package §2!0§
{
   import § &5§.§=#P§;
   import § K§.§="c§;
   import §%"1§.§@%;§;
   import §'"N§.§4&5§;
   import §0"L§.§+# §;
   import §0%j§.§0$+§;
   import §2#x§.§]s§;
   import §3"_§.§?#w§;
   import §4!x§.§@& §;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9%W§.§8#p§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §=&6§.§6!X§;
   import §?"[§.§#"m§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §[#q§.§;$Q§;
   import §^#[§.§&$2§;
   import §`%&§.§@&,§;
   import config.achievements.§!$L§;
   import flash.events.Event;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.§3y§;
   import ru.pragmatix.wormix.messages.structures.LoginAwardStructure;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §'$x§
   {
      
      public function §'$x§()
      {
         super();
      }
      
      public static function create(param1:§1#+§) : §="c§
      {
         if(Application.instance.§#&7§())
         {
            return new §;$Q§(param1);
         }
         switch(param1.getType())
         {
            case §7"n§.VK:
               return new §;$Q§(§]s§(param1));
            case §7"n§.OK:
               return new §6!X§(§?#w§(param1));
            case §7"n§.MM:
               return new §#"m§(§0$+§(param1));
            case §7"n§.FB:
               return null;
            default:
               return null;
         }
      }
   }
}


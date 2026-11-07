package §2!0§
{
   import § K§.§#H§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §'$Z§.*;
   import §+%Q§.§#%9§;
   import §+%S§.§[&;§;
   import §0%[§.§%"'§;
   import §0%j§.§0$+§;
   import §1#p§.§"Z§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7$t§.§;#_§;
   import §8#`§.§#%r§;
   import §<%k§.§`!v§;
   import §=&6§.§3#B§;
   import §?"[§.§6%X§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[#q§.§+#M§;
   import §^"y§.§]#i§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import ru.pragmatix.flox.social.controller.§#$K§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FacebookBankController;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §-"Y§
   {
      
      public function §-"Y§()
      {
         super();
      }
      
      public static function create(param1:§1#+§) : §#H§
      {
         switch(param1.getType())
         {
            case §7"n§.NONE:
            case §7"n§.VK:
               return new §+#M§();
            case §7"n§.OK:
               return new §3#B§();
            case §7"n§.FB:
               return new FacebookBankController();
            case §7"n§.MM:
               return new §6%X§();
            default:
               return null;
         }
      }
   }
}


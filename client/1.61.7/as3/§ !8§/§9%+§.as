package § !8§
{
   import § $N§.§<%j§;
   import §!$d§.§<$c§;
   import §##j§.§0m§;
   import §##j§.§7,§;
   import §&&6§.*;
   import §+%S§.§="_§;
   import §-%B§.*;
   import §0%"§.§[!^§;
   import §7$1§.§;$n§;
   import §7$t§.§[!X§;
   import §=&!§.§<$Z§;
   import §?"j§.*;
   import §?#g§.§"&>§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §^"y§.§[";§;
   import §^#[§.§&$2§;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§>!n§;
   
   public class §9%+§ implements §[";§
   {
      
      private static var instance:§9%+§;
      
      public static const §>$M§:String = "default";
      
      private var §4$p§:Object = {};
      
      public function §9%+§()
      {
         super();
      }
      
      public static function getInstance() : §9%+§
      {
         if(!instance)
         {
            instance = new §9%+§();
         }
         return instance;
      }
      
      public static function §?%S§() : Object
      {
         return §9%+§.getInstance().§4$p§;
      }
   }
}


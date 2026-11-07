package §=&!§
{
   import §!$D§.*;
   import §!$d§.§<$c§;
   import §##j§.§!%&§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##j§.§9x§;
   import §##j§.§`%g§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §2#i§.§+%z§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §8#o§.§1@§;
   import §=#g§.*;
   import §>%I§.§-#f§;
   import §@!i§.§5&4§;
   import §@!i§.§;#L§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.serialization.structures.*;
   
   public class §<$!§
   {
      
      public static const MEDIUM:§<$!§ = new §<$!§(§"!z§.MEDIUM,"MEDIUM_MISSION");
      
      public static const HARD:§<$!§ = new §<$!§(§"!z§.HARD,"HARD_MISSION");
      
      public static const EASY:§<$!§ = new §<$!§(§"!z§.EASY,"EASY_MISSION");
      
      private var §9!4§:int;
      
      private var §4"4§:String;
      
      public function §<$!§(param1:int, param2:String)
      {
         super();
         this.§9!4§ = param1;
         this.§4"4§ = §0$N§.§<N§(param2);
      }
      
      public static function §]$^§(param1:int) : §<$!§
      {
         switch(param1)
         {
            case §"!z§.MEDIUM:
               return MEDIUM;
            case §"!z§.HARD:
               return HARD;
            case §"!z§.EASY:
               return EASY;
            default:
               return MEDIUM;
         }
      }
      
      public function toString() : String
      {
         return "MissionType{" + "id=" + this.§9!4§ + ",name=" + this.§4"4§ + "}";
      }
      
      public function get id() : int
      {
         return this.§9!4§;
      }
      
      public function get name() : String
      {
         return this.§4"4§;
      }
   }
}


package §%"Z§
{
   import § !P§.§<#q§;
   import § &5§.§=#P§;
   import §#"V§.*;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%#u§.§@"c§;
   import §%L§.§%%w§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §2#H§.§3$p§;
   import §2#V§.§-#U§;
   import §2#s§.*;
   import §4!x§.§@& §;
   import §<"?§.*;
   import §<%k§.§`!v§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]$v§.§]%_§;
   import §`#x§.§"$r§;
   import flash.events.Event;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.PromoteRankInClanResponse;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §9"z§
   {
      
      public static const §!!g§:§9"z§ = new §9"z§();
      
      public static const §>&2§:§9"z§ = new §9"z§();
      
      public static const §7$r§:§9"z§ = new §9"z§();
      
      public function §9"z§()
      {
         super();
      }
      
      public static function valueOf(param1:String) : §9"z§
      {
         switch(param1)
         {
            case "test":
               return §9"z§.§>&2§;
            case "local":
               return §9"z§.§!!g§;
            default:
               return §9"z§.§7$r§;
         }
      }
      
      public function isLocal() : Boolean
      {
         return this == §!!g§;
      }
      
      public function §5#N§() : Boolean
      {
         return this == §>&2§;
      }
      
      public function §[#w§() : Boolean
      {
         return this == §7$r§;
      }
   }
}


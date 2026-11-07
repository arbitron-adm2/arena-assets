package §=&!§
{
   import §,"v§.§9%d§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%j§.§#!U§;
   import §0%j§.§-,§;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §9%W§.§&!P§;
   import §=!p§.§8#x§;
   import §=1§.*;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §^#[§.§?"&§;
   import §`#x§.§"$r§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §&$a§
   {
      
      public static const §^#f§:§&$a§ = new §&$a§(0,true);
      
      public static const §#"g§:§&$a§ = new §&$a§(1,true);
      
      public static const §^!p§:§&$a§ = new §&$a§(2,false);
      
      public static const §9&A§:§&$a§ = new §&$a§(3,false);
      
      public static const §5!w§:§&$a§ = new §&$a§(4,false);
      
      private var §9!4§:uint;
      
      private var §3&B§:Boolean;
      
      public function §&$a§(param1:uint, param2:Boolean)
      {
         super();
         this.§9!4§ = param1;
         this.§3&B§ = param2;
      }
      
      public function toString() : String
      {
         return "BattleType{" + " id=" + this.§9!4§ + " isPvp=" + this.§3&B§ + " }";
      }
      
      public function §3g§() : Boolean
      {
         return this.§3&B§;
      }
      
      public function get id() : uint
      {
         return this.§9!4§;
      }
   }
}


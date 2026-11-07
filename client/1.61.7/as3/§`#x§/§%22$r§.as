package §`#x§
{
   import §"!C§.§3#n§;
   import §"%H§.§1! §;
   import §&#h§.§-"F§;
   import §+%o§.*;
   import §0%[§.§0%§;
   import §5!9§.§6$,§;
   import §<"L§.§7"L§;
   import flash.events.MouseEvent;
   import flash.system.Security;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanRequest;
   
   public class §"$r§
   {
      
      public static const READY:§"$r§ = new §"$r§(0,"ready");
      
      public static const §2%2§:§"$r§ = new §"$r§(1,"map_selection");
      
      public static const §8"]§:§"$r§ = new §"$r§(5,"considering_offer");
      
      public static const §8#k§:§"$r§ = new §"$r§(2,"wait_for_call");
      
      public static const §#!D§:§"$r§ = new §"$r§(3,"wait_for_battle_creation");
      
      public static const §;#Z§:§"$r§ = new §"$r§(4,"loading_resources");
      
      private var §9!4§:int;
      
      private var §4"4§:String;
      
      public function §"$r§(param1:int, param2:String)
      {
         super();
         this.§9!4§ = param1;
         this.§4"4§ = param2;
      }
      
      public function toString() : String
      {
         return "PvpRequestState{" + "id=" + this.§9!4§ + ",name=" + this.§4"4§ + "}";
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


package §%"Z§
{
   import § &5§.§=#P§;
   import §"!C§.§3#n§;
   import §#"V§.§6"%§;
   import §#"V§.§8"@§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §0%[§.§1%"§;
   import §1"r§.§ ! §;
   import §3"_§.*;
   import §6_§.§&$6§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §=&!§.§]$d§;
   import §@!N§.§3!3§;
   import §@<§.§+%]§;
   import §]$v§.§]%_§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.client.PvpChatMessage;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §'$2§
   {
      
      private var §,"w§:int;
      
      private var §?E§:int;
      
      public function §'$2§(param1:uint = 0, param2:uint = 0)
      {
         super();
         this.§,"w§ = param2;
         this.§?E§ = param1;
      }
      
      public function getValue(param1:§+$A§) : uint
      {
         return param1 == §+$A§.REAL ? this.realPrice : this.ingamePrice;
      }
      
      public function get realPrice() : uint
      {
         return this.§,"w§;
      }
      
      public function get ingamePrice() : uint
      {
         return this.§?E§;
      }
      
      public function set realPrice(param1:uint) : void
      {
         this.§,"w§ = param1;
      }
      
      public function set ingamePrice(param1:uint) : void
      {
         this.§?E§ = param1;
      }
      
      public function toString() : String
      {
         return "Price{realPrice=" + String(this.realPrice) + ",ingamePrice=" + String(this.ingamePrice) + "}";
      }
   }
}


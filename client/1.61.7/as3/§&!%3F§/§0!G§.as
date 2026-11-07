package §&!?§
{
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%Q§.§;$W§;
   import §'!Z§.§1"-§;
   import §'%!§.§>%k§;
   import §'%!§.§@!Z§;
   import §-@§.§5"4§;
   import §2#x§.*;
   import §7!B§.§&"T§;
   import §="z§.§9%1§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import flash.geom.Point;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.server.PvpStartTurn;
   import ru.pragmatix.wormix.weapons.AdrenalineInjection;
   
   public class §0!G§ implements §;$W§
   {
      
      private var weapon:AdrenalineInjection;
      
      public function §0!G§(param1:AdrenalineInjection = null)
      {
         super();
         this.weapon = param1;
      }
      
      public function check(param1:§+%]§) : Boolean
      {
         return Boolean(this.weapon) && this.weapon.§6#N§(param1);
      }
   }
}


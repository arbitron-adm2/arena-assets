package §&!?§
{
   import §"$+§.§`&$§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §7!B§.§&"T§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §?X§.*;
   import §@$§.*;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §`%&§.§5$1§;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.DoctorBag;
   
   public class §"_§ extends §5"^§
   {
      
      private var weapon:DoctorBag;
      
      public function §"_§(param1:DoctorBag = null)
      {
         super();
         this.weapon = param1;
      }
      
      override public function check(param1:§+%]§) : Boolean
      {
         return Boolean(super.check(param1)) && Boolean(this.weapon) && this.weapon.§6#N§(param1);
      }
   }
}


package §;&2§
{
   import § "L§.GrenadeTurret;
   import § "L§.RocketTurret;
   import §&"c§.§!!q§;
   import §&"c§.§%$m§;
   import §+$=§.§1§;
   import §+%S§.§ !!§;
   import §+%S§.§"$7§;
   import §0&F§.§0%v§;
   import §2!-§.§'5§;
   import §2!-§.DamageEvent;
   import §2"L§.§,'§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §8!Y§.§`#Q§;
   import §8#<§.§!#^§;
   import §9%k§.*;
   import §@<§.§+%]§;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.XMLLoader;
   import com.greensock.loading.core.LoaderCore;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.rewards.§#"h§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §<y§ extends §!#W§
   {
      
      private static const §+"H§:Number = 0.2;
      
      private static const §'$D§:Number = 0.4;
      
      private static const §-$I§:Number = 0.3;
      
      private static const §3#m§:int = 10;
      
      private static const §1#S§:int = 4;
      
      public function §<y§()
      {
         §4#j§ = §+"H§;
         §7%B§ = §'$D§;
         §`& § = §-$I§;
         §%%"§ = §3#m§;
         super();
         §>e§ = §1#S§;
      }
      
      override protected function §!"g§() : void
      {
         var _loc1_:§,'§ = null;
         _loc1_ = §8"%§.randomSeed;
         var _loc2_:§%$m§ = new §%$m§(10,2,90);
         _loc2_.angle = -Math.PI / 4;
         _loc2_.§`#M§ = true;
         _loc2_.§%#0§ = true;
         _loc2_.§-#E§ = _loc1_.§,!q§(0,15);
         new RocketTurret(1288,2505,new Point(257,2156),new Point(1365,2502),_loc2_);
         _loc2_ = _loc2_.clone();
         _loc2_.angle = Math.PI / 4;
         _loc2_.§-#E§ += _loc1_.§,!q§(30,45);
         new RocketTurret(430,2505,new Point(257,2156),new Point(1365,2502),_loc2_);
         _loc2_ = new §%$m§(10,1,120);
         _loc2_.angle = Math.PI / 2;
         _loc2_.§<"r§ = Math.PI / _loc2_.§=!P§;
         _loc2_.§`#M§ = true;
         _loc2_.useGravity = false;
         new RocketTurret(1481,485,new Point(269,490),new Point(2621,2133),_loc2_,180);
         new GrenadeTurret(2189,3388,new Point(1934,2556),new Point(2442,3383));
      }
   }
}


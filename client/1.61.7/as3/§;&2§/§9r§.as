package §;&2§
{
   import § "L§.GrenadeTurret;
   import § "L§.RocketTurret;
   import §&"c§.§%$m§;
   import §-@§.§+"A§;
   import §-@§.§5h§;
   import §2"L§.§,'§;
   import §5#`§.*;
   import §7!B§.§&"T§;
   import §=#g§.*;
   import §?$7§.*;
   import §@!i§.§8%6§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.structures.BossWormStructure;
   import ru.pragmatix.wormix.messages.structures.TurnStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.structures.*;
   
   public class §9r§ extends §!#W§
   {
      
      private static const §+"H§:Number = 0.3;
      
      private static const §'$D§:Number = 0.4;
      
      private static const §-$I§:Number = 0.25;
      
      private static const §3#m§:int = 10;
      
      private static const §1#S§:int = 5;
      
      public function §9r§()
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
         var _loc2_:§%$m§ = new §%$m§(10,2,_loc1_.§,!q§(60,60));
         _loc2_.angle = Math.PI / 3;
         _loc2_.§`#M§ = true;
         _loc2_.§%#0§ = true;
         new RocketTurret(316,346,new Point(296,156),new Point(859,350),_loc2_);
         _loc2_ = new §%$m§(1,0,_loc1_.§,!q§(30,60));
         _loc2_.§`#M§ = true;
         _loc2_.useGravity = false;
         _loc2_.power = _loc1_.§,!q§(10,15);
         _loc2_.§-#E§ = _loc1_.§,!q§(0,15);
         new RocketTurret(922,987,new Point(1017,949),new Point(2253,1087),_loc2_,90);
         _loc2_ = _loc2_.clone();
         _loc2_.§&#H§ = _loc1_.§,!q§(45,75);
         new RocketTurret(1796,1653,new Point(2024,1335),new Point(3120,1584),_loc2_,90);
         _loc2_ = _loc2_.clone();
         _loc2_.§&#H§ = _loc1_.§,!q§(45,75);
         new RocketTurret(1796,1522,new Point(2024,1335),new Point(3120,1584),_loc2_,90);
         _loc2_ = _loc2_.clone();
         _loc2_.§&#H§ = _loc1_.§,!q§(45,75);
         new RocketTurret(1913,1396,new Point(2155,1219),new Point(3116,1578),_loc2_,90);
         _loc2_ = _loc2_.clone();
         _loc2_.§&#H§ = _loc1_.§,!q§(45,75);
         new RocketTurret(2044,1267,new Point(2155,1219),new Point(3116,1578),_loc2_,90);
         new GrenadeTurret(1841,1443,new Point(978,950),new Point(2121,1317));
         new GrenadeTurret(1767,827,new Point(1542,154),new Point(1994,800));
      }
   }
}


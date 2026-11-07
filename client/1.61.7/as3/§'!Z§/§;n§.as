package §'!Z§
{
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §+$=§.§6#A§;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §2!-§.DamageEvent;
   import §5!9§.§6$,§;
   import §6"'§.§&"3§;
   import §9%W§.§!"G§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §`%&§.§5$1§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §;n§
   {
      
      public static const §6#B§:Class = getClass("BoomExplosion");
      
      public static const §7q§:Class = getClass("ExplosionSmall");
      
      public static const §-" §:Class = getClass("ColdExplosionSmall");
      
      public static const MEDIUM:Class = getClass("ExplosionMedium");
      
      public static const §@%d§:Class = getClass("ExplosionLarge");
      
      public static const §8!-§:Class = getClass("ClassicExplosion");
      
      public static const §8%a§:Class = getClass("PoisonExplosionLarge");
      
      public static const §@$Y§:Class = getClass("FireExplosionLarge");
      
      public static const §1&>§:Class = getClass("FrostExplosionLarge");
      
      public static const §1"E§:Class = getClass("ElectricExplosion");
      
      public static const §@"+§:Class = getClass("IonExplode");
      
      public static const §"#6§:Class = getClass("MinimalExplosion");
      
      public static const §8&,§:Class = getClass("MetalExplosion");
      
      public static const §@"W§:Class = getClass("DemonicExplosion");
      
      public static const §&#b§:Class = getClass("PoisonExplosionSmall");
      
      public static const SWAP_RACE:Class = getClass("SwapRaceExplosion");
      
      public static const §2#M§:Class = getClass("LaserExplosion");
      
      public function §;n§()
      {
         super();
      }
      
      private static function getClass(param1:String) : Class
      {
         var clsName:String = param1;
         var cls:Class = null;
         try
         {
            cls = §6#A§.getClass(clsName);
         }
         catch(e:Error)
         {
         }
         return cls;
      }
   }
}


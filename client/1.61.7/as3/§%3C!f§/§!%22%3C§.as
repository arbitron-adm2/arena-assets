package §<!f§
{
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§ !!§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §3#T§.§]!6§;
   import §5#`§.§7%g§;
   import §7!B§.§6#I§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §="z§.§-O§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §!"<§ extends §6#I§
   {
      
      protected static const §>!?§:uint = 20;
      
      protected static const §&!_§:Array = [§`!v§.SHURIKEN_HITGROUND_01,§`!v§.SHURIKEN_HITGROUND_02,§`!v§.SHURIKEN_HITGROUND_03,§`!v§.SHURIKEN_HITGROUND_04];
      
      protected static const § Y§:Array = [§`!v§.§1$t§];
      
      protected var paramSet:§5$n§;
      
      protected var distance:uint = 0;
      
      private var §[$H§:int;
      
      public function §!"<§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint, param5:Boolean = true, param6:int = 0)
      {
         super(param1,param1.x,param1.y,false);
         §-"e§ = false;
         this.§[$H§ = param6;
         §,%S§ = true;
         §6""§ = true;
         this.paramSet = param2;
         initialize(§"$C§(param3,5),param2.ammoClassName);
         if(param5)
         {
            physParams.addForce(§]%G§.§-4§);
         }
         §1"-§.attachTrail(this,6,2,14606046,14606046);
         §^"F§(param3,param4);
         clip.rotation = param3 * 180 / Math.PI;
         §8$a§.§&!#§(this,§0%v§.§+&=§,this.onCollide);
         §`4§ = §]$S§;
         Application.scene.§@$I§.§1$+§(this);
      }
      
      protected function onCollide(param1:CollisionEvent) : void
      {
         var _loc2_:§]!6§ = null;
         if(param1.other is §+%]§)
         {
            inflictDamage(param1.other,this.paramSet.damage.value,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value);
            if(!§+%]§(param1.other).isImmobile())
            {
               §-O§(§+%]§(param1.other).physicModel).rolling = §^$y§.sign(speedX) * Math.min(§>!?§,8 + this.distance * 4);
            }
            if(!§+%]§(param1.other).buffs.hasBuff(§ !!§.NAME))
            {
               §@%;§.play(§`!v§.§=%2§(§ Y§));
            }
            §7%g§.§>!%§(§+%]§(param1.other),owner);
         }
         else
         {
            _loc2_ = new §]!6§(x,y,this.paramSet.ammoClassName,1);
            _loc2_.setSpeedXY(-§^$y§.sign(speedX) * 5,-7 - §8"%§.randomSeed.§,!q§(1,6));
            _loc2_.clip.rotation = Math.random() * 360;
            §@%;§.play(§`!v§.§=%2§(§&!_§));
         }
         §1"-§.explode(§;n§.§&#b§,x,y,this.paramSet.damageRadius.value);
         disposed = true;
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         ++this.distance;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
      }
      
      override protected function §1$Z§(param1:Event) : void
      {
         var _loc2_:Array = null;
         if(y > 0 && x > -200 && x < Application.scene.width + 200)
         {
            _loc2_ = [§`!v§.WATER_IMPACT1,§`!v§.WATER_IMPACT2,§`!v§.WATER_IMPACT3];
            §@%;§.play(§`!v§.§=%2§(_loc2_));
         }
         disposed = true;
      }
   }
}


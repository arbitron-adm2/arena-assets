package §<!^§
{
   import §!$d§.§<$c§;
   import §##y§.§9§;
   import §%"1§.§@%;§;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0"L§.§+# §;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §<%k§.§`!v§;
   import §="z§.§ "H§;
   import §="z§.§9%1§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §<b§ extends §6#I§
   {
      
      private static const ammoClassName:String = "DefaultShard";
      
      private static const DAMAGE:uint = 10;
      
      private static const §9!"§:uint = 55;
      
      private static const §<$C§:uint = 75;
      
      private static const bounceSounds:Array = [§`!v§.§1#[§];
      
      private var bounceCoeff:Number;
      
      private var § %m§:uint;
      
      public function §<b§(param1:§+%]§, param2:int, param3:int, param4:Number, param5:Number, param6:uint = 60, param7:Number = 0.5)
      {
         this.bounceCoeff = param7;
         super(param1,param2,param3,false);
         this.§ %m§ = param6;
         §!f§ = 4;
         initialize(new Point(param2,param3),ammoClassName);
         §^"F§(param4,param5);
         §`4§ = §5$=§;
         if(§8"%§.§&S§.§-p§())
         {
            §1"-§.attachTrail(this,10,3,16777215,16777215,1);
         }
         Application.scene.§@$I§.§1$+§(this);
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§^&0§);
         physParams.addForce(§]%G§.§5$r§);
         physParams.§5N§ = §9%1§.§&!A§;
         physicModel = new § "H§(physParams,this.bounceCoeff,0);
         physicModel.addEventListener(§9#1§.§@"-§,this.§^$e§);
         physicModel.addEventListener(§9#1§.§##n§,function(param1:Event):void
         {
            if(bounceSounds != null && bounceSounds.length > 0)
            {
               §@%;§.play(§`!v§.§=%2§(bounceSounds));
            }
         });
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         this.tick();
      }
      
      private function tick() : void
      {
         if(!this.disposed)
         {
            --this.§ %m§;
            if(0 == this.§ %m§)
            {
               this.inflictDamage(null,DAMAGE,§<$C§,§9!"§,true,false,true,§<$c§.§ !=§(§+%z§.§'#?§));
               disposed = true;
               §1"-§.§&!C§(x,y,12);
               §1"-§.explode(§;n§.§@%d§,this.x,this.y,§<$C§,§`!v§.§=%2§([§`!v§.CASSETE_EXPLOSION1,§`!v§.CASSETE_EXPLOSION2,§`!v§.CASSETE_EXPLOSION3]));
               §'!j§.go(DAMAGE);
            }
         }
      }
      
      protected function §^$e§(param1:Event) : void
      {
         §`4§ = §+#G§;
         physicModel.removeEventListener(§9#1§.§@"-§,this.§^$e§);
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         super.§""0§(param1);
         if(speedY > -3)
         {
            setSpeedXY(speedX,-3);
         }
      }
      
      override public function inflictDamage(param1:§&"T§, param2:Number, param3:Number, param4:Number, param5:Boolean = true, param6:Boolean = false, param7:Boolean = true, param8:Object = null) : void
      {
         super.inflictDamage(param1,param2,param3,param4,param5,param6,param7,param8);
      }
   }
}


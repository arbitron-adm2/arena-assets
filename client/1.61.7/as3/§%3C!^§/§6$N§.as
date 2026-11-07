package §<!^§
{
   import §##y§.CollisionEvent;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0&F§.§0%v§;
   import §7!B§.§6#I§;
   import §<%k§.§`!v§;
   import §="z§.§<$t§;
   import §@<§.§+%]§;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class §6$N§ extends §6#I§
   {
      
      private var counter:uint = 4;
      
      public function §6$N§(param1:§+%]§, param2:int, param3:int, param4:Number, param5:uint, param6:§5$n§)
      {
         var self:§6#I§ = null;
         var owner:§+%]§ = param1;
         var baseX:int = param2;
         var baseY:int = param3;
         var angle:Number = param4;
         var power:uint = param5;
         var paramSet:§5$n§ = param6;
         super(owner,baseX,baseY,true);
         initialize(new Point(baseX,baseY),paramSet.ammoClassName);
         clip.scaleX = clip.scaleY = 0.5;
         §^"F§(angle,power);
         self = this;
         addEventListener(§0%v§.§+&=§,function(param1:CollisionEvent):void
         {
            --counter;
            if(counter != 0)
            {
               self.inflictDamage(param1.other,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value);
               §1"-§.§&!C§(x,y,3);
               §1"-§.explode(§;n§.§@%d§,self.x,self.y,paramSet.damageRadius.value,§`!v§.CASSETE_EXPLOSION1);
            }
            else
            {
               disposed = true;
            }
         });
         if(§8"%§.§&S§.§-p§())
         {
            §1"-§.§;%k§(this,§;n§.§7q§,8,1);
         }
         §`4§ = §]$S§;
         Application.scene.§@$I§.§1$+§(this);
      }
   }
}


package §<!^§
{
   import §##y§.CollisionEvent;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0&F§.§0%v§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §[$<§.§;%S§;
   import §[$<§.§>"9§;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §["l§ extends §6#I§
   {
      
      private static const §9&B§:String = "DefaultShard";
      
      protected var paramSet:§5$n§;
      
      protected var §]$I§:Object;
      
      public function §["l§(param1:§+%]§, param2:int, param3:int, param4:Number, param5:uint, param6:§5$n§, param7:Number = 1, param8:Object = true, param9:int = 300)
      {
         this.paramSet = param6;
         super(param1,param2,param3,true,param9);
         initialize(new Point(param2,param3),param6.ammoClassName ? param6.ammoClassName : §9&B§);
         this.clip.scaleX = this.clip.scaleY = param7;
         §^"F§(param4,param5);
         §8$a§.§&!#§(this,§0%v§.§+&=§,this.onCollision);
         §`4§ = §]$S§;
         if(Boolean(param8) && §8"%§.§&S§.§-p§())
         {
            if(param8 is Boolean)
            {
               this.§]$I§ = §1"-§.§?"$§(this,§;%S§.§`"Q§);
            }
            else if(param8 is §>"9§)
            {
               this.§]$I§ = §1"-§.§?"$§(this,§>"9§(param8));
            }
         }
         Application.scene.§@$I§.§1$+§(this);
      }
      
      protected function onCollision(param1:CollisionEvent) : void
      {
         this.explode(param1.other);
      }
      
      protected function explode(param1:§&"T§) : void
      {
         inflictDamage(param1,this.paramSet.damage.value,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value,true,false,true,_customSource);
         §1"-§.explode(§;n§.MEDIUM,x,y,this.paramSet.damageRadius.value,§`!v§.§=%2§([§`!v§.CASSETE_EXPLOSION1,§`!v§.CASSETE_EXPLOSION2,§`!v§.CASSETE_EXPLOSION3]));
         disposed = true;
      }
   }
}


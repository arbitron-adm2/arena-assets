package §<!^§
{
   import §##y§.CollisionEvent;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §<%k§.§`!v§;
   import §="z§.§ "H§;
   import §="z§.§9%1§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class §71§ extends §6#I§
   {
      
      private static const §?"W§:Array = [§`!v§.CASSETE_EXPLOSION1,§`!v§.CASSETE_EXPLOSION2,§`!v§.CASSETE_EXPLOSION3];
      
      private static const §%!G§:String = "DefaultShard";
      
      private static const DAMAGE:§&$2§ = new §&$2§(10);
      
      private static const §9"S§:§&$2§ = new §&$2§(140);
      
      private static const §9!"§:uint = 55;
      
      private static const §<$C§:uint = 75;
      
      public function §71§(param1:§+%]§, param2:int, param3:int, param4:Number, param5:Number)
      {
         super(param1,param2,param3,false);
         §!f§ = 4;
         initialize(new Point(param2,param3),§%!G§);
         §^"F§(param4,param5);
         §`4§ = §5$=§;
         if(§8"%§.§&S§.§-p§())
         {
            §1"-§.§;%k§(this,§;n§.§7q§,10,1);
         }
         addEventListener(§0%v§.§+&=§,this.onCollide);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§^&0§);
         physParams.addForce(§]%G§.§5$r§);
         physParams.§5N§ = §9%1§.§!#6§;
         physicModel = new § "H§(physParams,0.5,0);
      }
      
      private function onCollide(param1:CollisionEvent) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Boolean = false;
         var _loc5_:Vector.<BackpackItem> = null;
         var _loc6_:BackpackItem = null;
         removeEventListener(§0%v§.§+&=§,this.onCollide);
         var _loc2_:§&"T§ = param1.other;
         if(_loc2_ is §+%]§)
         {
            inflictDamage(_loc2_,§9"S§.value,§<$C§,§9!"§,true,false,true,_customSource);
            §1"-§.§&!C§(x,y,12);
            §1"-§.explode(§;n§.§@%d§,this.x,this.y,§<$C§,§`!v§.§=%2§(§?"W§));
            §'!j§.go(DAMAGE.value);
         }
         else
         {
            _loc3_ = 0.2;
            inflictDamage(null,DAMAGE.value,§<$C§ * _loc3_,§9!"§ * _loc3_);
            §1"-§.explode(§;n§.MEDIUM,this.x,this.y,§<$C§ * _loc3_);
            §@%;§.play(Math.random() > 0.5 ? §`!v§.RIKOSHET1 : §`!v§.RIKOSHET2);
            _loc4_ = owner.squad.isAi();
            if(!_loc4_)
            {
               _loc5_ = owner.squad.§?"#§().getBattleBackpack().getOrderedWeapons();
               for each(_loc6_ in _loc5_)
               {
                  if(Boolean(_loc6_ && _loc6_.getId() == §+%z§.§-%1§) && Boolean(!_loc6_.isEmpty()) && !_loc6_.§1!9§)
                  {
                     _loc4_ = true;
                     break;
                  }
               }
            }
            if(_loc4_)
            {
               §-#M§.§62§(owner,x,y);
            }
         }
         disposed = true;
      }
   }
}


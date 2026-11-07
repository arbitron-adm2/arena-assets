package §""8§
{
   import §##j§.§'"%§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §7!B§.§6#I§;
   import §<%k§.§`!v§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%§.Cat;
   import §^#[§.§?"&§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.RemoveFromGroup;
   import ru.pragmatix.wormix.model.rewards.*;
   import ru.pragmatix.wormix.weapons.ammo.§,$n§;
   
   public class §]#g§ extends §6#I§
   {
      
      protected var ammoTrail:§,$n§;
      
      protected var §7"A§:Class = §;n§.§8!-§;
      
      public function §]#g§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint)
      {
         super(param1,param1.x,param1.y,false);
         initialize(param1.weapon.getBarrelPoint(param3),param2.ammoClassName);
         §^"F§(param3,param4);
         §`4§ = §5$=§;
         §3$1§ = false;
         addEventListener(§0%v§.§+&=§,this.onCollide);
         Application.scene.§@$I§.§1$+§(this);
         §@%;§.play(§`!v§.§7#O§);
         this.attachTrail();
      }
      
      public function attachTrail() : void
      {
         if(§8"%§.§&S§.§-p§())
         {
            this.ammoTrail = §,$n§.§&#z§(this,false,4,8,8421504,10526880,1);
         }
      }
      
      protected function onCollide(param1:CollisionEvent) : void
      {
         var _loc2_:§+%]§ = null;
         if(!disposed)
         {
            _loc2_ = param1.other as §+%]§;
            if(_loc2_)
            {
               this.trigger(_loc2_);
            }
            §1"-§.explode(this.§7"A§,x,y,30,§`!v§.§]!?§);
            disposed = true;
         }
      }
      
      [Abstract]
      protected function trigger(param1:§+%]§) : void
      {
      }
      
      override public function §[$u§(param1:Event) : void
      {
         removeEventListener(§0%v§.§+&=§,this.onCollide);
         super.§[$u§(param1);
      }
   }
}


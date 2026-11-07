package §,!f§
{
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§2$#§;
   import §0&F§.§0%v§;
   import §6$z§.BonusTrait;
   import §7$t§.§=?§;
   import §<%k§.§`!v§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §@";§ extends BonusTrait
   {
      
      private var §^!O§:Boolean;
      
      public function §@";§()
      {
         super();
      }
      
      override protected function activate(param1:int) : void
      {
         var value:int = param1;
         if(this.§^!O§)
         {
            return;
         }
         this.§^!O§ = true;
         if(owner.§="r§)
         {
            §8$a§.§%!E§(1,function onWaitAndDoTriggerDisplacement():void
            {
               if(!Application.scene.§@$I§.§=%d§())
               {
                  trigger(null);
               }
            });
         }
         else
         {
            owner.addEventListener(§0%v§.UNIT_ACTIVATION,this.trigger);
         }
      }
      
      override protected function deactivate(param1:int) : void
      {
         owner.removeEventListener(§0%v§.UNIT_ACTIVATION,this.trigger);
      }
      
      protected function trigger(param1:Event) : void
      {
         var _loc2_:Boolean = owner.graphics.isLocked();
         if(_loc2_)
         {
            owner.graphics.unlock();
         }
         this.§,%b§();
         if(_loc2_)
         {
            owner.graphics.lock();
         }
         §2$#§.updateDebuffBonus(owner);
         §1"-§.explode(§;n§.§6#B§,owner.x,owner.y,30,§`!v§.§+#O§);
         owner.removeEventListener(§0%v§.UNIT_ACTIVATION,this.trigger);
      }
      
      [Abstract]
      protected function §,%b§() : void
      {
      }
      
      protected function §[#!§(param1:Array) : int
      {
         var _loc2_:§=?§ = param1[§8"%§.randomSeed.§,!q§(0,param1.length - 1)];
         return _loc2_.getId();
      }
   }
}


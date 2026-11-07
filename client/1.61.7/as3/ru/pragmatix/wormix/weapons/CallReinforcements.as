package ru.pragmatix.wormix.weapons
{
   import §"$+§.§<$&§;
   import §"$+§.§@C§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §2"L§.§^$y§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9"-§.CallReinforcementsMark;
   import §<!G§.§&!;§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class CallReinforcements extends §&!;§
   {
      
      private static const §>#j§:uint = §<H§.§,%P§ * 2;
      
      private static const §[$"§:uint = 200;
      
      private var §'!4§:Point;
      
      private var sphere:MovieClip;
      
      public function CallReinforcements()
      {
         super();
      }
      
      override protected function §@%@§(param1:int, param2:int) : Boolean
      {
         var _loc4_:int = 0;
         if(§?!P§.§!%w§(owner))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED,true);
            }
            return false;
         }
         var _loc3_:Boolean = true;
         if(§^$y§.distance(param1 - owner.x,param2 - owner.y) < §[$"§)
         {
            this.§'!4§ = §>#9§.§>@§(param1,-20,0,Application.scene.height);
            _loc4_ = Application.scene.height - Application.scene.§#%0§();
            _loc3_ = this.§'!4§ && §^$y§.distance(this.§'!4§.x - owner.x,this.§'!4§.y - owner.y) < §[$"§ && this.§'!4§.y > §>#j§ && this.§'!4§.y < _loc4_;
         }
         else
         {
            _loc3_ = false;
         }
         if(!_loc3_ && §8"%§.§?!W§.§4"m§.§=%g§())
         {
            §>&-§.§[$9§(§0$N§.CALL_REINFORCEMENTS_USELESS,true);
         }
         return _loc3_;
      }
      
      override public function activate() : void
      {
         var _loc1_:ColorTransform = null;
         if(!active.value && §8"%§.§?!W§.§4"m§.§=%g§())
         {
            this.sphere = §6#A§.§!&6§("PulsingSphere");
            _loc1_ = new ColorTransform();
            _loc1_.color = §5%8§.§75§(owner.squad.getNumber()).§=%%§;
            this.sphere.stop();
            §§push(this.sphere);
            §§push(this.sphere);
            var _temp_2:* = §[$"§ * 2;
            §§pop().width = §§pop().height = §[$"§ * 2;
            this.sphere.transform.colorTransform = _loc1_;
            owner.clip.addChild(this.sphere);
         }
         super.activate();
      }
      
      override public function deactivate() : void
      {
         if(active.value && §8"%§.§?!W§.§4"m§.§=%g§())
         {
            owner.clip.removeChild(this.sphere);
            this.sphere = null;
         }
         super.deactivate();
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
      }
      
      override protected function §^M§(param1:int, param2:int, param3:int) : Number
      {
         return param2;
      }
      
      override protected function §2",§(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:Number, param6:Number, param7:Boolean = true) : void
      {
         new CallReinforcementsMark(param1,param2,shotParams.point.x,shotParams.point.y,this.§'!4§);
      }
   }
}


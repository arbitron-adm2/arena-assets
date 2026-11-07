package §[#I§
{
   import § !8§.§`!d§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §&"c§.§5$n§;
   import §0&F§.§`"^§;
   import §4f§.§-&§;
   import §<!^§.§]#u§;
   import §=#g§.§!"X§;
   import §?$L§.§0"-§;
   import §@<§.§+%]§;
   import §[$<§.§"#"§;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.events.TouchEvent;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§2%F§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§6#]§;
   import ru.pragmatix.wormix.gui.MainInterface;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.DistributePointsResult;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §2&=§ extends §`"O§ implements §2%F§
   {
      
      private var setup:Boolean = false;
      
      public function §2&=§(param1:§+%]§, param2:§5$n§, param3:§]#u§, param4:uint, param5:Number, param6:uint, param7:Number, param8:String)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         counter.§?!K§();
         counter = null;
         if(!§7#J§)
         {
            §,q§.push(§-&§.IGNORE_MAGNET);
         }
      }
      
      override protected function §^$e§(param1:Event) : void
      {
         if(§7#J§)
         {
            explode();
         }
         else
         {
            stable = true;
            if(!this.setup)
            {
               this.setup = true;
               §##[§ = -1;
               §8"%§.§?!W§.§4"m§.§6+§();
               if(trail)
               {
                  if(trail is §"#"§)
                  {
                     §"#"§(trail).off();
                  }
               }
            }
         }
      }
      
      override protected function §"#<§() : void
      {
         var _loc2_:§+%]§ = null;
         var _loc1_:Vector.<§+%]§> = §<H§.§5"]§(x,y,paramSet.damageRadius.value);
         for each(_loc2_ in _loc1_)
         {
            if(!_loc2_.disposed && _loc2_ != owner && _loc2_.squad.getTeamId() != owner.squad.getTeamId())
            {
               explode();
               break;
            }
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         physicModel.removeEventListener(§9#1§.§@"-§,this.§^$e§);
         super.§[$u§(param1);
      }
      
      public function §9$r§() : int
      {
         return paramSet.damageRadius.value + 5;
      }
   }
}


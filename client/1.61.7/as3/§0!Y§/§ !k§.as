package §0!Y§
{
   import §&"c§.§5$n§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §9%W§.§!7§;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class § !k§
   {
      
      public var commandId:int;
      
      public var params:Array = [];
      
      public function § !k§(param1:int, ... rest)
      {
         var _loc3_:* = undefined;
         super();
         this.commandId = param1;
         for each(_loc3_ in rest)
         {
            if(_loc3_ is Array)
            {
               this.params = this.params.concat(_loc3_);
            }
            else
            {
               this.params.push(_loc3_);
            }
         }
      }
   }
}


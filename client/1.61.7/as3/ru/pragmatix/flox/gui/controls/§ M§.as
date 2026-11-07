package ru.pragmatix.flox.gui.controls
{
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §+$=§.§6#A§;
   import §+%S§.§"$7§;
   import §+%S§.§;!4§;
   import §+%S§.§[&;§;
   import §4!x§.§@& §;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §="z§.§9%1§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class § M§ extends §@& §
   {
      
      private static const log:§&`§ = new §&`§(§ M§);
      
      public function § M§(param1:DisplayObjectContainer, param2:Object = null)
      {
         var _loc3_:String = null;
         var _loc4_:TextField = null;
         var _loc5_:Object = null;
         var _loc6_:TextFormat = null;
         super(param1);
         if(param2 != null)
         {
            for(_loc3_ in param2)
            {
               _loc4_ = §'%s§(_loc3_);
               if(!_loc4_)
               {
                  log.error("TextField " + _loc3_ + " not found in UIMessage container");
               }
               else
               {
                  _loc5_ = param2[_loc3_];
                  if(_loc5_ is String)
                  {
                     _loc4_.text = String(_loc5_);
                  }
                  else
                  {
                     if(_loc5_.fontSize)
                     {
                        _loc6_ = _loc4_.getTextFormat();
                        _loc6_.size = _loc5_.fontSize;
                        _loc4_.defaultTextFormat = _loc6_;
                     }
                     _loc4_.text = _loc5_.text;
                  }
               }
            }
         }
      }
   }
}


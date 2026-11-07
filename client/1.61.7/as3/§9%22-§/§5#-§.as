package §9"-§
{
   import §"$+§.§<$&§;
   import §"$+§.§@C§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §3#a§.§-#M§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §]#[§.§2%o§;
   import §]$v§.§3z§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   
   public class §5#-§ extends §&"T§
   {
      
      private var paramSet:§5$n§;
      
      private var alertId:int;
      
      private var owner:§+%]§;
      
      public function §5#-§(param1:§+%]§, param2:§5$n§)
      {
         super();
         this.paramSet = param2;
         this.owner = param1;
         clip = new MovieClip();
         stable = true;
         Application.scene.§@$I§.§1$+§(this);
         this.alertId = Application.scene.§7#o§.§1"§.§<#-§(§2%o§.§52§,§0$N§.PIRANHA_LAUNCH_DETECTED);
         Application.scene.addEventListener(§0%v§.EOT,this.§,!l§);
         §@%;§.play(§`!v§.§5$e§);
      }
      
      private function §,!l§(param1:Event) : void
      {
         var _loc5_:§+%]§ = null;
         var _loc6_:§+%]§ = null;
         var _loc7_:Point = null;
         var _loc8_:int = 0;
         var _loc9_:Array = null;
         var _loc10_:§,'§ = null;
         var _loc11_:int = 0;
         var _loc12_:Number = NaN;
         var _loc13_:Point = null;
         var _loc14_:Number = NaN;
         var _loc2_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§5#h§();
         var _loc3_:Vector.<§+%]§> = new Vector.<§+%]§>(0);
         var _loc4_:Number = 0;
         for each(_loc6_ in _loc2_)
         {
            if(§-#M§.§%#K§(_loc6_) && _loc6_.§0!e§)
            {
               _loc3_.push(_loc6_);
               if(_loc4_ < _loc6_.y)
               {
                  _loc5_ = _loc6_;
                  _loc4_ = _loc6_.y;
               }
            }
         }
         if(_loc5_)
         {
            _loc7_ = new Point(_loc5_.x,_loc5_.y);
            _loc8_ = Application.scene.height - 50;
            _loc9_ = [-2,-1,1,2];
            _loc10_ = §8"%§.randomSeed;
            if(_loc10_.§6#;§())
            {
               _loc9_.unshift(-3);
            }
            else
            {
               _loc9_.push(3);
            }
            for each(_loc11_ in _loc9_)
            {
               _loc12_ = _loc5_.x + _loc10_.§,!q§(50,100) * _loc11_ + 50 * _loc11_;
               _loc13_ = new Point(_loc12_,_loc8_);
               _loc14_ = Math.atan2(_loc5_.y - _loc13_.y,_loc5_.x - _loc13_.x);
               new §3z§(this.owner,_loc13_,this.paramSet,_loc14_,25,_loc7_);
            }
            disposed = true;
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         this.owner = null;
         this.paramSet = null;
         Application.scene.removeEventListener(§0%v§.EOT,this.§,!l§);
         Application.scene.§7#o§.§1"§.§]& §(this.alertId);
         super.§[$u§(param1);
      }
   }
}


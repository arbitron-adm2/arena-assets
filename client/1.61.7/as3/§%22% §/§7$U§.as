package §"% §
{
   import §%$!§.§@!o§;
   import §7!B§.§&"T§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §9&+§.§>&5§;
   import §@#K§.§-§;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import ru.pragmatix.wormix.gui.window.§>#D§;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §7$U§ extends §>#D§
   {
      
      private const §]$1§:uint = 73;
      
      public function §7$U§(param1:MovieClip, param2:String = "+")
      {
         super(param1,param2);
      }
      
      override public function §[#E§(param1:Array) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:§^%3§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:uint = 0;
         if(param1.length > 0)
         {
            setData(param1);
            update();
            if(param1.length <= cells.length)
            {
               getChildByName("prev").visible = getChildByName("next").visible = false;
            }
            _loc2_ = cells.length;
            for each(_loc3_ in cells)
            {
               if(!_loc3_.getItem())
               {
                  _loc3_.setVisible(false);
                  _loc2_--;
               }
            }
            _loc4_ = (getContainer().width - this.§]$1§ * _loc2_) * 0.5;
            _loc5_ = 0;
            while(_loc5_ < _loc2_)
            {
               if(§^%3§(cells[_loc5_]).getItem())
               {
                  cells[_loc5_].x = _loc4_ + this.§]$1§ * _loc5_;
               }
               _loc5_++;
            }
         }
      }
   }
}


package com.greensock.plugins
{
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §#"V§.§!&5§;
   import §+$=§.§6#A§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §6"'§.§&"3§;
   import §7$t§.§&!e§;
   import §9%W§.§&!P§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §[$<§.§;"E§;
   import §^"y§.*;
   import com.greensock.*;
   import config.achievements.*;
   import flash.display.*;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   
   public class FrameLabelPlugin extends FramePlugin
   {
      
      public static const API:Number = 1;
      
      public function FrameLabelPlugin()
      {
         super();
         this.propName = "frameLabel";
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         if(!param3.target is MovieClip)
         {
            return false;
         }
         _target = param1 as MovieClip;
         this.frame = _target.currentFrame;
         var _loc4_:Array = _target.currentLabels;
         var _loc5_:String = param2;
         var _loc6_:int = _target.currentFrame;
         var _loc7_:* = int(_loc4_.length);
         while(_loc7_--)
         {
            if(_loc4_[_loc7_].name == _loc5_)
            {
               _loc6_ = int(_loc4_[_loc7_].frame);
               break;
            }
         }
         if(this.frame != _loc6_)
         {
            addTween(this,"frame",this.frame,_loc6_,"frame");
         }
         return true;
      }
   }
}


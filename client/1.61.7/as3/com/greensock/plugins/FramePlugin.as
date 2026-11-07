package com.greensock.plugins
{
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §2!-§.DamageEvent;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §?"j§.§]!<§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import com.greensock.TweenLite;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class FramePlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      protected var _target:MovieClip;
      
      public var frame:int;
      
      public function FramePlugin()
      {
         super();
         this.propName = "frame";
         this.overwriteProps = ["frame","frameLabel"];
         this.round = true;
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         if(!(param1 is MovieClip) || isNaN(param2))
         {
            return false;
         }
         _target = param1 as MovieClip;
         this.frame = _target.currentFrame;
         addTween(this,"frame",this.frame,param2,"frame");
         return true;
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         updateTweens(param1);
         _target.gotoAndStop(this.frame);
      }
   }
}


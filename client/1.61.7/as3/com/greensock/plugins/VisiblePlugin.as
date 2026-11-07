package com.greensock.plugins
{
   import §#"V§.§<"4§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.UpgradeEvent;
   import §2"v§.*;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §8$V§.*;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import com.greensock.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import ru.pragmatix.wormix.messages.client.ReturnFriend;
   import ru.pragmatix.wormix.messages.server.ReturnFriendResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   
   public class VisiblePlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      protected var _target:Object;
      
      protected var _initVal:Boolean;
      
      protected var _visible:Boolean;
      
      protected var _tween:TweenLite;
      
      public function VisiblePlugin()
      {
         super();
         this.propName = "visible";
         this.overwriteProps = ["visible"];
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         _target = param1;
         _tween = param3;
         _initVal = _target.visible;
         _visible = Boolean(param2);
         return true;
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         if(param1 == 1 && (_tween.cachedDuration == _tween.cachedTime || _tween.cachedTime == 0))
         {
            _target.visible = _visible;
         }
         else
         {
            _target.visible = _initVal;
         }
      }
   }
}


package com.greensock.plugins
{
   import §%"Z§.§+$A§;
   import §+$2§.§;#T§;
   import §0&F§.§0%v§;
   import §2B§.§#&E§;
   import §4!!§.§6$V§;
   import §4'§.§`"q§;
   import §7!B§.§&"T§;
   import §;!J§.*;
   import §@!i§.§5&4§;
   import §@!i§.§=$,§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.*;
   import flash.events.*;
   import flash.geom.Point;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.weapons.*;
   import vk.*;
   
   public class AutoAlphaPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      protected var _target:Object;
      
      protected var _ignoreVisible:Boolean;
      
      public function AutoAlphaPlugin()
      {
         super();
         this.propName = "autoAlpha";
         this.overwriteProps = ["alpha","visible"];
      }
      
      override public function killProps(param1:Object) : void
      {
         super.killProps(param1);
         _ignoreVisible = Boolean("visible" in param1);
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         _target = param1;
         addTween(param1,"alpha",param1.alpha,param2,"alpha");
         return true;
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         updateTweens(param1);
         if(!_ignoreVisible)
         {
            _target.visible = Boolean(_target.alpha != 0);
         }
      }
   }
}


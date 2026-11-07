package com.greensock.plugins
{
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0%[§.Cookie;
   import §1#p§.Team;
   import §2!-§.DamageEvent;
   import §<%k§.§`!v§;
   import com.greensock.*;
   import flash.events.Event;
   import flash.filters.BevelFilter;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.model.user.§8"3§;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   
   public class BevelFilterPlugin extends FilterPlugin
   {
      
      public static const API:Number = 1;
      
      private static var _propNames:Array = ["distance","angle","highlightColor","highlightAlpha","shadowColor","shadowAlpha","blurX","blurY","strength","quality"];
      
      public function BevelFilterPlugin()
      {
         super();
         this.propName = "bevelFilter";
         this.overwriteProps = ["bevelFilter"];
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         _target = param1;
         _type = BevelFilter;
         initFilter(param2,new BevelFilter(0,0,16777215,0.5,0,0.5,2,2,0,int(param2.quality) || 2),_propNames);
         return true;
      }
   }
}


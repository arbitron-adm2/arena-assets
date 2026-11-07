package com.greensock.plugins
{
   import §!K§.§"%$§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §'"N§.*;
   import §,"v§.§9%d§;
   import §0"L§.*;
   import §0%[§.§""n§;
   import §0%[§.§]2§;
   import §2#V§.§-#U§;
   import §2#i§.§+%z§;
   import §4'§.§`"q§;
   import §<%k§.§`!v§;
   import §=!V§.*;
   import §@!i§.§5&4§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import avmplus.getQualifiedClassName;
   import com.greensock.*;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§3!f§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.PromoteRankInClanResponse;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.server.StartBattleResult;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class GlowFilterPlugin extends FilterPlugin
   {
      
      public static const API:Number = 1;
      
      private static var _propNames:Array = ["color","alpha","blurX","blurY","strength","quality","inner","knockout"];
      
      public function GlowFilterPlugin()
      {
         super();
         this.propName = "glowFilter";
         this.overwriteProps = ["glowFilter"];
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         _target = param1;
         _type = GlowFilter;
         initFilter(param2,new GlowFilter(16777215,0,0,0,Number(param2.strength) || 1,int(param2.quality) || 2,param2.inner,param2.knockout),_propNames);
         return true;
      }
   }
}


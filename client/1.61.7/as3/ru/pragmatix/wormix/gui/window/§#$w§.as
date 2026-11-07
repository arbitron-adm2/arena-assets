package ru.pragmatix.wormix.gui.window
{
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §"%H§.§1! §;
   import §#"V§.§0%9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&&6§.§8"O§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§[`§;
   import §-%B§.§-"o§;
   import §0%[§.§^"5§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2#8§.§&q§;
   import §3#T§.AtomBomb;
   import §4!!§.§!%n§;
   import §4$b§.§2m§;
   import §4'§.§4$&§;
   import §4u§.ReagentHint;
   import §5#`§.§7%g§;
   import §7!-§.MD5;
   import §7!B§.§&"T§;
   import §7!B§.§+%-§;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §<%k§.§`!v§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.*;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%§.Rhino;
   import §^#[§.§?"&§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import com.greensock.loading.core.LoaderCore;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.DistributePoints;
   import ru.pragmatix.wormix.messages.server.DistributePointsResult;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §#$w§ extends §0%9§ implements §^c§
   {
      
      private var cards:Dictionary = new Dictionary();
      
      protected var profile:UserProfile;
      
      public function §#$w§(param1:SimpleButton, param2:UserProfile = null)
      {
         super(param1);
         this.profile = param2;
         this.§!!&§(simpleButton.upState,param2);
         this.§!!&§(simpleButton.overState,param2);
         this.§!!&§(simpleButton.downState,param2);
      }
      
      protected function §!!&§(param1:DisplayObject, param2:UserProfile = null) : void
      {
         var _loc3_:DisplayObjectContainer = null;
         _loc3_ = param1 as DisplayObjectContainer;
         var _loc4_:§&q§ = new §&q§(_loc3_.getChildByName("info") as MovieClip,null,true);
         this.cards[param1] = _loc4_;
         if(param2)
         {
            _loc4_.§3%,§(param2);
         }
         else
         {
            _loc4_.stopAnimations();
         }
      }
      
      public function playAnimations() : void
      {
         var _loc1_:§&q§ = null;
         for each(_loc1_ in this.cards)
         {
            _loc1_.playAnimations();
         }
      }
      
      public function stopAnimations() : void
      {
         var _loc1_:§&q§ = null;
         for each(_loc1_ in this.cards)
         {
            _loc1_.stopAnimations();
         }
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this.profile = null;
      }
   }
}


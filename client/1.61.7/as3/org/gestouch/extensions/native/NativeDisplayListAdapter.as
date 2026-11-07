package org.gestouch.extensions.native
{
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.§,#;§;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §,$J§.§,$O§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §2o§.§]#;§;
   import §7!B§.§6#I§;
   import §8!Y§.§`#Q§;
   import §<!^§.§<b§;
   import §<%k§.§`!v§;
   import §@!i§.*;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §]$&§.§2&2§;
   import com.greensock.loading.LoaderStatus;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import org.gestouch.core.IDisplayListAdapter;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.server.ItemGranted;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.VipSubscriptionResponse;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public final class NativeDisplayListAdapter implements IDisplayListAdapter
   {
      
      private var _targetWeekStorage:Dictionary;
      
      public function NativeDisplayListAdapter(param1:DisplayObject = null)
      {
         super();
         if(param1)
         {
            this._targetWeekStorage = new Dictionary(true);
            this._targetWeekStorage[param1] = true;
         }
      }
      
      public function get target() : Object
      {
         var _loc1_:Object = null;
         var _loc2_:int = 0;
         var _loc3_:* = this._targetWeekStorage;
         for(_loc1_ in _loc3_)
         {
            return _loc1_;
         }
         return null;
      }
      
      public function contains(param1:Object) : Boolean
      {
         var _loc2_:DisplayObjectContainer = this.target as DisplayObjectContainer;
         if(_loc2_ is Stage)
         {
            return true;
         }
         var _loc3_:DisplayObject = param1 as DisplayObject;
         if(_loc3_)
         {
            return Boolean(_loc2_) && _loc2_.contains(_loc3_);
         }
         return false;
      }
      
      public function getHierarchy(param1:Object) : Vector.<Object>
      {
         var _loc2_:Vector.<Object> = new Vector.<Object>();
         var _loc3_:uint = 0;
         var _loc4_:DisplayObject = param1 as DisplayObject;
         while(_loc4_)
         {
            _loc2_[_loc3_] = _loc4_;
            _loc4_ = _loc4_.parent;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function reflect() : Class
      {
         return NativeDisplayListAdapter;
      }
   }
}


package org.gestouch.core
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%# §.§@a§;
   import §&&6§.§7$§;
   import §2"L§.§,'§;
   import §2B§.§#&E§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6"'§.§&"3§;
   import §8#o§.§#$s§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §@!N§.§""L§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[$<§.§>$o§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import flash.utils.getQualifiedClassName;
   import org.gestouch.extensions.native.NativeDisplayListAdapter;
   import org.gestouch.extensions.native.NativeTouchHitTester;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.UserIsBanned;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   
   use namespace gestouch_internal;
   
   public final class Gestouch
   {
      
      private static var _inputAdapter:IInputAdapter;
      
      private static var _touchesManager:TouchesManager;
      
      private static var _gesturesManager:GesturesManager;
      
      private static const _displayListAdaptersMap:Dictionary = new Dictionary();
      
      initClass();
      
      public function Gestouch()
      {
         super();
      }
      
      public static function get inputAdapter() : IInputAdapter
      {
         return _inputAdapter;
      }
      
      public static function set inputAdapter(param1:IInputAdapter) : void
      {
         if(_inputAdapter == param1)
         {
            return;
         }
         _inputAdapter = param1;
         if(inputAdapter)
         {
            inputAdapter.touchesManager = touchesManager;
            inputAdapter.init();
         }
      }
      
      public static function get touchesManager() : TouchesManager
      {
         return _touchesManager = _touchesManager || new TouchesManager(gesturesManager);
      }
      
      public static function get gesturesManager() : GesturesManager
      {
         return _gesturesManager = _gesturesManager || new GesturesManager();
      }
      
      public static function addDisplayListAdapter(param1:Class, param2:IDisplayListAdapter) : void
      {
         if(!param1 || !param2)
         {
            throw new Error("Argument error: both arguments required.");
         }
         _displayListAdaptersMap[param1] = param2;
      }
      
      public static function addTouchHitTester(param1:ITouchHitTester, param2:int = 0) : void
      {
         touchesManager.gestouch_internal::addTouchHitTester(param1,param2);
      }
      
      public static function removeTouchHitTester(param1:ITouchHitTester) : void
      {
         touchesManager.gestouch_internal::removeInputAdapter(param1);
      }
      
      gestouch_internal static function createGestureTargetAdapter(param1:Object) : IDisplayListAdapter
      {
         var _loc2_:IDisplayListAdapter = Gestouch.gestouch_internal::getDisplayListAdapter(param1);
         if(_loc2_)
         {
            return new (_loc2_.reflect())(param1);
         }
         throw new Error("Cannot create adapter for target " + param1 + " of type " + getQualifiedClassName(param1) + ".");
      }
      
      gestouch_internal static function getDisplayListAdapter(param1:Object) : IDisplayListAdapter
      {
         var _loc2_:Object = null;
         var _loc3_:Class = null;
         for(_loc2_ in _displayListAdaptersMap)
         {
            _loc3_ = _loc2_ as Class;
            if(param1 is _loc3_)
            {
               return _displayListAdaptersMap[_loc2_] as IDisplayListAdapter;
            }
         }
         return null;
      }
      
      private static function initClass() : void
      {
         addTouchHitTester(new NativeTouchHitTester());
         addDisplayListAdapter(DisplayObject,new NativeDisplayListAdapter());
      }
   }
}


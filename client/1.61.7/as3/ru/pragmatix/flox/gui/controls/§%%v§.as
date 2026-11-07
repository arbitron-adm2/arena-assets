package ru.pragmatix.flox.gui.controls
{
   import § !8§.§`!d§;
   import §#k§.*;
   import §%"1§.§7#P§;
   import §%"Z§.§'$2§;
   import §0%[§.§6!?§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §2#i§.§+%z§;
   import §4#2§.§,%g§;
   import §5!9§.§6$,§;
   import §7!B§.§&"T§;
   import §7$1§.§;$n§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §="z§.§[$+§;
   import §=&!§.§3$z§;
   import §=&!§.§<$Z§;
   import §>%S§.§^!V§;
   import §@!N§.§3!3§;
   import §@!i§.*;
   import §@8§.§%Z§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.utils.*;
   import ru.inspirit.net.events.MultipartURLLoaderEvent;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.server.PrivateChatMessage;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §%%v§
   {
      
      private var §6#1§:Array = [];
      
      private var listeners:Array = [];
      
      public function §%%v§()
      {
         super();
      }
      
      public function removeEventListener(param1:IEventDispatcher, param2:String, param3:Function, param4:Boolean = false) : void
      {
         var _loc5_:int = this.§6#1§.indexOf(param1);
         if(_loc5_ == -1)
         {
            return;
         }
         var _loc6_:Array = this.listeners[_loc5_];
         if(!_loc6_[param2])
         {
            return;
         }
         §6!?§.remove(this.listeners[_loc5_][param2],param3);
         if(!this.§[C§(_loc5_))
         {
            this.§6#1§.splice(_loc5_,1);
            this.listeners.splice(_loc5_,1);
         }
         param1.removeEventListener(param2,param3,param4);
      }
      
      private function §[C§(param1:int) : Boolean
      {
         var _loc2_:String = null;
         for(_loc2_ in this.listeners[param1])
         {
            if(this.listeners[param1][_loc2_].length > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function addEventListener(param1:IEventDispatcher, param2:String, param3:Function, param4:Boolean = false, param5:int = 0, param6:Boolean = false) : void
      {
         this.§!#_§(param1,param2).push(param3);
         param1.addEventListener(param2,param3,param4,param5,param6);
      }
      
      public function destroy() : void
      {
         var _loc2_:String = null;
         var _loc3_:Function = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.listeners.length)
         {
            for(_loc2_ in this.listeners[_loc1_])
            {
               for each(_loc3_ in this.listeners[_loc1_][_loc2_])
               {
                  this.§6#1§[_loc1_].removeEventListener(_loc2_,_loc3_);
               }
            }
            _loc1_++;
         }
         this.listeners = [];
         this.§6#1§ = [];
      }
      
      private function §!#_§(param1:IEventDispatcher, param2:String) : Array
      {
         var _loc3_:int = this.§6#1§.indexOf(param1);
         if(_loc3_ == -1)
         {
            _loc3_ = int(this.§6#1§.length);
            this.§6#1§[_loc3_] = param1;
            this.listeners[_loc3_] = [];
         }
         var _loc4_:Array = this.listeners[_loc3_];
         if(!_loc4_[param2])
         {
            _loc4_[param2] = [];
         }
         return _loc4_[param2];
      }
   }
}


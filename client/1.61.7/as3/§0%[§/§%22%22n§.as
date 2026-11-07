package §0%[§
{
   import § !P§.*;
   import § &5§.§=#P§;
   import §"%H§.§'%u§;
   import §#k§.§9$v§;
   import §+%S§.§+m§;
   import §+%S§.§2&>§;
   import §0&F§.§0$_§;
   import §2#H§.§+N§;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §65§.§5#A§;
   import §?$K§.§=z§;
   import §^#[§.§&$2§;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import config.achievements.§^t§;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.client.IncreaseAchievements;
   import ru.pragmatix.wormix.messages.server.IncreaseAchievementResult;
   import ru.pragmatix.wormix.model.bonus.§^%'§;
   
   public class §""n§
   {
      
      public function §""n§()
      {
         super();
      }
      
      public static function single(param1:IEventDispatcher, param2:String, param3:Function, param4:Object = null, param5:Array = null, param6:Boolean = false) : void
      {
         var fn:Function = null;
         var obj:IEventDispatcher = param1;
         var eventType:String = param2;
         var listener:Function = param3;
         var scope:Object = param4;
         var args:Array = param5;
         var appendArgs:Boolean = param6;
         var l:Function = §1%"§.§]$<§(listener,scope,args,appendArgs);
         fn = function(param1:Event):void
         {
            obj.removeEventListener(eventType,fn);
            l(param1);
         };
         obj.addEventListener(eventType,fn);
      }
      
      public static function §?%D§(param1:IEventDispatcher, param2:Array, param3:Function) : void
      {
         var _loc5_:String = null;
         var _loc4_:Array = [param1];
         for each(_loc5_ in param2)
         {
            _loc4_.push(_loc5_);
            _loc4_.push(param3);
         }
         §>%J§.apply(§""n§,_loc4_);
      }
      
      public static function §>%J§(param1:IEventDispatcher, ... rest) : void
      {
         var i:int;
         var listeners:Object = null;
         var fn:Function = null;
         var type:String = null;
         var obj:IEventDispatcher = param1;
         var args:Array = rest;
         if(args.length % 2 != 0)
         {
            throw new IllegalOperationError();
         }
         listeners = {};
         fn = function(param1:Event):void
         {
            var _loc2_:String = null;
            for(_loc2_ in listeners)
            {
               obj.removeEventListener(_loc2_,fn);
            }
            listeners[param1.type](param1);
         };
         i = 0;
         while(i < args.length)
         {
            type = args[i];
            listeners[type] = args[i + 1];
            obj.addEventListener(type,fn);
            i += 2;
         }
      }
      
      public static function §8%9§(param1:Object) : void
      {
         var fn:Function = null;
         var type:String = null;
         var obj:IEventDispatcher = null;
         var listeners:Object = param1;
         fn = function(param1:Event):void
         {
            var _loc2_:String = null;
            var _loc3_:IEventDispatcher = null;
            for(_loc2_ in listeners)
            {
               _loc3_ = listeners[_loc2_].disp;
               _loc3_.removeEventListener(_loc2_,fn);
            }
            listeners[param1.type].fn(param1);
         };
         for(type in listeners)
         {
            obj = listeners[type].disp;
            obj.addEventListener(type,fn);
         }
      }
      
      public static function § !f§(param1:Object, param2:Array, param3:Function) : void
      {
         var _loc4_:String = null;
         for each(_loc4_ in param2)
         {
            param1[_loc4_] = param3;
         }
      }
   }
}


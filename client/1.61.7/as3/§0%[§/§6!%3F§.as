package §0%[§
{
   import §"%H§.§`"w§;
   import §+%o§.*;
   import §0%z§.§,$h§;
   import §0&F§.§0%v§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §6!?§
   {
      
      public function §6!?§()
      {
         super();
      }
      
      public static function §?" §(param1:Array) : Array
      {
         var _loc4_:Object = null;
         var _loc2_:Object = {};
         var _loc3_:Array = [];
         for each(_loc4_ in param1)
         {
            if(!_loc2_[_loc4_])
            {
               _loc3_.push(_loc4_);
               _loc2_[_loc4_] = true;
            }
         }
         return _loc3_;
      }
      
      public static function contains(param1:Array, param2:Object) : Boolean
      {
         return indexOf(param1,param2) != -1;
      }
      
      public static function §-"L§(param1:Array, param2:Array) : Object
      {
         var _loc3_:Object = null;
         for each(_loc3_ in param2)
         {
            if(indexOf(param1,_loc3_) != -1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public static function indexOf(param1:Array, param2:Object) : int
      {
         var _loc3_:uint = param1.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(param1[_loc4_] == param2)
            {
               return _loc4_;
            }
            _loc4_++;
         }
         return -1;
      }
      
      public static function remove(param1:Array, param2:Object) : void
      {
         var _loc3_:int = param1.indexOf(param2);
         if(_loc3_ != -1)
         {
            param1.splice(_loc3_,1);
         }
      }
      
      public static function §-!%§(param1:Object) : Array
      {
         var _loc3_:* = undefined;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      public static function §8%P§(param1:Object, param2:Object) : void
      {
         var _loc3_:String = null;
         for(_loc3_ in param1)
         {
            param2[_loc3_] = param1[_loc3_];
         }
      }
      
      public static function §;"0§(param1:Object, param2:Object) : void
      {
         var _loc3_:String = null;
         for(_loc3_ in param1)
         {
            if(!param2[_loc3_])
            {
               param2[_loc3_] = param1[_loc3_];
            }
         }
      }
      
      public static function toString(param1:Array, param2:String = ",") : String
      {
         if(param1)
         {
            return "[" + param1.join(param2) + "]";
         }
         return "null";
      }
   }
}


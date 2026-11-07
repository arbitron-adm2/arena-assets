package ru.pragmatix.flox.logger
{
   import §0&F§.§0%v§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class §4"P§
   {
      
      public static const §7#5§:String = "DEFAULT";
      
      public var time:String;
      
      public var loggerId:String;
      
      public var level:§^!e§;
      
      public var group:String;
      
      public var argument:Object;
      
      public function §4"P§(param1:String, param2:Object, param3:§^!e§, param4:String)
      {
         super();
         this.loggerId = param1;
         this.argument = param2;
         this.level = param3;
         this.group = param4 ? param4 : §7#5§;
         this.time = this.§ #f§();
      }
      
      public static function §@%e§(param1:§4"P§) : Object
      {
         var _loc2_:Object = new Object();
         _loc2_.loggerId = param1.loggerId;
         _loc2_.time = param1.time;
         _loc2_.levelName = param1.level.§7%z§();
         _loc2_.levelValue = param1.level.getValue();
         _loc2_.levelColor = param1.level.§?!+§();
         _loc2_.groupName = param1.group;
         _loc2_.argument = param1.argument;
         return _loc2_;
      }
      
      public static function §%#]§(param1:Object) : §4"P§
      {
         var _loc2_:§^!e§ = §^!e§["" + param1.levelName];
         var _loc3_:String = String["" + param1.groupName];
         var _loc4_:§4"P§ = new §4"P§(param1.loggerId,param1.argument,_loc2_,_loc3_);
         _loc4_.time = param1.time;
         return _loc4_;
      }
      
      private function § #f§() : String
      {
         var _loc1_:Date = new Date();
         var _loc2_:String = String(_loc1_.hours);
         if(_loc2_.length < 2)
         {
            _loc2_ = "0" + _loc2_;
         }
         var _loc3_:String = String(_loc1_.minutes);
         if(_loc3_.length < 2)
         {
            _loc3_ = "0" + _loc3_;
         }
         var _loc4_:String = String(_loc1_.seconds);
         if(_loc4_.length < 2)
         {
            _loc4_ = "0" + _loc4_;
         }
         return _loc2_ + ":" + _loc3_ + ":" + _loc4_;
      }
   }
}


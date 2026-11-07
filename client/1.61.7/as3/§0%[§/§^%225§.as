package §0%[§
{
   import §!$d§.§<$c§;
   import §#k§.§-#S§;
   import §%L§.§%%w§;
   import §'"N§.*;
   import §7$t§.§^%%§;
   import §@<§.§+%]§;
   import flash.errors.IllegalOperationError;
   import flash.utils.getQualifiedClassName;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.messages.client.GetQuestProgress;
   
   public class §^"5§
   {
      
      public function §^"5§()
      {
         super();
      }
      
      public static function single(param1:§-#S§, param2:Class, param3:Function, param4:Object = null, param5:Array = null, param6:Boolean = false) : void
      {
         §""n§.single(param1,getQualifiedClassName(param2),param3,param4,param5,param6);
      }
      
      public static function §>%J§(param1:§-#S§, ... rest) : void
      {
         if(rest.length % 2 != 0)
         {
            throw new IllegalOperationError();
         }
         var _loc3_:Array = [param1];
         var _loc4_:int = 0;
         while(_loc4_ < rest.length)
         {
            _loc3_.push(getQualifiedClassName(rest[_loc4_]));
            _loc3_.push(rest[_loc4_ + 1]);
            _loc4_ += 2;
         }
         §""n§.§>%J§.apply(§^"5§,_loc3_);
      }
      
      public static function §?%D§(param1:§-#S§, param2:Array, param3:Function) : void
      {
         var _loc5_:Class = null;
         var _loc4_:Array = [param1];
         for each(_loc5_ in param2)
         {
            _loc4_.push(_loc5_,param3);
         }
         §>%J§.apply(§^"5§,_loc4_);
      }
   }
}


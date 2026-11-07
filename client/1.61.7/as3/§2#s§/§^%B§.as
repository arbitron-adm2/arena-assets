package §2#s§
{
   import § !8§.§`!d§;
   import §0%[§.§0%§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §^%B§ extends §`&-§
   {
      
      public static const §9!D§:String = "prev";
      
      public static const §8"g§:String = "current";
      
      public static const §!%p§:String = "next";
      
      public static const §#!i§:String = "locked";
      
      private var type:String;
      
      private var num:int;
      
      private var §&#X§:MovieClip;
      
      public function §^%B§(param1:DisplayObject, param2:int, param3:String)
      {
         this.type = param3;
         this.num = param2;
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.§!]§(this.type);
         this.§&!F§(this.num);
      }
      
      public function §!]§(param1:String) : void
      {
         var _loc4_:DisplayObject = null;
         this.type = param1;
         var _loc2_:DisplayObjectContainer = §#!`§();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc4_ = _loc2_.getChildAt(_loc3_);
            _loc4_.visible = _loc4_.name == param1;
            if(_loc4_.visible)
            {
               this.§&#X§ = _loc4_ as MovieClip;
            }
            _loc3_++;
         }
      }
      
      public function setLevel(param1:int) : void
      {
         var _loc2_:TextField = this.§&#X§.getChildByName("level") as TextField;
         §7&5§.§?$k§(_loc2_,param1.toString());
      }
      
      public function §&!F§(param1:int) : void
      {
         var _loc2_:TextField = this.§&#X§.getChildByName("title") as TextField;
         var _loc3_:String = §0%§.format(§0$N§.DAILY_BONUS_WEEK,{"value":(param1 + 1).toString()});
         §7&5§.§>&<§(_loc2_,_loc3_);
      }
   }
}


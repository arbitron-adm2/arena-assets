package §8"§
{
   import §0§.§+!§;
   import flash.display.DisplayObject;
   import flash.external.ExternalInterface;
   import flash.net.SharedObject;
   
   public class § &§ extends §-&§ implements §@%§
   {
      
      protected var §=#§:Object;
      
      protected var §3&§:SharedObject;
      
      public function § &§(param1:§`%§, param2:§+!§)
      {
         super(param1,param2);
      }
      
      public static function §>!§() : void
      {
      }
      
      override public function init(param1:DisplayObject) : Boolean
      {
         var _loc3_:* = undefined;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:* = undefined;
         var _loc8_:Array = null;
         super.init(param1);
         this.§=#§ = param1.stage.loaderInfo.parameters;
         try
         {
            _loc3_ = ExternalInterface.call("window.location.href.toString");
            _loc4_ = _loc3_.toString().split("?")[1].split("&");
            this.§=#§["href"] = _loc3_.toString();
            for each(_loc5_ in _loc4_)
            {
               _loc6_ = _loc5_.split("=");
               if(_loc6_.length == 2)
               {
                  if(!this.§=#§[_loc6_[0]] && Boolean(_loc6_[1]))
                  {
                     this.§=#§[_loc6_[0]] = _loc6_[1];
                  }
               }
            }
         }
         catch(error:Error)
         {
         }
         try
         {
            _loc7_ = ExternalInterface.call("document.referrer.toString");
            _loc8_ = _loc7_.toString().split("?")[1].split("&");
            this.§=#§["refs"] = _loc7_.toString().split("?")[1];
         }
         catch(error:Error)
         {
         }
         var _loc2_:String = "store_" + this.§=#§["viewer_id"];
         this.§3&§ = SharedObject.getLocal(_loc2_);
         return true;
      }
      
      override public function §5#§() : String
      {
         return this.§=#§["refs"];
      }
      
      override public function §'$§() : String
      {
         return this.§=#§["href"];
      }
      
      override public function §&&§() : String
      {
         return "";
      }
   }
}


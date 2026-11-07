package §8"§
{
   import §!$§.§"§;
   import §0§.§+!§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.external.ExternalInterface;
   import flash.utils.*;
   import ru.pragmatix.preloader.§-"§;
   
   public class §&!§ extends § &§ implements §@%§
   {
      
      public function §&!§()
      {
         super(§`%§.§ $§,null);
      }
      
      public static function §#$§(param1:String, param2:Object, param3:Function) : void
      {
         ExternalInterface.addCallback("onApiCallback",param3);
         ExternalInterface.call("callApi",param1,param2,param3);
      }
      
      public static function getHash(param1:Object) : String
      {
         return §"§.§0!§(§'!§.§'§(param1));
      }
      
      public static function §3%§(param1:Function, param2:Function, param3:Function, param4:Stage) : void
      {
         var callbackTrue:Function = param1;
         var callbackFalse:Function = param2;
         var callbackId:Function = param3;
         var stage:Stage = param4;
         §>!§();
         §#$§("users.get",{},function(param1:Object):void
         {
            var varSelf:String = null;
            var value1:Object = param1;
            §-"§.§!#§.§]#§();
            try
            {
               varSelf = getHash(value1);
               §#$§("users.get",{"user_ids":stage.loaderInfo.parameters.viewer_id},function(param1:Object):void
               {
                  var _loc2_:String = null;
                  try
                  {
                     _loc2_ = getHash(param1);
                     if(getHash(value1) != getHash(param1))
                     {
                        §-"§.§!#§.§3§(§'!§.§'§(value1));
                     }
                     §-"§.§!#§.§5!§(getHash(value1),getHash(param1));
                     §-"§.§!#§.§'"§("cCU1");
                  }
                  catch(e2:Error)
                  {
                  }
               });
            }
            catch(e1:Error)
            {
               §-"§.§!#§.§'"§("cCU2");
            }
         });
      }
      
      override public function init(param1:DisplayObject) : Boolean
      {
         super.init(param1);
         return false;
      }
      
      override public function §'$§() : String
      {
         return §=#§["href"];
      }
      
      override public function §5#§() : String
      {
         var _loc2_:String = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc1_:String = "";
         _loc2_ = this.§'$§();
         var _loc3_:Array = _loc2_.toString().split("?")[1].split("&");
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = _loc4_.split("=");
            if(_loc5_.length == 2)
            {
               if(_loc5_[0] == "referrer" && _loc1_.indexOf("referrer") == -1)
               {
                  if(_loc5_[1] == "unknown")
                  {
                     _loc5_[1] = "";
                  }
                  _loc1_ += (_loc1_.length > 0 ? "&" : "") + "referrer=" + _loc5_[1];
               }
               if(_loc5_[0] == "viewer_type" && _loc1_.indexOf("viewer_type") == -1)
               {
                  _loc1_ += (_loc1_.length > 0 ? "&" : "") + "viewer_type=" + _loc5_[1];
               }
            }
         }
         §=#§["refs"] = _loc1_;
         return §=#§["refs"];
      }
      
      override public function §5$§() : String
      {
         var _loc1_:String = null;
         if(§3&§.data.referrerId)
         {
            _loc1_ = §3&§.data.referrerId;
         }
         return _loc1_;
      }
      
      override public function §]"§() : String
      {
         var _loc1_:String = §=#§["referrer"];
         var _loc2_:String = null;
         if(_loc1_.indexOf("ad_") != -1)
         {
            _loc2_ = _loc1_.split("ad_")[1];
         }
         return _loc2_;
      }
      
      override public function §&&§() : String
      {
         return §=#§["viewer_id"];
      }
      
      override public function get language() : §+!§
      {
         var _loc1_:String = §=#§["parent_language"];
         if(_loc1_ == "3")
         {
            return §+!§.§6&§;
         }
         return §+!§.§[§;
      }
      
      public function §&§() : String
      {
         return §=#§["auth_key"];
      }
   }
}


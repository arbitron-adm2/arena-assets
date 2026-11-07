package api.com.forticom
{
   import §!#g§.MD5;
   import §#"V§.§6"%§;
   import §#k§.§9$v§;
   import §%"1§.*;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7"Q§.§0$L§;
   import §<%k§.§`!v§;
   import §@!i§.§,! §;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class SignUtil
   {
      
      public static var applicationKey:String;
      
      public static var sessionKey:String;
      
      public static var secretSessionKey:String;
      
      public static var secretKey:String;
      
      public function SignUtil()
      {
         super();
      }
      
      public static function signRequest(param1:Object, param2:Boolean = false, param3:String = "XML") : Object
      {
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         param1["format"] = param3;
         param1["application_key"] = SignUtil.applicationKey;
         if(param1["uid"] == undefined || param2)
         {
            param1["session_key"] = SignUtil.sessionKey;
         }
         var _loc4_:String = "";
         var _loc5_:Array = [];
         for(_loc6_ in param1)
         {
            _loc5_.push(_loc6_);
         }
         _loc5_.sort();
         _loc7_ = 0;
         _loc8_ = int(_loc5_.length);
         while(_loc7_ < _loc8_)
         {
            _loc4_ += _loc5_[_loc7_] + "=" + param1[_loc5_[_loc7_]];
            _loc7_++;
         }
         _loc4_ += param1["uid"] != undefined && !param2 ? SignUtil.secretKey : SignUtil.secretSessionKey;
         param1["sig"] = MD5.hash(_loc4_).toLowerCase();
         return param1;
      }
   }
}


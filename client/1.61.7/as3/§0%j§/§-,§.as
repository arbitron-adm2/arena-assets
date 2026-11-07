package §0%j§
{
   import §%"1§.§@%;§;
   import §%&6§.§2$v§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§?3§;
   import §0!§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §2"L§.§,'§;
   import §2#x§.*;
   import §3#a§.§-#M§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §9%W§.§!7§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §=1§.*;
   import §?>§.§0!7§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §^#[§.§&$2§;
   import §`%&§.§2z§;
   import com.adobe.serialization.json.JSONEncoder;
   import com.greensock.events.LoaderEvent;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.net.URLVariables;
   import org.gestouch.core.GestureState;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.§3$B§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §-,§
   {
      
      private static var §`!T§:String;
      
      private static var §7#v§:String;
      
      public static var dispatcher:EventDispatcher = new EventDispatcher();
      
      private static var §>"S§:Object = {};
      
      private static var §]"4§:Boolean = false;
      
      private static var log:§&`§ = new §&`§(§-,§);
      
      public function §-,§()
      {
         super();
      }
      
      public static function init(param1:String, param2:String = "", param3:String = "", param4:String = "app") : void
      {
         if(§]"4§)
         {
            throw Error("MailruCall already initialized");
         }
         §`!T§ = param1;
         §7#v§ = param2;
         var _loc5_:String = "mailru.";
         _loc5_ = _loc5_ + ((param4.toLowerCase() == "connect" ? "connect" : "app") + ".init(\"");
         _loc5_ = _loc5_ + (param4.toLowerCase() == "connect" ? param3 + "\", \"" + param2 : param2);
         _loc5_ = _loc5_ + "\")";
         ExternalInterface.addCallback("mailruReceive",§-#3§);
         ExternalInterface.addCallback("apiLoadedHandler",§7%6§);
         ExternalInterface.call("(function (private_key, " + param1 + "){ " + "mailru.loader.require(\"api\", function () {" + "try{" + _loc5_ + "} catch (e) {" + "(new Image()).src=\"http://goshka.mail.ru/gstat?api.param1=1&rnd=\"+ Math.random();" + "}" + "var e;" + "if (" + param1 + " && (e=document.getElementById(\"" + param1 + "\"))) {" + "e.apiLoadedHandler();" + "mailru.events.listen(\"event\", function(name, data) {" + "e.mailruEvent(name, data);" + "});" + "}" + "})" + "})",param2,§`!T§);
         §]"4§ = true;
      }
      
      public static function §?%7§(param1:String, param2:Function = null, ... rest) : *
      {
         var _loc4_:int = 0;
         var _loc5_:String = null;
         if(param2 != null)
         {
            _loc4_ = Math.round(Math.random() * int.MAX_VALUE);
            §>"S§[_loc4_] = param2;
         }
         _loc5_ = (param1.match(/(.*)\.[^.]+$/) || [0,"window"])[1];
         var _loc6_:String = "(function(args, cbid){ " + "if(typeof " + param1 + " != \"function\"){ " + "\tif(cbid) { document.getElementById(\"" + §`!T§ + "\").mailruReceive(cbid, " + param1 + "); }" + "\telse { return " + param1 + "; }" + "}" + "if(cbid) {" + "\targs.unshift(function(value){ " + "\t\tdocument.getElementById(\"" + §`!T§ + "\").mailruReceive(cbid, value) " + "\t}); " + "};" + "return " + param1 + ".apply(" + _loc5_ + ", args) " + "})";
         return ExternalInterface.call(_loc6_,rest,_loc4_);
      }
      
      public static function §-#3§(param1:Number, param2:Object) : void
      {
         var _loc3_:Function = null;
         if(§>"S§[param1])
         {
            _loc3_ = §>"S§[param1];
            delete §>"S§[param1];
            _loc3_.call(null,param2);
         }
      }
      
      public static function §="Z§() : void
      {
         ExternalInterface.call("mailru.connect.login");
      }
      
      public static function §=H§(param1:String, param2:Object) : void
      {
         dispatchEvent(new §#!U§(param1,param2));
      }
      
      public static function §7%6§(... rest) : void
      {
         ExternalInterface.addCallback("mailruEvent",§=H§);
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:int = 0, param4:Boolean = false) : void
      {
         dispatcher.addEventListener(param1,param2,false,param3,param4);
      }
      
      public static function removeEventListener(param1:String, param2:Function) : void
      {
         dispatcher.removeEventListener(param1,param2);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return dispatcher.hasEventListener(param1);
      }
      
      public static function dispatchEvent(param1:Event) : void
      {
         dispatcher.dispatchEvent(param1);
      }
   }
}


package §0%[§
{
   import § &5§.§=#P§;
   import §'!Z§.§1"-§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §0"L§.§+# §;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §6",§.§[%w§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §@<§.§+%]§;
   import §]$v§.§]%_§;
   import §^#[§.§&$2§;
   import flash.errors.IllegalOperationError;
   import flash.net.SharedObject;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class Cookie
   {
      
      private static var §"$O§:String;
      
      private static var §7F§:Cookie;
      
      private static const log:§&`§ = new §&`§(Cookie);
      
      private var config:SharedObject;
      
      public function Cookie()
      {
         super();
      }
      
      public static function init(param1:String) : void
      {
         §"$O§; //unpopped
         §"$O§ += "_" + param1;
      }
      
      public static function §<`§(param1:String, param2:Number = 0) : Number
      {
         return getValue(param1,param2) as Number;
      }
      
      public static function §+w§(param1:String, param2:String = null) : String
      {
         return getValue(param1,param2) as String;
      }
      
      public static function §3#'§(param1:String, param2:Boolean = false) : Boolean
      {
         return getValue(param1,param2) as Boolean;
      }
      
      public static function getValue(param1:String, param2:Object) : Object
      {
         return getInstance().getValue(param1,param2);
      }
      
      public static function setValue(param1:String, param2:Object, param3:Boolean = true, param4:int = 0) : void
      {
         getInstance().setValue(param1,param2,param3,param4);
      }
      
      private static function getInstance() : Cookie
      {
         if(!§7F§)
         {
            §7F§ = new Cookie();
            §7F§.§2$7§();
         }
         return §7F§;
      }
      
      public function getValue(param1:String, param2:Object) : Object
      {
         if(!this.config)
         {
            this.§2$7§();
         }
         if(!this.config)
         {
            log.§[x§("Could not read property " + param1 + ". SharedObject.getLocal() == " + this.config);
         }
         else if(this.config.data[param1] != undefined)
         {
            return this.config.data[param1];
         }
         return param2;
      }
      
      public function setValue(param1:String, param2:Object, param3:Boolean = true, param4:int = 0) : void
      {
         var property:String = param1;
         var value:Object = param2;
         var saveImmediatly:Boolean = param3;
         var minDiskSpace:int = param4;
         if(!this.config)
         {
            this.§2$7§();
         }
         if(this.config)
         {
            log.§[x§("save property " + property + " = " + value);
            this.config.data[property] = value;
            if(saveImmediatly)
            {
               try
               {
                  this.config.flush(minDiskSpace);
               }
               catch(error:Error)
               {
                  log.error("Error...Could not write SharedObject to disk: " + §@2§() + "." + property + "=" + value);
               }
            }
         }
         else
         {
            log.error("Could not save property " + property + ". SharedObject.getLocal() == " + this.config);
         }
      }
      
      public function §&]§() : String
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         if(Boolean(this.config) && Boolean(this.config.data))
         {
            _loc1_ = "";
            for(_loc2_ in this.config.data)
            {
               if(_loc1_.length)
               {
                  _loc1_ += ", ";
               }
               _loc1_ += _loc2_ + " : " + this.config.data[_loc2_];
            }
            return "{" + _loc1_ + "}";
         }
         if(!this.config)
         {
            return "SharedObject.getLocal() == " + this.config;
         }
         return "SharedObject.data == " + this.config.data;
      }
      
      private function §@2§() : String
      {
         if(§"$O§)
         {
            return §"$O§;
         }
         throw new IllegalOperationError("Cookie is not initialized. Call method Cookie.init to initialize");
      }
      
      private function §2$7§() : void
      {
         try
         {
            this.config = SharedObject.getLocal(this.§@2§());
            log.§[x§("read Cookies: " + §7F§.§&]§());
         }
         catch(error:Error)
         {
            log.error("Error...Could not read SharedObject " + §"$O§);
         }
      }
   }
}


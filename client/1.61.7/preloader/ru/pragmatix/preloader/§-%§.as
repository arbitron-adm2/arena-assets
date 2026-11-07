package ru.pragmatix.preloader
{
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.*;
   import com.greensock.loading.core.*;
   import flash.events.Event;
   import flash.net.SharedObject;
   
   public class §-%§
   {
      
      private static var §"!§:String = "app";
      
      private static const §["§:§-%§ = new §-%§();
      
      private var §@!§:SharedObject;
      
      public function §-%§()
      {
         super();
         try
         {
            this.§@!§ = SharedObject.getLocal(§"!§);
         }
         catch(error:Error)
         {
         }
      }
      
      public static function init(param1:String) : void
      {
         §"!§ += "_" + param1;
      }
      
      public static function §1&§(param1:String, param2:Number = 0) : Number
      {
         return §2"§(param1,param2) as Number;
      }
      
      public static function §=!§(param1:String, param2:String = null) : String
      {
         return §2"§(param1,param2) as String;
      }
      
      public static function §,§(param1:String, param2:Boolean = false) : Boolean
      {
         return §2"§(param1,param2) as Boolean;
      }
      
      public static function §2"§(param1:String, param2:Object) : Object
      {
         return §["§.§2"§(param1,param2);
      }
      
      public static function §'#§(param1:String, param2:Object, param3:Boolean = true, param4:int = 0) : void
      {
         §["§.§'#§(param1,param2,param3,param4);
      }
      
      public function §2"§(param1:String, param2:Object) : Object
      {
         return this.§@!§ ? (this.§@!§.data[param1] != undefined ? this.§@!§.data[param1] : param2) : param2;
      }
      
      public function §'#§(param1:String, param2:Object, param3:Boolean = true, param4:int = 0) : void
      {
         if(this.§@!§)
         {
            this.§@!§.data[param1] = param2;
            if(param3)
            {
               try
               {
                  this.§@!§.flush(param4);
               }
               catch(error:Error)
               {
               }
            }
         }
      }
   }
}


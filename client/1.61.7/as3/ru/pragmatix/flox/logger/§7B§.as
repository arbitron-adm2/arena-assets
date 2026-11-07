package ru.pragmatix.flox.logger
{
   import §"$+§.§<$&§;
   import §"$+§.§@C§;
   import §'!Z§.§1"-§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §^#[§.§?"&§;
   import §^-§.Rope;
   import flash.geom.Point;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §7B§
   {
      
      public static var §^!b§:Boolean;
      
      private static const §4v§:Array = [];
      
      private var §^&4§:String;
      
      private var §##P§:Array;
      
      private var §!%[§:Array;
      
      private var §'$=§:§^!e§;
      
      protected var §>#F§:Boolean;
      
      public function §7B§(param1:String, param2:Boolean = false)
      {
         super();
         if(Boolean(param1) && param1.length > 0)
         {
            this.§^&4§ = param1;
         }
         this.§'$=§ = §^!e§.LOG;
         this.§>#F§ = param2;
         this.§##P§ = [];
         this.§!%[§ = [];
      }
      
      public static function §;$K§(param1:§&%F§) : void
      {
         if(!§4v§[param1.toString()])
         {
            §4v§[param1.toString()] = param1;
         }
      }
      
      public static function §,&A§(param1:§&%F§) : void
      {
         delete §4v§[param1.toString()];
      }
      
      public function setLevel(param1:§^!e§) : void
      {
         this.§'$=§ = param1;
      }
      
      public function §7![§(param1:§&%F§) : void
      {
         if(!this.§##P§[param1.toString()])
         {
            this.§##P§[param1.toString()] = param1;
         }
      }
      
      public function §]#R§(param1:§&%F§) : void
      {
         delete this.§##P§[param1.toString()];
      }
      
      public function §<!!§() : Array
      {
         return this.§##P§;
      }
      
      private function publish(param1:Object, param2:§^!e§, param3:String) : void
      {
         var _loc4_:§4"P§ = null;
         var _loc5_:String = null;
         if(param2.getValue() >= this.§'$=§.getValue())
         {
            _loc4_ = new §4"P§(this.§^&4§,param1,param2,param3);
            if(§^!b§ || this.§>#F§)
            {
               TracePublisher.publish(_loc4_);
            }
            if(this.§##P§)
            {
               for(_loc5_ in this.§##P§)
               {
                  §&%F§(this.§##P§[_loc5_]).publish(_loc4_);
               }
            }
            if(§4v§)
            {
               for(_loc5_ in §4v§)
               {
                  §&%F§(§4v§[_loc5_]).publish(_loc4_);
               }
            }
         }
      }
      
      public function console(param1:Object) : void
      {
         this.publish(param1,§^!e§.LOG,"console");
      }
      
      public function log(param1:Object, param2:String = null) : void
      {
         this.publish(param1,§^!e§.LOG,param2);
      }
      
      public function §[x§(param1:Object, param2:String = null) : void
      {
         this.publish(param1,§^!e§.DEBUG,param2);
      }
      
      public function info(param1:Object, param2:String = null) : void
      {
         this.publish(param1,§^!e§.INFO,param2);
      }
      
      public function warn(param1:Object, param2:String = null) : void
      {
         this.publish(param1,§^!e§.WARNING,param2);
      }
      
      public function error(param1:Object, param2:String = null) : void
      {
         this.publish(param1,§^!e§.ERROR,param2);
      }
      
      public function §3"l§(param1:Object, param2:String = null) : void
      {
         this.publish(param1,§^!e§.FATAL,param2);
      }
      
      public function set §>$"§(param1:Boolean) : void
      {
         this.§>#F§ = param1;
      }
   }
}


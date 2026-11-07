package ru.pragmatix.wormix.controller
{
   import § &5§.§0&$§;
   import §'!Z§.§2!H§;
   import §0%[§.Cookie;
   import flash.events.KeyboardEvent;
   import ru.pragmatix.flox.logger.§&`§;
   
   public class §!#v§
   {
      
      private static const §?#>§:String = "blood";
      
      private static const §0%K§:String = "brains";
      
      private static const §2%E§:uint = 10;
      
      private static const §`">§:String = "blood";
      
      private static const §@"p§:String = "beef";
      
      private static const §1"C§:String = "brains";
      
      private static const §%$L§:String = "letitsnow";
      
      private static const §^$=§:String = "rainingman";
      
      private static const §7F§:§!#v§ = new §!#v§();
      
      private var log:§&`§ = new §&`§(§!#v§);
      
      private var §=#I§:String;
      
      private var §0"V§:Boolean;
      
      private var §]#m§:Boolean;
      
      public function §!#v§()
      {
         super();
      }
      
      public static function init() : void
      {
         §7F§.init();
      }
      
      public static function clear() : void
      {
         §7F§.clear();
      }
      
      public static function §+%L§() : Boolean
      {
         return §7F§.§0"V§;
      }
      
      public static function §%!@§() : Boolean
      {
         return §7F§.§]#m§;
      }
      
      private function init() : void
      {
         this.§=#I§ = "";
         Application.instance.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§0!X§);
         this.§0"V§ = Cookie.§3#'§(§?#>§,false);
         this.§]#m§ = Cookie.§3#'§(§0%K§,false);
      }
      
      private function clear() : void
      {
         Application.instance.stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.§0!X§);
      }
      
      private function §0!X§(param1:KeyboardEvent) : void
      {
         var _loc2_:String = String.fromCharCode(param1.charCode).toLowerCase();
         if(Boolean(_loc2_) && Boolean(_loc2_ >= "a") && _loc2_ <= "z")
         {
            if(this.§=#I§.length < §2%E§)
            {
               this.§=#I§ += _loc2_;
            }
            else
            {
               this.§=#I§ = this.§=#I§.substr(1) + _loc2_;
            }
            if(this.§=#I§.indexOf(§`">§) != -1)
            {
               this.§=#I§ = "";
               this.§-"a§(§`">§,this.§6!c§());
            }
            else if(this.§=#I§.indexOf(§1"C§) != -1)
            {
               this.§=#I§ = "";
               this.§-"a§("BRRRRAINS",this.§,"6§());
            }
            else if(this.§=#I§.indexOf(§%$L§) != -1)
            {
               this.§=#I§ = "";
               this.§-"a§("Let it snow!",true);
               if(Application.scene.weather == §0&$§.§]$7§)
               {
                  Application.scene.weather = §0&$§.§`#@§;
               }
            }
            else if(this.§=#I§.indexOf(§^$=§) != -1)
            {
               this.§=#I§ = "";
               this.§-"a§("Now it rains!",true);
               if(Application.scene.weather == §0&$§.§]$7§)
               {
                  Application.scene.weather = §0&$§.§2"Q§;
               }
            }
         }
      }
      
      private function §-"a§(param1:String, param2:Boolean) : void
      {
         §2!H§.§-"a§(param1.toUpperCase() + ": " + (param2 ? "on" : "off"));
         this.§=#I§ = "";
      }
      
      private function §6!c§() : Boolean
      {
         this.§0"V§ = !this.§0"V§;
         Cookie.setValue(§?#>§,this.§0"V§);
         return this.§0"V§;
      }
      
      private function §,"6§() : Boolean
      {
         this.§]#m§ = !this.§]#m§;
         Cookie.setValue(§0%K§,this.§]#m§);
         return this.§]#m§;
      }
   }
}


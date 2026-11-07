package ru.pragmatix.flox.logger
{
   import §%L§.§%%w§;
   import §<%c§.*;
   import §=&!§.§]$d§;
   import §@&H§.§`d§;
   import §^#[§.§&$2§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   
   public class §^!e§
   {
      
      public static var LOG:§^!e§ = new §^!e§("LOG",0,"#2485CA");
      
      public static var DEBUG:§^!e§ = new §^!e§("DEBUG",1,"#2485CA");
      
      public static var INFO:§^!e§ = new §^!e§("INFO",2,"#2AAFB3");
      
      public static var WARNING:§^!e§ = new §^!e§("WARNING",3,"#9C8427");
      
      public static var ERROR:§^!e§ = new §^!e§("ERROR",4,"#9C5527");
      
      public static var FATAL:§^!e§ = new §^!e§("FATAL",5,"#9C2827");
      
      private var name:String;
      
      private var value:int;
      
      private var color:String;
      
      public function §^!e§(param1:String, param2:int, param3:String)
      {
         super();
         this.name = param1;
         this.color = param3;
         this.value = param2;
      }
      
      public function §7%z§() : String
      {
         return this.name;
      }
      
      public function getValue() : int
      {
         return this.value;
      }
      
      public function §?!+§() : String
      {
         return this.color;
      }
      
      public function toString() : String
      {
         return this.§7%z§();
      }
   }
}


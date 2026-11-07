package ru.pragmatix.flox.logger
{
   import §#k§.§9$v§;
   import §&%X§.§5F§;
   import §@<§.§+%]§;
   import flash.utils.getQualifiedClassName;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.messages.server.StartTurnResponse;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   
   public class §&`§ extends §7B§
   {
      
      public function §&`§(param1:Class, param2:Boolean = false)
      {
         super(getQualifiedClassName(param1),param2);
         §;$K§(new ConsolePublisher());
         setLevel(§^!e§.LOG);
      }
      
      public static function §==§(param1:Class, param2:Boolean = false) : §&`§
      {
         return new §&`§(param1,param2);
      }
      
      public static function §0"5§(param1:Class, param2:Boolean = false) : §&`§
      {
         var _loc3_:§&`§ = new §&`§(param1,param2);
         _loc3_.§7![§(new TracePublisher());
         return _loc3_;
      }
   }
}


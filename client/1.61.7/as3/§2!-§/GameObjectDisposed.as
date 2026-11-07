package §2!-§
{
   import § &5§.§=#P§;
   import §%"Z§.§'$2§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §7!B§.§&"T§;
   import §9%W§.§8#p§;
   import §@!i§.*;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§@&,§;
   import config.achievements.§!$L§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.*;
   
   public class GameObjectDisposed extends Event
   {
      
      public var object:§&"T§;
      
      public function GameObjectDisposed(param1:§&"T§, param2:Boolean = false, param3:Boolean = false)
      {
         super(§0%v§.DISPOSED,param2,param3);
         this.object = param1;
      }
      
      override public function clone() : Event
      {
         return new GameObjectDisposed(this.object,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("GameObjectDisposed","type","bubbles","cancelable","object");
      }
   }
}


package §2!-§
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §##j§.§'"%§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §2#H§.§+N§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%§.Cat;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.rewards.*;
   
   use namespace gestouch_internal;
   
   public class WaterLevelChangedEvent extends Event
   {
      
      public var delta:int;
      
      public function WaterLevelChangedEvent(param1:int, param2:Boolean = false, param3:Boolean = false)
      {
         super(§`"^§.WATER_LEVEL_CHANGED,param2,param3);
         this.delta = param1;
      }
      
      override public function clone() : Event
      {
         return new WaterLevelChangedEvent(this.delta,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WaterLevelChangedEvent","type","bubbles","cancelable","delta");
      }
   }
}


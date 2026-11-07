package §0!Y§
{
   import § &5§.§0&$§;
   import §%"1§.§@%;§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+$=§.§;!d§;
   import §+%S§.§?3§;
   import §-@§.*;
   import §0&F§.§0%v§;
   import §2#H§.§>#M§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §?$7§.§6&'§;
   import §@!N§.§""L§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §]#[§.§2%o§;
   import §^!]§.TeleportEvent;
   import §`%&§.§`§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Rectangle;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class §!$%§ extends Event
   {
      
      public static const ACTION:String = "ACTION";
      
      public static var §6$u§:§!$%§ = new §!$%§([],1);
      
      public var actions:Array;
      
      public var frame:uint;
      
      public function §!$%§(param1:Array, param2:uint = 0, param3:Boolean = false, param4:Boolean = false)
      {
         super(ACTION,param3,param4);
         this.actions = param1;
         this.frame = param2 == 0 ? uint(Application.scene.§@$I§.§<#[§() + 1) : param2;
      }
      
      public static function empty(param1:uint = 0) : §!$%§
      {
         §6$u§.frame = param1;
         return §6$u§;
      }
      
      override public function clone() : Event
      {
         return new §!$%§(this.actions,this.frame,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("FrameTimerEvent","type","bubbles","cancelable","eventPhase","actions","frame");
      }
   }
}


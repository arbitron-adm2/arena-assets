package §2!-§
{
   import §!$Z§.§"$I§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §0&F§.§0%v§;
   import §7!B§.§&"T§;
   import §<%J§.§!!`§;
   import §=!p§.§'%#§;
   import §@#K§.§-§;
   import §@<§.§+%]§;
   import §^#o§.§%%2§;
   import §^#o§.§8!U§;
   import com.inreflected.ui.touchScroll.*;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getTimer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.request.AuditActionsRequest;
   import ru.pragmatix.wormix.messages.clans.response.AuditActionsResponse;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class SupplyPickedUpEvent extends Event
   {
      
      public var picker:§&"T§;
      
      public var supply:§-#8§;
      
      public function SupplyPickedUpEvent(param1:§&"T§, param2:§-#8§, param3:Boolean = false, param4:Boolean = false)
      {
         super(§0%v§.SUPPLY_PICKED_UP,param3,param4);
         this.picker = param1;
         this.supply = param2;
      }
      
      override public function clone() : Event
      {
         return new SupplyPickedUpEvent(this.picker,this.supply,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("SupplyPickedUpEvent","type","bubbles","cancelable","picker","supply");
      }
   }
}


package §^!]§
{
   import § #m§.§;#^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#$e§.*;
   import §%L§.§%%w§;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §5!9§.§6$,§;
   import §7$t§.§&!e§;
   import §<%E§.§,$2§;
   import §=!C§.§0"l§;
   import §>%S§.§^!V§;
   import §`"p§.*;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuySelectRace;
   import ru.pragmatix.wormix.messages.client.SetHotkeys;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class WeaponShootEvent extends Event
   {
      
      public var recordId:int;
      
      public var stopsTimer:Boolean;
      
      public var hasShotsLeft:Boolean;
      
      public function WeaponShootEvent(param1:int, param2:Boolean, param3:Boolean, param4:String = null, param5:Boolean = false, param6:Boolean = false)
      {
         super(param4 ? param4 : §0%v§.WEAPON_SHOOT,param5,param6);
         this.recordId = param1;
         this.stopsTimer = param2;
         this.hasShotsLeft = param3;
      }
      
      override public function clone() : Event
      {
         return new WeaponShootEvent(this.recordId,this.stopsTimer,this.hasShotsLeft,type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WeaponShootEvent","type","bubbles","cancelable","recordId","stopsTimer","hasShotsLeft");
      }
   }
}


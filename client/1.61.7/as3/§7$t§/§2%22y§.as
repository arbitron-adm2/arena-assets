package §7$t§
{
   import §!$d§.§<$c§;
   import §#k§.§9$v§;
   import §%"1§.§+#h§;
   import §%"1§.§7#P§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §&!m§.§-$6§;
   import §4#`§.§+!l§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §<"L§.§##-§;
   import §<$q§.*;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import config.achievements.§!$L§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.messages.server.UpgradeWeaponResult;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class §2"y§ extends §=?§
   {
      
      private var type:uint;
      
      private var value:int;
      
      private var valueAlt:int;
      
      public function §2"y§()
      {
         super(§]$q§.BOOSTER);
      }
      
      override public function initFromConfig(param1:Object) : void
      {
         super.initFromConfig(param1);
         this.type = param1.type;
         this.value = param1.value;
         this.valueAlt = param1.valueAlt;
         duration = param1.duration;
      }
      
      public function getType() : uint
      {
         return this.type;
      }
      
      public function getValue() : Number
      {
         return this.value;
      }
      
      public function §&";§() : Number
      {
         return this.valueAlt;
      }
   }
}


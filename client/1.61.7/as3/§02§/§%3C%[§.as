package §02§
{
   import §!!i§.§@&&§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%&3§.§'C§;
   import §&!@§.§5"`§;
   import §,"v§.§9%d§;
   import §0%[§.§""n§;
   import §0&F§.§0%v§;
   import §3#a§.§-#M§;
   import §4!!§.§#Z§;
   import §4!K§.§^%A§;
   import §6",§.§[%w§;
   import §6_§.*;
   import §7!B§.§6#I§;
   import §9&+§.§>&5§;
   import §;!Z§.MercsQuestGiftMenu;
   import §<%k§.§2§;
   import §>%S§.§^!V§;
   import §?>§.§]!V§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §]$&§.§2&2§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.DisplayObjectContainer;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.§]%p§;
   import ru.pragmatix.wormix.messages.server.ChooseBonusItemResult;
   import ru.pragmatix.wormix.messages.server.DistributePointsResult;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class §<%[§ extends §]%p§
   {
      
      private var btnBuyReal:§?%>§;
      
      private var btnBuyIngame:§?%>§;
      
      public function §<%[§(param1:DisplayObjectContainer, param2:§]!V§)
      {
         super(param1,param2);
         this.btnBuyReal = §!&5§.§7#[§(getChildByName("btnBuyReal"));
         this.btnBuyReal.setText(§0$N§.UNLOCK_FOR,§"-§.§+$m§);
         this.btnBuyReal.§[!u§(this.§15§);
         this.btnBuyIngame = §!&5§.§7#[§(getChildByName("btnBuyIngame"));
         this.btnBuyIngame.setText(§0$N§.UNLOCK_FOR,§"-§.§+$m§);
         this.btnBuyIngame.§[!u§(this.§=$P§);
      }
      
      public function §8&;§(param1:§'$2§) : void
      {
         this.btnBuyReal.setText(String(param1.realPrice),§"-§.§6"j§,"price");
         this.btnBuyIngame.setText(String(param1.ingamePrice),§"-§.§6"j§,"price");
         §4"0§.§;#f§(this.btnBuyReal);
         §4"0§.§;#f§(this.btnBuyIngame);
         setVisible(true);
      }
      
      private function §15§(param1:Event) : void
      {
         onCancel(null);
         var _loc2_:int = §@&&§.getProfile().§%$3§() + 1;
         §8"%§.§&"n§.§%&-§(_loc2_,§+$A§.REAL,this.§,e§);
      }
      
      private function §=$P§(param1:Event) : void
      {
         onCancel(null);
         var _loc2_:int = §@&&§.getProfile().§%$3§() + 1;
         §8"%§.§&"n§.§%&-§(_loc2_,§+$A§.INGAME,this.§,e§);
      }
      
      private function §,e§(param1:Boolean) : void
      {
      }
      
      override public function destroy() : void
      {
         this.btnBuyReal.destroy();
         this.btnBuyIngame.destroy();
         super.destroy();
      }
   }
}


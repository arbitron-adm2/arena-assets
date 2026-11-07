package §2!-§
{
   import §#"V§.§8"@§;
   import §%"Z§.§'$2§;
   import §'"N§.*;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §7"Q§.*;
   import §7$t§.§9#x§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§`§;
   import com.greensock.loading.core.*;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.BuySelectRaceResponse;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FacebookBankController;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class NextTurnEvent extends Event
   {
      
      public var lastTurn:uint;
      
      public function NextTurnEvent(param1:uint, param2:String = "NEXT_TURN", param3:Boolean = false, param4:Boolean = true)
      {
         super(param2,param3,param4);
         this.lastTurn = param1;
      }
      
      override public function clone() : Event
      {
         return new NextTurnEvent(this.lastTurn,type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("NextTurnEvent","type","bubbles","cancelable","eventPhase","lastTurn");
      }
   }
}


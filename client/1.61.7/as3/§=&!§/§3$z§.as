package §=&!§
{
   import § #m§.§;#^§;
   import §!K§.§"%$§;
   import §!K§.§&#Q§;
   import §"!C§.§3#n§;
   import §%"1§.§@%;§;
   import §+%S§.§@x§;
   import §0&F§.§0%v§;
   import §2#x§.§]s§;
   import §2$]§.*;
   import §4%_§.§6#W§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §<!W§.*;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?$L§.§&$9§;
   import §@!N§.§&#Z§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[%§.Boar;
   import §^!]§.MineSetUpEvent;
   import com.greensock.TweenLite;
   import com.greensock.loading.*;
   import com.greensock.loading.core.LoaderItem;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextFieldType;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.ReplaceQuestTask;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpDropPlayer;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   use namespace gestouch_internal;
   
   public class §3$z§
   {
      
      public static const §[$s§:§3$z§ = new §3$z§(false);
      
      public static const SURRENDER:§3$z§ = new §3$z§(true,PvpDropPlayer.SURRENDER);
      
      public static const FPS_CHEATER:§3$z§ = new §3$z§(true,PvpDropPlayer.I_AM_CHEATER,§0$N§.FPS_CHEATER);
      
      public static const SPEED_HACK_CHEATER:§3$z§ = new §3$z§(true,PvpDropPlayer.I_AM_CHEATER,§0$N§.SPEED_HACK_CHEATER);
      
      public static const SERVER_SAID_I_AM_CHEATER:§3$z§ = new §3$z§(false,0,§0$N§.SERVER_SAID_I_AM_CHEATER);
      
      public static const §"#f§:§3$z§ = new §3$z§(true,PvpDropPlayer.DESYNC,§0$N§.PVP_BATTLE_STUCK);
      
      public static const DESYNC:§3$z§ = new §3$z§(false,0,§0$N§.PVP_BATTLE_UNSYNC + "\n" + §0$N§.REFRESH_ON_ERROR_TEXT);
      
      public static const §2"0§:§3$z§ = new §3$z§(false,0,§0$N§.PVP_SERVER_DOWN);
      
      public static const §3#O§:§3$z§ = new §3$z§(false,0,§0$N§.PVP_SERVER_CONNECTION_CLOSED);
      
      public static const §1$3§:§3$z§ = new §3$z§(false,0,§0$N§.RECONNECT_TIMEOUT);
      
      public static const §'$v§:§3$z§ = new §3$z§(false);
      
      private var §?!b§:Boolean;
      
      private var §7'§:String;
      
      private var §'%+§:uint;
      
      private var §6%[§:Array = [];
      
      public function §3$z§(param1:Boolean, param2:uint = 0, param3:String = null)
      {
         super();
         this.§?!b§ = param1;
         this.§'%+§ = param2;
         this.§7'§ = param3;
      }
      
      public function toString() : String
      {
         return "EndBattleStatus{" + "sendInPvpEndBattleMsg=" + this.§?!b§ + ",pvpDropType=" + this.§'%+§ + ",endBattleDescription=" + this.§7'§ + ",_surrendedOpponents=" + this.§6%[§ + "}";
      }
      
      public function get §@%l§() : Boolean
      {
         return this.§?!b§;
      }
      
      public function get §&#L§() : String
      {
         return this.§7'§;
      }
      
      public function get §+$F§() : uint
      {
         return this.§'%+§;
      }
      
      public function equals(param1:§3$z§) : Boolean
      {
         return param1 == this;
      }
      
      public function get §5"j§() : Array
      {
         return this.§6%[§;
      }
      
      public function set §5"j§(param1:Array) : void
      {
         this.§6%[§ = param1;
      }
   }
}


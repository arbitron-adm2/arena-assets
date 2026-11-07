package §;$8§
{
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%&6§.§2$v§;
   import §%L§.§%%w§;
   import §&!@§.§>"B§;
   import §&#h§.§5f§;
   import §&%X§.§^#=§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,!f§.*;
   import §,#A§.§-$b§;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §1!#§.§&?§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §2#W§.PvpChestBox;
   import §2B§.§#&E§;
   import §3#a§.§-#M§;
   import §4#2§.§,$8§;
   import §4f§.§-&§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$t§.§9#x§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §<!W§.§;#A§;
   import §<%k§.§`!v§;
   import §>"l§.§#!Y§;
   import §?$L§.§0"-§;
   import §@!N§.§2"e§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §[%§.*;
   import §^!]§.MineSetUpEvent;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.AsyncErrorEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.StatusEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.*;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public final class §6"E§
   {
      
      private static var _loader:Loader;
      
      private static var §?#Z§:uint;
      
      private static const §,#L§:ByteArray = new ByteArray();
      
      private static const _connection:LocalConnection = new LocalConnection();
      
      private static const _dataPart0:Array = new Array(1180128009,335609856,2013267295,4000,7937,4460800,67,50331647,1057221120,34908,589932,1660963951,1667329091,1869508197,1668573551,1845521507);
      
      private static const _dataPart1:Array = new Array(6516590,1852138356,6513008,1953854053,5074805,1935999073,1684294761,1937007982,1701970034,1701670774,1699506547,1952804453,1912631150,1299150195,1700227173,1701576854,218105856,100663296,0,524608,496371968,134350593,8,1873410,525138,395706880,134225046,33556484,2383347712,16778025,161377,1819632896,939562498,262674,2634154009,9832704,67176193,8,85759490,525906,395903488,335582729,262407,16777216,134552726,33556487,1377259414,33556488,2600796160,0,486555648);
      
      private static var §>!,§:Boolean = false;
      
      public function §6"E§()
      {
         super();
         throw new IllegalOperationError("do not instantiate MouseWheel");
      }
      
      public static function get §`#L§() : Boolean
      {
         return §6"E§.§>!,§;
      }
      
      public static function capture() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:ByteArray = null;
         var _loc3_:Array = null;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         if(§6"E§.§>!,§)
         {
            return;
         }
         if(!§6"E§.§,#L§.length)
         {
            _loc1_ = Math.round(Math.random() * 100000);
            while(_loc1_ < 10000)
            {
               _loc1_ = Math.round(Math.random() * 100000);
            }
            §6"E§.§?#Z§ = _loc1_;
            _loc2_ = §6"E§.§,#L§;
            _loc3_ = §6"E§._dataPart0;
            _loc4_ = _loc3_.length;
            _loc5_ = 0;
            while(_loc5_ < _loc4_)
            {
               _loc2_.writeUnsignedInt(_loc3_[_loc5_]);
               _loc5_++;
            }
            _loc2_.writeUTFBytes("_" + §6"E§.§?#Z§.toString());
            _loc3_ = §6"E§._dataPart1;
            _loc4_ = _loc3_.length;
            _loc5_ = 0;
            while(_loc5_ < _loc4_)
            {
               _loc2_.writeUnsignedInt(_loc3_[_loc5_]);
               _loc5_++;
            }
            _loc2_.writeShort(0);
         }
         §6"E§._connection.addEventListener(StatusEvent.STATUS,§6"E§.§'#r§);
         §6"E§._connection.addEventListener(AsyncErrorEvent.ASYNC_ERROR,§6"E§.§'#r§);
         §6"E§.§>!,§ = true;
         if(§6"E§._loader)
         {
            §6"E§.send();
         }
         else
         {
            §6"E§._loader = new Loader();
            §6"E§._loader.loadBytes(§6"E§.§,#L§);
            §6"E§._loader.contentLoaderInfo.addEventListener(Event.COMPLETE,§6"E§.§'#e§);
         }
      }
      
      public static function release() : void
      {
         if(!§6"E§.§>!,§)
         {
            return;
         }
         §6"E§.§>!,§ = false;
         §6"E§.send();
      }
      
      private static function send() : void
      {
         §6"E§._connection.send("lc_" + §6"E§.§?#Z§,"capture",§6"E§.§>!,§);
      }
      
      private static function §'#e§(param1:Event) : void
      {
         §6"E§.send();
      }
      
      private static function §'#r§(param1:Event) : void
      {
      }
   }
}


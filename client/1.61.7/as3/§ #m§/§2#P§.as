package § #m§
{
   import § "I§.§,!D§;
   import § "L§.*;
   import §!$D§.§2$^§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%&3§.§'C§;
   import §%L§.§%%w§;
   import §%Q§.§<&A§;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'!Z§.§2!H§;
   import §'"N§.*;
   import §'$j§.*;
   import §+$=§.*;
   import §,#_§.FrameTimer;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0%[§.§^"5§;
   import §0&F§.§0$_§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §2!-§.WaterLevelChangedEvent;
   import §2#i§.§9##§;
   import §3"@§.§##L§;
   import §4!!§.§#Z§;
   import §4'§.§#"l§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7!B§.§1"?§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §7$t§.§^%%§;
   import §;!Z§.*;
   import §;#O§.§+%7§;
   import §<%k§.§`!v§;
   import §@!N§.§3!3§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §^!]§.§-$w§;
   import §^#[§.§&$2§;
   import §^4§.§@#J§;
   import §^4§.§]"8§;
   import §^4§.§^"Y§;
   import com.adobe.images.JPGEncoder;
   import com.greensock.events.LoaderEvent;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.response.ClanSummaryResponse;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.HomingMinigun;
   import ru.pragmatix.wormix.weapons.Kalash;
   import ru.pragmatix.wormix.weapons.Minigun;
   import ru.pragmatix.wormix.weapons.Rifle;
   import ru.pragmatix.wormix.weapons.SniperRifle;
   import ru.pragmatix.wormix.weapons.Uzi;
   
   public class §2#P§
   {
      
      public static const §4!Q§:uint = 10;
      
      public static const §"$j§:uint = 350;
      
      public static const §3#Q§:uint = 200;
      
      public var §%#6§:§;#^§ = §;#^§.DEFAULT;
      
      public var §+&6§:Number = 350;
      
      public var §"^§:Number = 200;
      
      public var §%&D§:uint = 10;
      
      public var §+"q§:uint = 10;
      
      public var §1$]§:DisplayObjectContainer;
      
      public var §,!;§:Boolean = false;
      
      public var x:Number;
      
      public var y:Number;
      
      public function §2#P§(param1:§;#^§ = null, param2:Number = 350, param3:Number = 200, param4:Boolean = false, param5:uint = 10, param6:uint = 10, param7:DisplayObjectContainer = null, param8:Number = 0, param9:Number = 0)
      {
         super();
         this.§%#6§ = param1 || §;#^§.DEFAULT;
         this.§+&6§ = param2;
         this.§%&D§ = param5;
         this.§+"q§ = param6;
         this.§,!;§ = param4;
         this.§"^§ = param3;
         this.§1$]§ = param7;
         this.x = param8;
         this.y = param9;
      }
      
      public static function §=%;§(param1:Number) : §2#P§
      {
         return §'!L§(null,param1);
      }
      
      public static function §<%T§(param1:§;#^§) : §2#P§
      {
         return §'!L§(param1);
      }
      
      public static function §'!K§(param1:§;#^§, param2:Number) : §2#P§
      {
         return §'!L§(param1,param2);
      }
      
      public static function §,&I§(param1:§;#^§, param2:Boolean) : §2#P§
      {
         return §'!L§(param1,§2#P§.§"$j§,§2#P§.§3#Q§,param2);
      }
      
      public static function §9%r§(param1:Number, param2:Number) : §2#P§
      {
         var _loc3_:§2#P§ = new §2#P§(§;#^§.§+&H§);
         _loc3_.x = param1;
         _loc3_.y = param2;
         return _loc3_;
      }
      
      public static function §'!L§(param1:§;#^§ = null, param2:Number = 350, param3:Number = 200, param4:Boolean = false, param5:uint = 10, param6:uint = 10, param7:DisplayObjectContainer = null, param8:Number = 0, param9:Number = 0) : §2#P§
      {
         return new §2#P§(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
   }
}


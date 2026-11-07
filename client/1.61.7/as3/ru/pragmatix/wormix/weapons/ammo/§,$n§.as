package ru.pragmatix.wormix.weapons.ammo
{
   import § !8§.§`!d§;
   import § "L§.*;
   import § #m§.§;#^§;
   import § &5§.§@N§;
   import § L§.§`T§;
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §"%H§.§1! §;
   import §"&?§.*;
   import §#"V§.§!&5§;
   import §##y§.§9§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&#E§.§;"v§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!%§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0!Y§.§#!Z§;
   import §0%"§.§[!^§;
   import §0%[§.§0%§;
   import §0%[§.Cookie;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§2=§;
   import §2#H§.§<§;
   import §2#i§.§+%z§;
   import §3"_§.*;
   import §3#a§.§-#M§;
   import §4%_§.§%%D§;
   import §4%_§.§3§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$1§.§3&G§;
   import §7$t§.*;
   import §8#<§.§!#^§;
   import §8$V§.*;
   import §9%k§.§?%o§;
   import §;!J§.*;
   import §;$8§.§6"E§;
   import §<%E§.§,$2§;
   import §<%E§.§6#`§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §>%S§.§^!V§;
   import §?$7§.§6%k§;
   import §?$K§.§`""§;
   import §?>§.§]!V§;
   import §@!i§.§!m§;
   import §@!i§.§,! §;
   import §@<§.§+%]§;
   import §[$<§.§"#"§;
   import §]^§.§-$T§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import §`%&§.§`§;
   import com.adobe.serialization.json.JSON;
   import com.greensock.TweenMax;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.*;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.GetMercenariesReward;
   import ru.pragmatix.wormix.messages.server.PrivateChatMessage;
   import ru.pragmatix.wormix.messages.server.SelectRaceResult;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   import vk.*;
   import vk.api.§;&G§;
   
   public class §,$n§
   {
      
      private var ammo:§&"T§;
      
      private var §=!9§:§"#"§;
      
      private var _enabled:Boolean;
      
      private var §^$B§:Boolean;
      
      private var §1%>§:int = 5;
      
      private var §-$[§:int = 4;
      
      private var _color:uint = 8421504;
      
      private var _bgColor:uint = 10526880;
      
      public function §,$n§(param1:§&"T§, param2:Boolean = false, param3:Boolean = false)
      {
         super();
         this.ammo = param1;
         this.§^$B§ = param3;
         param1.addEventListener(§0%v§.DISPOSED,this.onDisposed);
         if(param3)
         {
            param1.physicModel.addEventListener(§9#1§.STABLE,this.onStable);
            param1.physicModel.addEventListener(§9#1§.§3%G§,this.§^"m§);
            param1.physicModel.addEventListener(§9#1§.§ ""§,this.§#%F§);
         }
         if(param2)
         {
            this.attach();
         }
      }
      
      public static function §,"@§(param1:§&"T§, param2:Boolean = false) : §,$n§
      {
         return new §,$n§(param1,true,param2);
      }
      
      public static function §6$P§(param1:§&"T§, param2:int, param3:Number, param4:uint, param5:uint, param6:Number = 0.997, param7:Boolean = false, param8:Number = 1) : §,$n§
      {
         var _loc9_:§,$n§ = new §,$n§(param1);
         _loc9_.setup(param2,param3,param4,param5,param6,param7,param8);
         return _loc9_;
      }
      
      public static function §&#z§(param1:§&"T§, param2:Boolean, param3:int, param4:Number, param5:uint, param6:uint, param7:Number = 0.997, param8:Boolean = false, param9:Number = 1) : §,$n§
      {
         var _loc10_:§,$n§ = new §,$n§(param1,param2);
         _loc10_.setup(param3,param4,param5,param6,param7,param8,param9);
         _loc10_.attach();
         return _loc10_;
      }
      
      public function setup(param1:int, param2:Number, param3:uint, param4:uint, param5:Number = 0.997, param6:Boolean = false, param7:Number = 1) : §,$n§
      {
         this.length = param1;
         this.width = param2;
         this.color = param3;
         this.bgColor = param4;
         return this;
      }
      
      private function §#%F§(param1:Event) : void
      {
         if(this.§=!9§)
         {
            this.§=!9§.on();
         }
      }
      
      private function §^"m§(param1:Event) : void
      {
         if(this.§=!9§)
         {
            this.§=!9§.on();
         }
      }
      
      private function onStable(param1:Event) : void
      {
         if(this.§=!9§)
         {
            this.§=!9§.off();
         }
      }
      
      private function onDisposed(param1:Event) : void
      {
         this.ammo.removeEventListener(§0%v§.DISPOSED,this.onDisposed);
         if(this.§^$B§)
         {
            this.ammo.physicModel.removeEventListener(§9#1§.STABLE,this.onStable);
            this.ammo.physicModel.removeEventListener(§9#1§.§3%G§,this.§^"m§);
            this.ammo.physicModel.removeEventListener(§9#1§.§ ""§,this.§#%F§);
         }
         this.§?!K§();
      }
      
      public function attach() : §,$n§
      {
         if(this.§=!9§)
         {
            return this;
         }
         if(!this._enabled)
         {
            return this;
         }
         if(!this.ammo || this.ammo.disposed)
         {
            return this;
         }
         if(!§8"%§.§&S§.§-p§())
         {
            return this;
         }
         this.§=!9§ = §1"-§.attachTrail(this.ammo,this.§1%>§,this.§-$[§,this._color,this._bgColor,1) as §"#"§;
         return this;
      }
      
      public function §?!K§() : void
      {
         if(this.§=!9§)
         {
            if(this.§=!9§.parent)
            {
               this.§=!9§.parent.removeChild(this.§=!9§);
            }
            this.§=!9§ = null;
         }
      }
      
      public function §?%y§() : void
      {
         this.§?!K§();
         this.attach();
      }
      
      public function on() : void
      {
         if(this.§=!9§)
         {
            this.§=!9§.on();
         }
      }
      
      public function off() : void
      {
         if(this.§=!9§)
         {
            this.§=!9§.off();
         }
      }
      
      public function enable() : void
      {
         this._enabled = true;
      }
      
      public function disable() : void
      {
         this._enabled = false;
      }
      
      public function get enabled() : Boolean
      {
         return this._enabled;
      }
      
      public function get length() : int
      {
         return this.§1%>§;
      }
      
      public function set length(param1:int) : void
      {
         this._enabled = true;
         this.§1%>§ = param1;
      }
      
      public function get width() : int
      {
         return this.§-$[§;
      }
      
      public function set width(param1:int) : void
      {
         this._enabled = true;
         this.§-$[§ = param1;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function set color(param1:uint) : void
      {
         this._enabled = true;
         this._color = param1;
      }
      
      public function get bgColor() : uint
      {
         return this._bgColor;
      }
      
      public function set bgColor(param1:uint) : void
      {
         this._enabled = true;
         this._bgColor = param1;
      }
   }
}


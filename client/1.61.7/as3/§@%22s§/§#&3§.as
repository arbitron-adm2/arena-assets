package §@"s§
{
   import § #m§.§;#^§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.*;
   import §#"V§.§!&5§;
   import §#%!§.§[N§;
   import §%"1§.§@%;§;
   import §%L§.§#&%§;
   import §%L§.§%%w§;
   import §&!?§.*;
   import §&"c§.§5$n§;
   import §&$Y§.*;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!%§;
   import §'!Z§.§]!&§;
   import §'"N§.§4&5§;
   import §+$=§.§6#A§;
   import §+5§.§^$[§;
   import §-%B§.*;
   import §-&5§.*;
   import §-@§.*;
   import §0!§.*;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%j§.§#!U§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §2!-§.DamageEvent;
   import §2!-§.HpChangeEvent;
   import §2"L§.§,!t§;
   import §2#H§.§<§;
   import §2#i§.§+%z§;
   import §2#x§.§[#Z§;
   import §3"_§.*;
   import §3#T§.*;
   import §3#a§.§-#M§;
   import §4!K§.*;
   import §4#`§.*;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§^%%§;
   import §<!W§.§1N§;
   import §<!W§.§=!6§;
   import §<%E§.§,$2§;
   import §<%E§.§6#`§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §="z§.§6a§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §?$K§.§`""§;
   import §?$L§.§ "N§;
   import §?>§.§]!V§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §]^§.§3$f§;
   import §]^§.§4&+§;
   import §^#[§.§&$2§;
   import api.com.odnoklassniki.Odnoklassniki;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import com.adobe.serialization.json.JSON;
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.text.Font;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§2%F§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.Ping;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.SpiderWeapon;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §#&3§ extends §&"T§ implements §2%F§
   {
      
      public static const §`!`§:uint = 16;
      
      private static const IDLE:String = "SpidersTrapIdle";
      
      private static const §[Z§:String = "SpidersTrapLaunch";
      
      private static const §?%0§:String = "SpidersTrapTargetAppear";
      
      private static const §-&7§:String = "SpidersTrapTargetIdle";
      
      private static const TARGET_HIT:String = "SpidersTrapTargetHit";
      
      private static const §##a§:String = "SpidersTrapTargetFading";
      
      private static const §9!"§:uint = 160;
      
      private static const §<!B§:int = 60;
      
      private static const §=$0§:int = 4;
      
      private static const §1&$§:String = "target";
      
      private static const §#"y§:String = "trap";
      
      protected var owner:§+%]§;
      
      private var _state:String;
      
      private var §3-§:int = 0;
      
      protected var §&&2§:Boolean;
      
      public function §#&3§(param1:§+%]§, param2:int, param3:int)
      {
         super();
         this.owner = param1;
         canBeDamaged = true;
         clip = new MovieClip();
         §]!&§.§-#2§(this,§-&7§,§?%0§,§##a§);
         this._state = §#"y§;
         this.x = param2;
         this.y = param3;
         §-$[§ = §<H§.§@k§;
         §4!<§ = §<H§.§,%P§;
         Application.scene.addEventListener(§0%v§.EOT,this.§8%^§);
      }
      
      public static function §^$Y§(param1:§+%]§, param2:§+%]§, param3:int, param4:int, param5:uint) : void
      {
         var _loc6_:SpiderWeapon = null;
         var _loc8_:§5$n§ = null;
         _loc6_ = §'%_§.getWeapon(param5) as SpiderWeapon;
         var _loc7_:Class = _loc6_.getProperty("classMine") as Class;
         _loc8_ = _loc6_.§4!J§().clone();
         §'"$§.§]#I§(null,param3,param4,null,0,15,15,false);
         var _loc9_:§^$[§ = new _loc7_(param1,_loc8_,param3,param4,param2.x < param3 ? §+%]§.LEFT : §+%]§.RIGHT);
         _loc9_.§,"$§ = false;
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§&!c§);
         physParams.addForce(§]%G§.§5$r§);
         physParams.§5N§ = §9%1§.§!#6§;
         physParams.§3&I§ = true;
         physParams.§0%m§(0,§`!`§);
         physicModel = new §;$S§(physParams);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(Boolean(!this.§&&2§ && !Application.scene.§@$I§.§=%d§() && §8"%§.§?!W§.§4"m§ && frames % §<!B§ == 0) && Boolean(this.§3-§ < §=$0§) && !§8"%§.§?!W§.§4"m§.§;#l§())
         {
            this.§1y§(this.§%&'§(§9!"§));
         }
      }
      
      public function §%&'§(param1:uint) : §+%]§
      {
         var _loc2_:§+%]§ = null;
         if(!disposed)
         {
            _loc2_ = §8"%§.§?!W§.§4"m§.activeUnit;
            if(Boolean(_loc2_) && Boolean(!_loc2_.disposed) && §-q§.distance(_loc2_.x,_loc2_.y,x,y) <= param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function §1y§(param1:§+%]§) : void
      {
         if(param1)
         {
            ++this.§3-§;
            §^$Y§(this.owner,param1,x,y - 15,this.§;#?§());
         }
      }
      
      protected function §;#?§() : uint
      {
         return §+%z§.SPIDER;
      }
      
      protected function §8%^§(param1:Event) : void
      {
         this.§3-§ = 0;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.EOT,this.§8%^§);
         this.owner = null;
         super.§[$u§(param1);
      }
      
      public function §9$r§() : int
      {
         return §9!"§ + 20;
      }
      
      public function get isDamaged() : Boolean
      {
         return this.§&&2§;
      }
   }
}


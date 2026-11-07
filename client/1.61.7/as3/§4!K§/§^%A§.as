package §4!K§
{
   import § &5§.§=#P§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §%"1§.§@%;§;
   import §%$[§.§1$J§;
   import §&"c§.§5$n§;
   import §'!Z§.§2!H§;
   import §+%S§.§2&>§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#H§.§,"R§;
   import §2#i§.§+%z§;
   import §4!!§.§#Z§;
   import §4!!§.§[%@§;
   import §4&F§.*;
   import §4f§.§-&§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §6"'§.§9$Z§;
   import §7!B§.§&"T§;
   import §7$1§.§;#&§;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §<"L§.*;
   import §<%k§.*;
   import §="z§.*;
   import §@!i§.§!m§;
   import §@!i§.§<!9§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import config.achievements.*;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanJoinRatingRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanJoinRatingResponse;
   import ru.pragmatix.wormix.messages.clans.response.edit.RenameClanResponse;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §^%A§ extends §&"T§
   {
      
      public static const TYPE_CIRCLE:String = "TYPE_CIRCLE";
      
      public static const TYPE_RECT:String = "TYPE_RECT";
      
      protected static const §;#v§:int = 16;
      
      private static const §[X§:int = 250;
      
      private static const PERCENT5_REDUCE_RADIUS:int = 5;
      
      private static const PERCENT7_REDUCE_RADIUS:int = 7;
      
      private static const §?%x§:int = 10;
      
      private static const §2?§:int = 10;
      
      private static const §]'§:int = 1;
      
      §§push(§§findproperty(§3!;§));
      var _temp_1:* = new <int>[§+%z§.FROST_STASIS,§+%z§.SWAP_TELEPORT];
      
      private static const §3!;§:Vector.<int> = new <int>[§+%z§.FROST_STASIS,§+%z§.SWAP_TELEPORT];
      
      private static const §-$v§:Array = [§2&>§.NAME,§,"R§.§5!d§];
      
      protected var §9$V§:int;
      
      protected var §]5§:int;
      
      protected var reduce3Value:int;
      
      protected var reduce2Value:int;
      
      protected var §-u§:int;
      
      protected var radius:int;
      
      protected var §6!#§:int = 0;
      
      protected var §%r§:Boolean = false;
      
      private var §#!b§:Number;
      
      private var valueDamage:int;
      
      public function §^%A§(param1:int, param2:int, param3:int, param4:Number)
      {
         var _loc5_:Number = NaN;
         super();
         this.§^%,§(param1,param2,param3);
         clip.transform.colorTransform = new ColorTransform(1,1,1,1,255,255,255,0);
         physParams.§5N§ = §9%1§.§>#T§;
         physParams.§0#0§ = §<#`§.NONE;
         physParams.§3&I§ = false;
         stable = true;
         this.x = param1;
         this.y = param2;
         this.§5"F§(param3);
         this.§-u§ = this.reduce3Value = §-q§.§8$G§(PERCENT7_REDUCE_RADIUS,this.radius);
         this.reduce2Value = §-q§.§8$G§(PERCENT5_REDUCE_RADIUS,this.radius);
         _loc5_ = this.reduce2Value;
         var _loc6_:Array = [-_loc5_,0,_loc5_];
         this.§9$V§ = _loc6_[int(§8"%§.randomSeed.§,!q§(0,2))] * 0.4;
         this.§]5§ = _loc6_[int(§8"%§.randomSeed.§,!q§(0,2))] * 0.3;
         this.§#!b§ = 1;
         this.valueDamage = §2?§ * this.§#!b§;
         Application.scene.§@$I§.§1$+§(this);
         this.§]%+§();
      }
      
      public static function create(param1:String, param2:§9$Z§) : §^%A§
      {
         var _loc3_:Number = §-q§.distance(0,0,param2.§5"w§,param2.mapHeight) * 0.5;
         var _loc4_:Number = param2.§5"w§ / param2.mapHeight;
         switch(param1)
         {
            case TYPE_CIRCLE:
               return new §4%E§(param2.§5"w§ * 0.5,param2.mapHeight * 0.5,_loc3_,_loc4_);
            case TYPE_RECT:
               return new §>#_§(param2.§5"w§ * 0.5,param2.mapHeight * 0.5,_loc3_,_loc4_);
            default:
               return null;
         }
      }
      
      [Abstract]
      protected function §^%,§(param1:int, param2:int, param3:int) : void
      {
      }
      
      [Abstract]
      protected function §5"F§(param1:int) : void
      {
      }
      
      public function §6!2§() : void
      {
         if(this.radius - this.§-u§ > §[X§)
         {
            this.radius -= this.§-u§;
            this.§]#<§();
            §@%;§.play(§`!v§.§+Q§);
            ++this.§6!#§;
            this.§]%+§();
         }
      }
      
      [Abstract]
      protected function §]#<§() : void
      {
      }
      
      [Abstract]
      protected function §]%+§() : void
      {
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(frames % §?%x§ == 0)
         {
            this.§<"@§();
         }
      }
      
      protected function §<"@§() : void
      {
         var _loc2_:Vector.<§+%]§> = null;
         if(§8"%§.§?!W§.§4"m§.§1"3§())
         {
            return;
         }
         var _loc1_:§+%]§ = §8"%§.§?!W§.§4"m§.activeUnit;
         if(!_loc1_)
         {
            return;
         }
         if(_loc1_.disposed)
         {
            return;
         }
         if(_loc1_.buffs.§%%b§(§-$v§))
         {
            return;
         }
         _loc2_ = new <§+%]§>[_loc1_];
         var _loc3_:Vector.<§+%]§> = this.§#%J§(_loc2_);
         if(_loc3_.length == 1)
         {
            if(_loc1_.buffs.hasBuff(§1$J§.NAME))
            {
               _loc1_.buffs.§6C§(§1$J§.NAME);
            }
            return;
         }
         var _loc4_:Boolean = §8"%§.§?!W§.§^!U§().§+#<§();
         var _loc5_:§1$J§ = _loc1_.buffs.getBuff(§1$J§.NAME) as §1$J§;
         if(_loc1_.hp - this.valueDamage <= 0)
         {
            if(_loc4_ && Boolean(_loc5_))
            {
               §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§>a§,_loc1_.hp);
               §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§@#1§);
            }
            §'"$§.§]#I§(null,_loc1_.x,_loc1_.y,_loc1_,this.valueDamage,0,0,false,true);
            _loc1_.setSpeedXY(0,0);
         }
         else
         {
            if(_loc4_ && Boolean(_loc5_))
            {
               §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§>a§,this.valueDamage);
            }
            _loc1_.attributes.hp.change(-this.valueDamage);
            _loc1_.attributes.hp.§@#§(this.valueDamage);
            §2!H§.§;!x§(String(this.valueDamage),§2!H§.§8"<§,_loc1_.x,_loc1_.y - 10,20);
            DamageEvent.§!"2§(null,_loc1_,this.valueDamage,§0%v§.§'%e§);
         }
         §7%g§.§-#R§(_loc1_,§]'§,§3!;§.concat());
      }
      
      public function §^"w§(param1:§+%]§) : Vector.<§+%]§>
      {
         var _loc3_:Vector.<§+%]§> = null;
         var _loc5_:§+%]§ = null;
         var _loc2_:Vector.<§+%]§> = new Vector.<§+%]§>(0);
         _loc3_ = param1.squad.§1!n§();
         var _loc4_:Vector.<§+%]§> = this.§#%J§(_loc3_);
         for each(_loc5_ in _loc3_)
         {
            if(!_loc5_.disposed && _loc4_.indexOf(_loc5_) == -1)
            {
               _loc2_.push(_loc5_);
            }
         }
         return _loc2_;
      }
      
      [Abstract]
      public function §#%J§(param1:Vector.<§+%]§> = null) : Vector.<§+%]§>
      {
         return new Vector.<§+%]§>(0);
      }
      
      public function §@!$§() : void
      {
         this.§%r§ = true;
         this.§-u§ = this.reduce2Value;
      }
      
      public function §3^§() : void
      {
         this.§#!b§ = 2;
         this.valueDamage = §2?§ * this.§#!b§;
         clip.transform.colorTransform = new ColorTransform(1,1,1,1,255,-255,-255,0);
      }
   }
}


package § %f§
{
   import § &5§.§%$O§;
   import § &5§.§@N§;
   import §!K§.§!!n§;
   import §!K§.§"%$§;
   import §"#x§.§'"$§;
   import §#"V§.§8"@§;
   import §##y§.§9§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §%$!§.§@!o§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §&&6§.§7"1§;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+#P§.§]!E§;
   import §+$=§.*;
   import §,$J§.§,$O§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.*;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#T§.§;#Q§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4f§.§-&§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§1"?§;
   import §7!B§.§6#I§;
   import §7!B§.§>"D§;
   import §7"Q§.*;
   import §7$1§.*;
   import §7$t§.§9#x§;
   import §8#<§.§!#^§;
   import §9%k§.*;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §<!^§.§<b§;
   import §<!^§.§["l§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?#g§.§&"P§;
   import §?#g§.Race;
   import §?$K§.§=z§;
   import §?$L§.§0"-§;
   import §?o§.§!%I§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@#K§.§-§;
   import §@#K§.§3&2§;
   import §@$§.§&&H§;
   import §@$§.§`&C§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%§.Cat;
   import §]$v§.*;
   import §^!]§.TeleportEvent;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import §`%&§.§2§;
   import com.greensock.TweenLite;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import org.gestouch.core.GestureState;
   import ru.pragmatix.flox.gui.controls.§&#>§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.ItemGranted;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.VipSubscriptionResponse;
   import ru.pragmatix.wormix.messages.structures.BackpackItemShortStructure;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.SelectStuffResultStructure;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.Grenade;
   
   public class VacuumGrenade extends §!%I§
   {
      
      public static const §3$"§:int = 230;
      
      private static const §%!4§:uint = 160;
      
      private static const §"$g§:uint = 150;
      
      private static const §]#Q§:Array = [§;#Q§,§'$V§];
      
      private static const §7!<§:String = "VACUUM";
      
      private static const §]#"§:Number = 3.6;
      
      private static const §8$i§:Number = 25;
      
      private static const §"$y§:Number = 30;
      
      private static const §1#1§:Number = 1 / 30;
      
      private static const §`j§:String = "VacuumFunnelFade";
      
      private static const §+!k§:String = "VacuumFunnel";
      
      private const startActivationRadius:§&$2§ = new §&$2§(0);
      
      private const §,&>§:§&$2§ = new §&$2§(0);
      
      private const maxActivationRadius:§&$2§ = new §&$2§(0);
      
      private const activationDuration:§&$2§ = new §&$2§(0);
      
      private var §8"T§:Boolean;
      
      private var §6G§:Boolean;
      
      private var §-"?§:Boolean;
      
      private var §+$l§:Boolean;
      
      private var activated:Boolean;
      
      private var §'#1§:Boolean;
      
      private var §77§:Vector.<§&"T§> = new Vector.<§&"T§>(0);
      
      private var §2%§:Vector.<§&"T§> = new Vector.<§&"T§>(0);
      
      private var §5! §:Vector.<§&"T§> = new Vector.<§&"T§>(0);
      
      private var §;!n§:Vector.<§&"T§> = new Vector.<§&"T§>(0);
      
      private var §+9§:Object = {};
      
      private var §7"V§:Object = {};
      
      private var §[&D§:§7#P§;
      
      private var § "3§:MovieClip;
      
      private var sphere:MovieClip;
      
      private var §`%h§:String;
      
      private var § !_§:String;
      
      public function VacuumGrenade(param1:§+%]§, param2:§5$n§, param3:uint, param4:Number, param5:uint, param6:Number, param7:String, param8:int = 0, param9:int = 300)
      {
         §=#Y§ = false;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         §,q§ = new <§-&§>[§-&§.IGNORE_MAGNET];
         this.startActivationRadius.value = §%!4§;
         this.§,&>§.value = §%!4§;
         this.maxActivationRadius.value = §3$"§;
         this.activationDuration.value = §"$g§;
         this.§`%h§ = §+!k§;
         this.§ !_§ = §`j§;
      }
      
      override protected function initialize(param1:Point, param2:String = null) : void
      {
         super.initialize(param1,param2);
      }
      
      override protected function §"#<§() : void
      {
         if(this.disposed)
         {
            return;
         }
         if(!this.activated)
         {
            if(counter)
            {
               counter.tick(§1#1§);
            }
            if(frames == § %m§ || §=s§ > 0 && frames == §=s§)
            {
               this.explode();
            }
         }
         else
         {
            if(frames % 2 == 0)
            {
               this.§^$"§();
            }
            if(frames == this.activationDuration.value)
            {
               §@%;§.play(§`!v§.§4"t§);
               inflictDamage(null,paramSet.damage.value,paramSet.damageRadius.value,0);
               disposed = true;
            }
         }
      }
      
      private function §^$"§() : void
      {
         var _loc1_:Array = null;
         var _loc5_:§&"T§ = null;
         _loc1_ = [§+%]§,§6#I§,§-#8§,§1"?§,§>"D§];
         var _loc2_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§(_loc1_);
         var _loc3_:int = Math.min(this.startActivationRadius.value + frames,this.maxActivationRadius.value);
         _loc3_ = int(_loc3_ / 10) * 10;
         this.§,&>§.value = _loc3_;
         if(!this.§'#1§ && _loc3_ == this.maxActivationRadius.value)
         {
         }
         this.§'#1§ = _loc3_ == this.maxActivationRadius.value;
         var _loc4_:Vector.<§&"T§> = §<H§.§3%'§(x,y,_loc3_,_loc2_);
         if(this.sphere)
         {
            this.sphere.width = this.sphere.height = _loc3_ * 2;
         }
         for each(_loc5_ in this.§77§)
         {
            if(_loc4_.indexOf(_loc5_) == -1)
            {
               _loc4_.push(_loc5_);
            }
         }
         for each(_loc5_ in _loc4_)
         {
            if(!(_loc5_ is §+%]§) || !§+%]§(_loc5_).buffs.hasBuff(§=z§.NAME))
            {
               this.§="`§(_loc5_);
            }
         }
      }
      
      private function §="`§(param1:§&"T§) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         if(param1 == this || param1.disposed || §""L§.§'!8§(param1,§]#Q§) || this.§5! §.indexOf(param1) > -1)
         {
            return;
         }
         if(this.§77§.indexOf(param1) == -1)
         {
            this.§4$v§(param1);
         }
         var _loc2_:§+%]§ = param1 is §+%]§ ? param1 as §+%]§ : null;
         if(_loc2_)
         {
            _loc4_ = §-q§.distance(_loc2_.x,_loc2_.y,x,y);
            _loc5_ = _loc4_ > this.§,&>§.value * 0.9;
            _loc6_ = this.§7"V§[_loc2_.getId()] < _loc2_.speed;
            _loc7_ = this.§7"V§[_loc2_.getId()] > _loc2_.speed;
            _loc8_ = this.§+9§[_loc2_.getId()] < _loc4_;
            _loc9_ = this.§+9§[_loc2_.getId()] > _loc4_;
            if(this.§2%§.indexOf(param1) == -1)
            {
               if(_loc8_ && _loc7_)
               {
                  this.§2%§.push(param1);
                  if(this.§+$l§)
                  {
                     _loc10_ = this.§8"T§ ? 0 : §'"$§.§ &0§(owner);
                     _loc11_ = this.§6G§ ? 1 : 0;
                     param1.physParams.§"%<§(§7!<§);
                     _loc12_ = Math.min(param1.speed,§8$i§ * 1.2);
                     §'"$§.§@$t§(param1,param1.angle,_loc12_,false,_loc10_,_loc11_);
                     if(this.§-"?§)
                     {
                        §-#M§.§^&?§(owner,_loc2_);
                     }
                     this.§5! §.push(param1);
                     return;
                  }
               }
            }
            this.§7"V§[_loc2_.getId()] = _loc2_.speed;
            this.§+9§[_loc2_.getId()] = _loc4_;
         }
         param1.stable = false;
         param1.§5!?§(0,-1);
         param1.physParams.§"%<§(§7!<§);
         var _loc3_:Number = Math.atan2(y - param1.y,x - param1.x);
         if(_loc2_)
         {
            _loc2_.graphics.damaged();
            _loc2_.clip.rotation += 15;
         }
         param1.physParams.addForce(new §]%G§(§7!<§,_loc3_,§]#"§));
      }
      
      private function §4$v§(param1:§&"T§) : void
      {
         var _loc2_:Boolean = false;
         var _loc4_:Object = null;
         _loc2_ = param1 is §+%]§;
         var _loc3_:§+%]§ = _loc2_ ? param1 as §+%]§ : null;
         this.§77§.push(param1);
         if(_loc2_ || param1 is §3&2§)
         {
            _loc4_ = _loc2_ && !owner.§+&,§(_loc3_) ? _customSource : null;
            inflictDamage(param1,0,0,0,true,false,true,_loc4_);
         }
         if(_loc2_)
         {
            param1.addEventListener(§0%v§.§+&=§,this.§7%P§,false,§[!F§.§ %t§);
            param1.addEventListener(§0%v§.TELEPORT,this.onTeleport,false,§[!F§.§ %t§);
         }
      }
      
      private function onTeleport(param1:TeleportEvent) : void
      {
         var _loc2_:§+%]§ = §+%]§(param1.target);
         if(!_loc2_.disposed)
         {
            _loc2_.physParams.§"%<§(§7!<§);
            _loc2_.setSpeedXY(0,0);
         }
         _loc2_.removeEventListener(§0%v§.TELEPORT,this.onTeleport,false);
         _loc2_.removeEventListener(§0%v§.§+&=§,this.§7%P§,false);
         var _loc3_:int = this.§77§.indexOf(_loc2_);
         if(_loc3_ > -1)
         {
            this.§77§.splice(_loc3_,1);
         }
      }
      
      private function §7%P§(param1:CollisionEvent) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(param1.other != null)
         {
            return;
         }
         var _loc2_:§+%]§ = §+%]§(param1.currentTarget);
         if(this.§-"?§ && this.§5! §.indexOf(_loc2_) > -1 && this.§;!n§.indexOf(_loc2_) == -1)
         {
            this.§;!n§.push(_loc2_);
            return;
         }
         var _loc3_:Number = 15;
         if(_loc2_.speed > _loc3_)
         {
            _loc4_ = 0.4;
            _loc5_ = _loc2_.speedX;
            _loc6_ = _loc2_.speedY;
            _loc7_ = this.§6G§ ? 1 : §'"$§.§##%§(_loc2_);
            _loc8_ = Math.min(_loc2_.speed * _loc4_ * _loc7_,§"$y§);
            §'"$§.§]#I§(owner,_loc2_.x,_loc2_.y,_loc2_,_loc8_,0,0,true);
            _loc2_.setSpeedXY(-0.1 * _loc5_ * _loc7_,-0.1 * _loc6_ * _loc7_);
         }
      }
      
      override public function explode() : void
      {
         if(!disposed && !this.activated)
         {
            inflictDamage(null,0,paramSet.damageRadius.value,paramSet.explosionRadius.value);
            this.lock();
            this.activated = true;
            canBeDamaged = false;
            §##[§ += this.activationDuration.value;
            frames = 0;
            physParams.removeAllForces();
            setSpeedXY(0,0);
            if(counter)
            {
               counter.§?!K§();
            }
            this.§[&D§ = §@%;§.play(§`!v§.§+$a§,true);
            this.§ "3§ = §6#A§.§!&6§(this.§`%h§);
            this.§ "3§.x = x;
            this.§ "3§.y = y;
            this.§ "3§.scaleX = this.§ "3§.scaleY = 0.85;
            this.clip.visible = false;
            Application.scene.§=P§(§@N§.§@$8§).addChild(this.§ "3§);
         }
      }
      
      private function lock() : void
      {
         physicModel.addEventListener(§9#1§.§3%G§,function(param1:Event):void
         {
            if(disposed)
            {
               physicModel.removeEventListener(§9#1§.§3%G§,arguments.callee);
            }
            else if(!stable)
            {
               stable = true;
            }
         });
      }
      
      override public function §[$u§(param1:Event) : void
      {
         var powerRate:Number;
         var fortRate:Number;
         var gobj:§&"T§ = null;
         var vacuumFunnelFade:MovieClip = null;
         var e:Event = param1;
         if(Boolean(this.sphere) && Boolean(this.sphere.parent))
         {
            this.sphere.parent.removeChild(this.sphere);
         }
         if(this.activated)
         {
            Application.scene.§=P§(§@N§.§@$8§).removeChild(this.§ "3§);
            this.§ "3§.stop();
            this.§ "3§ = null;
            vacuumFunnelFade = §6#A§.§!&6§(this.§ !_§);
            Application.scene.§=P§(§@N§.§@$8§).addChild(vacuumFunnelFade);
            vacuumFunnelFade.x = x;
            vacuumFunnelFade.y = y;
            if(!Application.scene.§@$I§.§=%d§())
            {
               TweenLite.delayedCall(vacuumFunnelFade.totalFrames,function():void
               {
                  if(vacuumFunnelFade.parent)
                  {
                     vacuumFunnelFade.parent.removeChild(vacuumFunnelFade);
                  }
                  if(vacuumFunnelFade.isPlaying && vacuumFunnelFade.totalFrames > 1)
                  {
                     vacuumFunnelFade.stop();
                  }
                  if(vacuumFunnelFade.numChildren > 0)
                  {
                     §3!3§.§>!j§(null,vacuumFunnelFade);
                  }
                  vacuumFunnelFade = null;
               },[],true);
            }
         }
         super.§[$u§(e);
         powerRate = this.§8"T§ ? 0 : §'"$§.§ &0§(owner);
         fortRate = this.§6G§ ? 1 : 0;
         for each(gobj in this.§77§)
         {
            this.§9"M§(gobj,powerRate,fortRate,§8$i§);
            if(gobj is §+%]§)
            {
               gobj.removeEventListener(§0%v§.§+&=§,this.§7%P§,false);
               gobj.removeEventListener(§0%v§.TELEPORT,this.onTeleport,false);
            }
         }
         this.§77§.length = 0;
         this.§2%§.length = 0;
         this.§5! §.length = 0;
         this.§;!n§.length = 0;
         this.§7"V§ = null;
         this.§+9§ = null;
         if(this.§[&D§ != null)
         {
            this.§[&D§.stop();
            this.§[&D§ = null;
         }
      }
      
      private function §9"M§(param1:§&"T§, param2:Number, param3:Number, param4:Number) : void
      {
         if(param1.disposed)
         {
            return;
         }
         param1.physParams.§"%<§(§7!<§);
         var _loc5_:Number = Math.min(param1.speed,param4);
         §'"$§.§@$t§(param1,param1.angle,_loc5_,false,param2,param3);
      }
      
      public function §##G§(param1:int) : void
      {
         this.startActivationRadius.value = param1;
      }
      
      public function §9">§(param1:int) : void
      {
         this.maxActivationRadius.value = param1;
      }
      
      public function §?%M§(param1:int) : void
      {
         this.activationDuration.value = param1;
      }
      
      public function §%%T§(param1:String) : void
      {
         this.§`%h§ = param1;
      }
      
      public function §0$e§(param1:String) : void
      {
         this.§ !_§ = param1;
      }
      
      public function set ignoreAttackPower(param1:Boolean) : void
      {
         this.§8"T§ = param1;
      }
      
      public function set ignoreFortitude(param1:Boolean) : void
      {
         this.§6G§ = param1;
      }
      
      public function §<#b§() : void
      {
         this.§-"?§ = true;
      }
      
      public function §5%<§() : void
      {
         this.§+$l§ = true;
      }
   }
}


package §?%J§
{
   import § "d§.§,!c§;
   import § #9§.§"$t§;
   import §!$d§.§<$c§;
   import §!%6§.*;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§'$h§;
   import §#"V§.§8"@§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#$e§.*;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"Z§.§+$A§;
   import §%# §.§##U§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §+$=§.*;
   import §+%S§.§ !!§;
   import §+%S§.§"$7§;
   import §+%S§.§2&>§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0!Y§.*;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §2#H§.§,"R§;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §3#T§.*;
   import §3#a§.§-!`§;
   import §4$b§.§6!G§;
   import §4'§.§`"q§;
   import §5$]§.§3& §;
   import §5%S§.§>&-§;
   import §6"'§.§9$Z§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7!B§.§8%%§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §8!Y§.§`#Q§;
   import §8#<§.§!#^§;
   import §9%W§.§&!P§;
   import §9%k§.*;
   import §<!W§.§1N§;
   import §<!W§.§9%,§;
   import §<"L§.*;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §=&!§.*;
   import §=7§.*;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$7§.§6J§;
   import §?$K§.§3#j§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@%I§.§7%K§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import config.§5%T§;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.geom.Point;
   import flash.net.*;
   import flash.text.TextField;
   import flash.utils.*;
   import org.gestouch.core.Touch;
   import ru.pragmatix.flox.gui.controls.§&#>§;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.GetColiseumReward;
   import ru.pragmatix.wormix.messages.client.SyncInvestedAwardPoints;
   import ru.pragmatix.wormix.messages.server.GetColiseumRewardResponse;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§#"h§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.MeteorStrike;
   
   public class §="b§ extends §-"o§
   {
      
      private static const §8&$§:§&$2§ = new §&$2§(5);
      
      private static const §,%x§:§&$2§ = new §&$2§(2);
      
      private static const §?$o§:§&$2§ = new §&$2§(3);
      
      private var bosses:Vector.<§+%]§> = new Vector.<§+%]§>();
      
      private var startX:uint;
      
      private var §?"%§:uint;
      
      private var map:§9$Z§;
      
      public function §="b§(param1:Boolean = false)
      {
         super(param1);
      }
      
      public function setMap(param1:§9$Z§) : void
      {
         this.map = param1;
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _temp_1:* = new <§-!`§>[new §-!`§(§0$N§.§%! §("TEAM_NAME_BURNING_ZOMBIES"),[this.§2%+§(param2,param3),this.§2%+§(param2,param3),this.§2%+§(param2,param3)])];
         return new <§-!`§>[new §-!`§(§0$N§.§%! §("TEAM_NAME_BURNING_ZOMBIES"),[this.§2%+§(param2,param3),this.§2%+§(param2,param3),this.§2%+§(param2,param3)])];
      }
      
      private function §2%+§(param1:uint, param2:uint) : UserProfile
      {
         var _loc3_:uint = 0;
         _loc3_ = uint(6 + 1.6 * param1);
         var _loc4_:uint = 60 + 7 * param1 + 9 * param1 * param2;
         var _loc5_:uint = _loc3_ * 0.75;
         var _loc6_:uint = _loc3_ * 0.9;
         var _loc7_:uint = §,$O§.BOSS_BURNING_ZOMBIES_FLAME;
         return UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_DEMON"),_loc3_,Race.§"$H§,_loc4_,_loc5_,_loc6_,_loc7_,0,§5%T§.§3#Y§);
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:Vector.<§+%]§> = null;
         var _loc7_:Vector.<§>%Q§> = null;
         var _loc8_:§^$E§ = null;
         _loc3_ = param1[0].§1!n§();
         var _loc4_:uint = _loc3_.length;
         var _loc5_:Boolean = §8"%§.§?!W§.§^!U§().§'#t§();
         var _loc6_:uint = 0;
         while(_loc6_ < _loc4_)
         {
            _loc2_ = _loc3_[_loc6_];
            _loc7_ = new <§>%Q§>[new §>%Q§(§+%z§.STICKY_GRENADE),new §>%Q§(§+%z§.MOLOTOV,0.3),new §>%Q§(§+%z§.§^";§,0.3),new §>%Q§(§+%z§.§8#d§,0.7),new §>%Q§(§+%z§.§!`§,0.7)];
            if(§^i§ && §8"%§.§?!W§.§^!U§().§'#t§())
            {
               _loc7_.push(new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.9,1,30));
            }
            _loc2_.aiArsenal = new §,%8§(_loc7_);
            if(_loc5_)
            {
               _loc2_.aiArsenal.subtractWeapons([§+%z§.STICKY_GRENADE,§+%z§.STICKY_GRENADE_UPG_1]);
               _loc2_.aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,0.5),new §>%Q§(§+%z§.BLIZZARD,0.5),new §>%Q§(§+%z§.SOUL_GUN_UPG_2B_POISON,0.9),new §>%Q§(§+%z§.§<!;§,0.3,1)],uint.MAX_VALUE);
            }
            _loc8_ = _loc2_.§2u§();
            _loc2_.§7"i§(null);
            _loc2_.§3!y§();
            _loc2_.buffs.place(new §3#j§());
            _loc2_.buffs.§6C§(§1N§.NAME);
            _loc2_.§7"i§(§<$c§.§^&1§(_loc8_.getId(),_loc2_.record.getRace()));
            this.bosses[_loc6_] = _loc2_;
            _loc6_++;
         }
         super.§+$L§(param1);
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         super.§ "a§(param1,param2);
         if(param1 == 1)
         {
            this.startX = 0;
            this.§?"%§ = Application.scene.width;
         }
      }
      
      override public function §6&§(param1:uint) : void
      {
         var _loc2_:Vector.<Point> = null;
         var _loc3_:§&"T§ = null;
         var _loc4_:uint = 0;
         if(param1 == 1)
         {
            Application.scene.addEventListener(§0%v§.DAMAGE,this.§?$u§,false,§[!F§.§##c§);
         }
         if(!§4"m§.§;#l§())
         {
            _loc2_ = this.§1#;§();
            if(_loc2_.length == 3 && §4"m§.§="T§(this.bosses[0],false,true).length != 0)
            {
               dispatchEvent(new §7%K§(BossAchieves.§`$%§));
            }
            _loc3_ = null;
            _loc4_ = 0;
            while(_loc4_ < _loc2_.length)
            {
               if(_loc4_ == 0)
               {
                  this.castMeteor(_loc2_[_loc4_].x,_loc2_[_loc4_].y);
               }
               else
               {
                  §8$a§.§%!E§(40 * _loc4_,this.§+#X§(_loc2_[_loc4_].x,_loc2_[_loc4_].y,Application.scene.§,$z§()));
               }
               _loc4_++;
            }
         }
      }
      
      private function §+#X§(param1:int, param2:int, param3:§&"T§) : Function
      {
         var x:int = param1;
         var y:int = param2;
         var dummy:§&"T§ = param3;
         return function():void
         {
            castMeteor(x,y);
            if(dummy)
            {
               dummy.disposed = true;
            }
         };
      }
      
      private function §1#;§() : Vector.<Point>
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:Vector.<Point> = null;
         var _loc4_:Vector.<§+%]§> = null;
         var _loc5_:int = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         var _loc1_:uint = 0;
         for each(_loc2_ in this.bosses)
         {
            if(!_loc2_.disposed)
            {
               _loc1_++;
            }
         }
         _loc3_ = new Vector.<Point>();
         _loc4_ = §4"m§.§6"M§(this.bosses[0]);
         _loc5_ = §?$o§.value - _loc1_ + 1;
         _loc6_ = 0;
         while(_loc6_ < _loc5_)
         {
            _loc7_ = randomSeed.§,!q§(1,3);
            if(Boolean(_loc7_ & 1) && _loc4_.length != 0)
            {
               _loc7_ = randomSeed.§,!q§(0,_loc4_.length - 1);
               _loc3_.push(new Point(_loc4_[_loc7_].x,_loc4_[_loc7_].y));
               _loc4_.splice(_loc7_,1);
            }
            else
            {
               _loc7_ = randomSeed.§,!q§(this.startX,this.§?"%§);
               _loc3_.push(new Point(_loc7_,Application.scene.width));
            }
            _loc6_++;
         }
         return _loc3_;
      }
      
      private function castMeteor(param1:Number, param2:Number = 0) : void
      {
         var _loc4_:int = 0;
         var _loc3_:§5$n§ = §<$c§.§ !=§(§+%z§.METEOR).§<$4§.clone();
         _loc4_ = randomSeed.§,!q§(0,90);
         var _loc5_:Object = MeteorStrike.§2"k§(param1,param2,_loc4_);
         new Meteor(null,_loc3_,_loc5_.x,_loc5_.y,_loc5_.vx,_loc5_.vy);
         Application.scene.dispatchEvent(new WeaponShootEvent(§+%z§.§2%l§,false,true,§0%v§.DAMAGE_TRIGGER));
      }
      
      private function §?$u§(param1:DamageEvent) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:uint = 0;
         var _loc4_:Vector.<§+%]§> = null;
         var _loc5_:§+%]§ = null;
         var _loc6_:uint = 0;
         if(!param1.source.owner)
         {
            _loc2_ = param1.victim as §+%]§;
            if(_loc2_.buffs.hasBuff(§,"R§.NAME))
            {
               return;
            }
            if(this.bosses.indexOf(_loc2_) != -1 && param1.source is Meteor)
            {
               dispatchEvent(new §7%K§(BossAchieves.§7$b§));
            }
            _loc3_ = 0;
            _loc4_ = _loc2_.squad.§1!n§(true);
            for each(_loc5_ in _loc4_)
            {
               _loc3_ += _loc5_.attributes.hp.§#&"§();
            }
            if(§^i§ && _loc2_.squad.isAi() || _loc2_.buffs.hasBuff(§2&>§.NAME))
            {
               param1.power = 0;
            }
            else
            {
               _loc6_ = _loc2_.squad.isAi() ? uint(§,%x§.value) : uint(§8&$§.value);
               param1.power = Math.ceil(§-q§.§8$G§(_loc6_,_loc3_));
            }
         }
      }
      
      override public function clear() : void
      {
         Application.scene.removeEventListener(§0%v§.DAMAGE,this.§?$u§);
         this.bosses.length = 0;
      }
   }
}


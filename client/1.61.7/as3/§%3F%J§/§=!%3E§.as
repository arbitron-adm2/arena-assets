package §?%J§
{
   import § $q§.*;
   import § &5§.§%$O§;
   import § &5§.§@N§;
   import §!$D§.*;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §##j§.§!%&§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##j§.§9x§;
   import §##j§.§`%g§;
   import §#P§.§`o§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%# §.*;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §&x§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$Z§.§2#f§;
   import §'%[§.§#&B§;
   import §+$=§.§6#A§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.AttackDodgedEvent;
   import §2!-§.DamageEvent;
   import §2!-§.NewUnitEvent;
   import §2"L§.§##l§;
   import §2#i§.§+%z§;
   import §2#s§.*;
   import §2B§.§#&E§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4!!§.§!%n§;
   import §4!!§.§'$V§;
   import §4$b§.§2m§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6_§.§5#t§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §8#o§.§1@§;
   import §8$V§.*;
   import §8$Z§.§9!&§;
   import §9"^§.UserParamsMenu;
   import §9%W§.§!7§;
   import §<$q§.*;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=#g§.*;
   import §=&!§.§]$d§;
   import §>"l§.*;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$K§.§3#j§;
   import §?$L§.§&$9§;
   import §@!N§.§-!Y§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@!i§.§@$&§;
   import §@$§.§`&C§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §]$J§.§#"s§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`%&§.§2z§;
   import com.greensock.TweenLite;
   import config.§5%T§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.BuyUnlockMissionResult;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FbRegisterMobilePayment;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §=!>§ extends §-"o§
   {
      
      private const §#$G§:uint = 0;
      
      private var bosses:Vector.<§+%]§>;
      
      private var §`#5§:uint;
      
      private var §;#7§:§&"T§;
      
      private var §5%[§:Boolean;
      
      private var boss:§+%]§;
      
      public function §=!>§(param1:Boolean = false)
      {
         super(param1);
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:uint = 0;
         _loc4_ = uint(5 + 1.2 * param2);
         var _loc5_:Vector.<§-!`§> = new Vector.<§-!`§>();
         var _loc6_:Array = [UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_ROMEO"),3 + _loc4_ * 1.8,Race.§#%V§,180 + 4 * _loc4_ + 11.5 * _loc4_ * param3,8 + _loc4_ * 1.9,5 + _loc4_ * 0.5,§,$O§.BOSS_ROMEO,0,§5%T§.§?$P§),UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_JULIET"),3 + _loc4_ * 1.5,Race.§ "w§,120 + 3 * _loc4_ + 11 * _loc4_ * param3,5 + _loc4_ * 0.8,10 + _loc4_ * 1.6,§,$O§.BOSS_JUILET,0,§5%T§.§?"Y§)];
         if(§^i§)
         {
            _loc5_.push(new §-!`§(§0$N§.BOSS_ROMEO_JULIET_NAME,[_loc6_[0],_loc6_[1]]));
         }
         else
         {
            _loc5_.push(new §-!`§(§0$N§.§%! §("TEAM_NAME_ROMEO"),[_loc6_[0]]));
            _loc5_.push(new §-!`§(§0$N§.§%! §("TEAM_NAME_JULIET"),[_loc6_[1]]));
         }
         return _loc5_;
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         this.§`#5§ = 0;
         this.boss = param1[0].§1!n§()[0];
         this.boss.aiArsenal = new §,%8§(new <§>%Q§>[new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,1),new §>%Q§(§+%z§.MOLOTOV,0.3,3),new §>%Q§(§+%z§.DRILL_GUN_UPG_1),new §>%Q§(§+%z§.§"%P§,0.5),new §>%Q§(§+%z§.AK_47_UPG_1A,0.8),new §>%Q§(§+%z§.RIFLE_UPG_2),new §>%Q§(§+%z§.SHOTGUN_U2A_SLOWING)]);
         var _loc2_:Boolean = §8"%§.§?!W§.§^!U§().§'#t§();
         if(_loc2_)
         {
            this.boss.aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.8),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2B,0.6),new §>%Q§(§+%z§.PLASMAGUN,0.5),new §>%Q§(§+%z§.ANTIFREEZE_U2B_ARMOR,0.5,2),new §>%Q§(§+%z§.SOUL_GUN_UPG_2A_HEAL,0.5)],uint.MAX_VALUE);
         }
         this.boss.buffs.place(new §3#j§());
         var _loc3_:§+%]§ = §^i§ ? param1[0].§1!n§()[1] : param1[1].§1!n§()[0];
         _loc3_.aiArsenal = new §,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§8#d§,0.8),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1),new §>%Q§(§+%z§.DRILL_GUN_UPG_1),new §>%Q§(§+%z§.MINIGUN_U2B_ROCKET),new §>%Q§(§+%z§.RIFLE_UPG_1),new §>%Q§(§+%z§.SHOTGUN_U2B_DOUBLE_SHOT)]);
         if(_loc2_)
         {
            _loc3_.aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.8),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2A,0.5),new §>%Q§(§+%z§.PLASMAGUN,0.5),new §>%Q§(§+%z§.ANTIFREEZE_U2A_ATTACK,0.5,2),new §>%Q§(§+%z§.SOUL_GUN_UPG_2B_POISON,0.7)],uint.MAX_VALUE);
         }
         _loc3_.buffs.place(new §3#j§());
         _loc3_.aiMissFactor = this.boss.aiMissFactor = 1;
         _loc3_.aiShotPower = this.boss.aiShotPower = 5;
         Application.scene.addEventListener(§0%v§.ATTACK_DODGED,this.§<"w§);
         Application.scene.addEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
         super.§+$L§(param1);
      }
      
      private function §<"w§(param1:AttackDodgedEvent) : void
      {
         if(param1.unit == this.boss)
         {
            dispatchEvent(new §7%K§(BossAchieves.ROMEO_DONT_LET_DODGE));
         }
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc3_:Vector.<§+%]§> = null;
         var _loc4_:§+%]§ = null;
         var _loc5_:String = null;
         var _loc6_:Boolean = false;
         this.currentUnit = param2;
         if(param1 == 1)
         {
            this.bosses = new <§+%]§>[this.boss];
            _loc3_ = §8"%§.§?!W§.§4"m§.§="T§(this.boss);
            for each(_loc4_ in _loc3_)
            {
               this.bosses.push(_loc4_);
            }
            for each(_loc4_ in this.bosses)
            {
               _loc4_.§=%P§();
               _loc5_ = _loc4_.squad.§&!G§().getCharName();
               _loc6_ = §^i§ && (_loc5_ == §0$N§.BOSS_PHARAOH_NAME || _loc5_ == §0$N§.BOT_NAME_SAMURAI_CAT);
               if(_loc4_.record.getRace() != Race.§"$H§.§]!D§() || _loc6_)
               {
                  _loc4_.addEventListener(§0%v§.DISPOSED,this.onBossDisposed,false,1);
                  _loc4_.addEventListener(§0%v§.§&!D§,this.§'$R§);
               }
            }
         }
         if(!param2.squad.isAi())
         {
            §-#M§.§0"%§(§^i§ ? 200 : 300);
         }
         if(param2.squad.isAi() && !param2.buffs.hasBuff(§3#j§.NAME))
         {
            param2.buffs.place(new §3#j§());
         }
      }
      
      override public function §6&§(param1:uint) : void
      {
         var _loc3_:§+%]§ = null;
         var _loc4_:String = null;
         var _loc5_:Boolean = false;
         this.§5%[§ = false;
         var _loc2_:Vector.<§+%]§> = new Vector.<§+%]§>();
         for each(_loc3_ in this.bosses)
         {
            if(_loc3_.disposed)
            {
               if(this.§`#5§ >= this.§#$G§)
               {
                  _loc2_.push(_loc3_);
                  this.§`#5§ = 0;
               }
               ++this.§`#5§;
            }
         }
         if(_loc2_.length == 1 && this.bosses.length > 1)
         {
            _loc4_ = _loc2_[0].squad.§&!G§().getCharName();
            _loc5_ = §^i§ && _loc4_ == §0$N§.BOT_NAME_SAMURAI_CAT;
            if(!_loc5_ || §4"m§.§="T§(this.boss).length > 1)
            {
               for each(_loc3_ in _loc2_)
               {
                  this.§`#W§(_loc3_);
               }
            }
         }
         else
         {
            for each(_loc3_ in _loc2_)
            {
               this.bosses.splice(this.bosses.indexOf(_loc3_),1);
            }
         }
      }
      
      private function §`#W§(param1:§+%]§) : void
      {
         var position:Point = null;
         var ungravingZombie:§&"T§ = null;
         var dummy:§&"T§ = null;
         var unit:§+%]§ = param1;
         position = §-#M§.§,#e§();
         §%$O§.§3%R§(Application.scene,position.x,position.y);
         ungravingZombie = new §&"T§(true,§@N§.§@$8§);
         ungravingZombie.clip = §6#A§.§!&6§(§+"'§.§2#A§);
         ungravingZombie.x = position.x - (ungravingZombie.clip.width >> 1);
         ungravingZombie.y = position.y + (ungravingZombie.clip.height >> 1);
         Application.scene.§@$I§.§1$+§(ungravingZombie);
         ungravingZombie.clip.gotoAndPlay(2);
         dummy = Application.scene.§,$z§();
         §8$a§.§%!E§(95,function inWaitAndDoRevived():void
         {
            var _loc1_:UserProfile = null;
            if(Application.scene.§@$I§.§=%d§())
            {
               return;
            }
            _loc1_ = unit.record.§ "P§();
            _loc1_.§&$g§(Race.§"$H§.§]!D§());
            var _loc2_:§+%]§ = Race.create(_loc1_,position.x,position.y);
            _loc2_.§0!e§ = false;
            _loc2_.§4%;§ = unit.§4%;§;
            _loc2_.aiMissFactor = unit.aiMissFactor;
            _loc2_.aiShotPower = unit.aiShotPower;
            _loc2_.§=%P§();
            var _loc3_:String = unit.squad.§&!G§().getCharName();
            if(§^i§ && (_loc3_ == §0$N§.BOSS_PHARAOH_NAME || _loc3_ == §0$N§.BOT_NAME_SAMURAI_CAT))
            {
               _loc2_.buffs.§1!D§(unit);
               if(!_loc2_.buffs.hasBuff(§3#j§.NAME))
               {
                  _loc2_.buffs.place(new §3#j§());
               }
            }
            else
            {
               _loc2_.buffs.place(new §3#j§());
            }
            _loc2_.addEventListener(§0%v§.§&!D§,§'$R§);
            bosses[int(bosses.indexOf(unit))] = _loc2_;
            unit.squad.addUnit(_loc2_);
            if(§^i§)
            {
               §>!r§.§6!d§(_loc2_);
            }
            ungravingZombie.disposed = true;
            dummy.disposed = true;
         });
      }
      
      private function §'$R§(param1:DamageEvent) : void
      {
         var _loc2_:§+%]§ = §+%]§(param1.victim);
         if(_loc2_.disposed)
         {
            _loc2_.removeEventListener(§0%v§.§&!D§,this.§'$R§);
            if(this.§;#7§ == param1.source)
            {
               dispatchEvent(new §7%K§(BossAchieves.ROMEO_KILL_WITH_ONE_SHOT));
            }
            else
            {
               this.§;#7§ = param1.source;
            }
            if(_loc2_.record.getRace().getId() == Race.§"$H§.getId())
            {
               if(this.§5%[§)
               {
                  dispatchEvent(new §7%K§(BossAchieves.ROMEO_KILL_AS_ZOMBIES));
               }
               else
               {
                  this.§5%[§ = true;
               }
            }
         }
      }
      
      private function onBossDisposed(param1:Event) : void
      {
         var _loc2_:§+%]§ = null;
         if(Boolean(!Application.scene.§@$I§.§=%d§()) && Boolean(currentUnit) && !currentUnit.disposed)
         {
            _loc2_ = §+%]§(param1.currentTarget);
            if(_loc2_.squad.getTeamId() != currentUnit.squad.getTeamId())
            {
               new §!%n§(_loc2_,_loc2_.x,_loc2_.y,false,currentUnit);
            }
         }
         §+%]§(param1.currentTarget).removeEventListener(§0%v§.DISPOSED,this.onBossDisposed);
      }
      
      private function §^#X§(param1:NewUnitEvent) : void
      {
         var _loc2_:String = null;
         if(param1.unit.squad.isAi() && !param1.unit.disposed)
         {
            param1.unit.addEventListener(§0%v§.§&!D§,this.§'$R§);
            _loc2_ = param1.unit.squad.§&!G§().getCharName();
            if(§^i§ && this.bosses.indexOf(param1.unit) == -1 && (_loc2_ == §0$N§.BOSS_PHARAOH_NAME || _loc2_ == §0$N§.BOT_NAME_SAMURAI_CAT))
            {
               this.bosses.push(param1.unit);
               param1.unit.§=%P§();
               param1.unit.addEventListener(§0%v§.DISPOSED,this.onBossDisposed,false,1);
            }
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.bosses)
         {
            this.bosses.length = 0;
         }
         Application.scene.removeEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
         Application.scene.removeEventListener(§0%v§.ATTACK_DODGED,this.§<"w§);
      }
   }
}


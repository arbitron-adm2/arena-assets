package §&&6§
{
   import § "d§.§,!c§;
   import § &5§.§!$#§;
   import § &5§.§=#P§;
   import §!"u§.§5&0§;
   import §!$d§.§<$c§;
   import §"!C§.*;
   import §"#x§.§'"$§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §#"V§.§8"@§;
   import §##j§.§#$!§;
   import §##j§.§7,§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#k§.*;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#E§.*;
   import §&#h§.§-"F§;
   import §'!Z§.§1"-§;
   import §'!Z§.§6S§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§2&>§;
   import §+%S§.§3$§;
   import §+%S§.§@#s§;
   import §+%S§.§[&;§;
   import §+5§.§^$[§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-I§.*;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2!-§.NextTurnEvent;
   import §2"L§.§,'§;
   import §2#H§.§"j§;
   import §2#H§.§1%I§;
   import §2#W§.§ #,§;
   import §2#i§.§+%z§;
   import §3"_§.§?#w§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4!x§.§@& §;
   import §4$b§.§2m§;
   import §4'§.§^"p§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9&+§.§6&=§;
   import §<$2§.§<%>§;
   import §<$q§.§6%b§;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §=$#§.§`%u§;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@"s§.§#&3§;
   import §@"s§.§5!g§;
   import §@"s§.§]!>§;
   import §@$§.§6$[§;
   import §@<§.§+%]§;
   import §[$<§.§;%S§;
   import §[$<§.§>"9§;
   import §]$v§.§1>§;
   import §]$v§.§]%_§;
   import §^"y§.§]#i§;
   import §^#[§.§?"&§;
   import §`#x§.§"$r§;
   import §`%&§.§,%§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.gui.controls.§%%v§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.response.treasury.CashMedalsClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.GetBundles;
   import ru.pragmatix.wormix.messages.server.GetBundlesResult;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §+"§ extends §-"o§
   {
      
      private static const §>p§:String = "SpiderCocoonAppear";
      
      private static const §,#M§:int = 50;
      
      private static const §0$n§:int = 30;
      
      private static const §<P§:int = 15;
      
      private const §3#?§:int = 150;
      
      private const §^&!§:int = 150;
      
      private const §2c§:int = 250;
      
      private const §1Q§:int = 400;
      
      private const §8$%§:uint = 13;
      
      private const §7g§:uint = 12;
      
      private const §,"Z§:uint = 2;
      
      private const §`p§:int = 6;
      
      private const §7e§:int = 6;
      
      private const §@W§:Vector.<Point>;
      
      private var §03§:Vector.<Point>;
      
      private var §;$l§:Vector.<§&"T§>;
      
      private var §@$q§:Vector.<§&"T§>;
      
      private var §%"q§:Vector.<§&"T§>;
      
      private var boss:§+%]§;
      
      private var §<$§:Boolean;
      
      private var §[!J§:Boolean;
      
      private var §`#[§:int = 0;
      
      private var §&!v§:int = 0;
      
      private var §5"3§:int = 0;
      
      private var §'!H§:int = 0;
      
      public function §+"§(param1:Boolean = false)
      {
         §§push(this);
         var _temp_3:* = new <Point>[new Point(870,930),new Point(1025,1370),new Point(1220,760),new Point(1855,800),new Point(1984,1430),new Point(2155,950)];
         var _temp_5:* = new <Point>[new Point(870,930),new Point(1025,1370),new Point(1220,760),new Point(1855,800),new Point(1984,1430),new Point(2155,950)];
         §§pop().§@W§ = new <Point>[new Point(870,930),new Point(1025,1370),new Point(1220,760),new Point(1855,800),new Point(1984,1430),new Point(2155,950)];
         super(param1);
         resource = new §@#%§("queenSpidersFix.swf");
      }
      
      private static function §#$<§() : §6S§
      {
         return new §6S§("QueenAuraIdle","QueenAuraAppear","QueenAuraFading");
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var stats:§,!c§ = null;
         var playerSquads:Vector.<§"Z§> = param1;
         var maxLevel:uint = param2;
         var unitCount:uint = param3;
         stats = new §,!c§(5,1.1,0.9,playerSquads);
         var mainTeam:Function = function():UserProfile
         {
            return UserProfile.§'#3§(§0$N§.BOSS_QUEEN_SPIDERS_NAME,stats.level * 1.2,Race.ALIEN,500 + 15 * stats.§?"-§ + 4 * stats.§>$m§,stats.level * 1.05,stats.level * 1.4,§,$O§.BOSS_TARANTUL_HELMET,§]!E§.BOSS_SCORPION_STAFF);
         };
         return new <§-!`§>[new §-!`§(§0$N§.BOSS_QUEEN_SPIDERS_NAME,[mainTeam()])];
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         _loc2_ = param1[0].§1!n§();
         _loc3_ = _loc2_[0];
         this.boss = _loc3_;
         var _loc4_:§^%%§ = _loc3_.§+!b§();
         _loc3_.§;"U§(null);
         §-#M§.§&"r§(_loc3_);
         _loc3_.§;"U§(§<$c§.§"$h§(_loc4_.getId()));
         _loc3_.addEventListener(§0%v§.§&!D§,this.§'$R§);
         _loc3_.aiArsenal = this.§]d§();
         _loc3_.aiMissFactor = 0;
         _loc3_.aiShotPower = 6;
         this.§03§ = new Vector.<Point>(0);
         this.§;$l§ = new Vector.<§&"T§>(0);
         this.§@$q§ = new Vector.<§&"T§>(0);
         this.§%"q§ = new Vector.<§&"T§>(0);
         §]!>§.§=_§();
         super.§+$L§(param1);
      }
      
      private function §]d§() : §,%8§
      {
         var _loc1_:int = this.boss.attributes.hp.§#&"§();
         var _loc2_:Vector.<§>%Q§> = new <§>%Q§>[new §>%Q§(§+%z§.§[$X§,0.5),new §>%Q§(§+%z§.ANTITOXIN,0.9),new §>%Q§(§+%z§.BANDAGE,0.3)];
         if(this.boss.hp < §-q§.§8$G§(§,#M§,_loc1_))
         {
            _loc2_.push(new §>%Q§(§+%z§.ANTIFREEZE_U2A_ATTACK,0.2),new §>%Q§(§+%z§.ANTIFREEZE_U2B_ARMOR,0.2),new §>%Q§(§+%z§.PUPPET,0.1),new §>%Q§(§+%z§.THUNDER_HAMMER,0.2),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1A_MAGNET,0.1),new §>%Q§(§+%z§.AIR_BLOCKER_UPG_1B_FROST,0.1));
         }
         else
         {
            _loc2_.push(new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3A_DINO,0.7),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3B_WASP,0.7),new §>%Q§(§+%z§.SUPER_DRILL_MISSILE,0.6),new §>%Q§(§+%z§.PARASITE_UPG_2,0.2),new §>%Q§(§+%z§.SLEDGEHAMMER_UPG_1B,0.2),new §>%Q§(§+%z§.RED_HOT_HAMMER,0.2));
         }
         if(this.boss.hp < §-q§.§8$G§(§0$n§,_loc1_))
         {
            _loc2_.push(new §>%Q§(§+%z§.GUARDING_BOT_UPG_1A_HIDDEN,0.1),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1B_STICKY,0.1),new §>%Q§(§+%z§.BLOCKER_UPG_2A_DARK,0.1),new §>%Q§(§+%z§.BLOCKER_UPG_2B_LIGHT,0.1),new §>%Q§(§+%z§.SOUL_GUN_FREEZE,0.6),new §>%Q§(§+%z§.BLIZZARD,0.5),new §>%Q§(§+%z§.SHOCKER_UPG_2,0.2));
         }
         else
         {
            _loc2_.push(new §>%Q§(§+%z§.DEEP_FREEZE,0.4 + 0.1 * this.§'!H§),new §>%Q§(§+%z§.§7#L§,0.5));
            if(this.boss.hp < §-q§.§8$G§(§,#M§,_loc1_))
            {
               _loc2_.push(new §>%Q§(§+%z§.BOSS_FIRE_MINIGUN,0.6),new §>%Q§(§+%z§.SOUL_GUN_UPG_2B_POISON,0.6),new §>%Q§(§+%z§.PLASMAGUN,0.4),new §>%Q§(§+%z§.BAT_UPG_2A,0.2),new §>%Q§(§+%z§.BAT_UPG_2B,0.2));
            }
         }
         return new §,%8§(_loc2_,uint.MAX_VALUE,false);
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         super.§ "a§(param1,param2);
         if(!param2.squad.isAi() && param1 < 3)
         {
            if(param2.squad.§&!G§().getBattleBackpack().§8&E§(§+%z§.ZOMBIE_MARCH))
            {
               ++this.§'!H§;
            }
         }
         this.§]$N§();
         if(param2 == this.boss)
         {
            this.§1$7§();
            this.§`%M§();
         }
         else if(param2.squad.isAi())
         {
         }
         this.§,#2§();
         this.§""i§();
      }
      
      override public function §6&§(param1:uint) : void
      {
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:§+%]§ = null;
         super.§6&§(param1);
         this.§+$j§();
         this.§1P§();
         if(currentUnit == this.boss)
         {
            this.boss.aiArsenal = this.§]d§();
            _loc2_ = §8"%§.§?!W§.§4"m§.§6"M§(this.boss);
            _loc3_ = false;
            _loc4_ = false;
            for each(_loc5_ in _loc2_)
            {
               if(_loc5_.buffs.hasBuff(§1%I§.NAME))
               {
                  _loc3_ = true;
                  _loc4_ = true;
                  this.§ "C§();
               }
            }
            if(!_loc3_ && param1 > 2)
            {
               _loc4_ = true;
               this.§ "C§();
            }
            if(_loc4_)
            {
               §@%;§.play(§`!v§.§-$z§);
            }
         }
         else if(!currentUnit.squad.isAi())
         {
            if(!this.§<$§ && this.boss.hp < §-q§.§8$G§(§0$n§,this.boss.attributes.hp.§#&"§()))
            {
               this.§<$§ = true;
               this.§ "C§();
               §@%;§.play(§`!v§.§-$z§);
            }
            if(!this.§<$§ && !currentUnit.buffs.§%%b§([§1%I§.NAME,§2&>§.NAME]))
            {
               this.§7& §(currentUnit);
               this.§]"B§();
            }
         }
         this.§@"P§();
         this.§5#@§();
      }
      
      private function § "C§() : void
      {
         var _loc1_:Point = null;
         if(this.§%"q§.length < this.§8$%§ + 1)
         {
            _loc1_ = this.§,",§(this.§;$l§,this.§%"q§,this.§3#?§,this.§^&!§,this.§1Q§);
            this.§%"q§.push(new §5&0§(this.boss,_loc1_.x,_loc1_.y,this.§`#[§));
            ++this.§`#[§;
         }
      }
      
      private function §1$7§() : void
      {
         var _loc2_:§^$[§ = null;
         var _loc1_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([§^$[§]);
         for each(_loc2_ in _loc1_)
         {
            if(Boolean(!_loc2_.disposed && _loc2_.owner.squad.isAi() && _loc2_.§`"%§()) && Boolean(!_loc2_.§`"%§().squad.isAi()) && !_loc2_.§`"%§().buffs.hasBuff(§2&>§.NAME))
            {
               _loc2_.§&$V§();
            }
         }
      }
      
      private function §`%M§() : void
      {
         var _loc1_:Vector.<Point> = null;
         var _loc2_:§&"T§ = null;
         if(this.boss.hp < §-q§.§8$G§(§,#M§,this.boss.attributes.hp.§#&"§()))
         {
            _loc1_ = new Vector.<Point>(0);
            for each(_loc2_ in this.§;$l§)
            {
               if(§-q§.distance(this.boss.x,this.boss.y,_loc2_.x,_loc2_.y) < this.§2c§ && §-#M§.§@"C§(_loc2_.y))
               {
                  _loc1_.push(new Point(_loc2_.x,_loc2_.y));
               }
            }
            §-#M§.§[&F§(this.boss,2737988,1107217,80,true,_loc1_.length > 0 ? _loc1_ : null);
         }
      }
      
      private function §,#2§() : void
      {
         var _loc1_:Point = null;
         var _loc2_:int = 0;
         var _loc3_:§&"T§ = null;
         if(!this.§[!J§ && this.boss.hp < §-q§.§8$G§(§<P§,this.boss.attributes.hp.§#&"§()))
         {
            this.§[!J§ = true;
            this.§]"B§();
         }
         if(this.§[!J§ && this.§5"3§ < this.§`p§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§7e§)
            {
               _loc1_ = this.§,",§(this.§%"q§,this.§@$q§,this.§3#?§,this.§^&!§,this.§1Q§ * 0.5);
               this.§@$q§.push(new §5!g§(this.boss,_loc1_.x,_loc1_.y));
               ++this.§5"3§;
               _loc2_++;
            }
            §@%;§.play(§`!v§.§-$z§);
            if(this.§5"3§ > 0)
            {
               for each(_loc3_ in this.§;$l§)
               {
                  §]!>§(_loc3_).disableClear();
               }
            }
         }
      }
      
      private function §5#@§() : void
      {
         var _loc1_:§&"T§ = null;
         if(this.§[!J§ && this.§5"3§ == this.§`p§)
         {
            for each(_loc1_ in this.§@$q§)
            {
               §5!g§(_loc1_).hatchScorp();
            }
            §@%;§.play(§`!v§.§-$z§);
         }
      }
      
      private function §]$N§() : void
      {
         var _loc1_:§#&3§ = null;
         var _loc2_:Point = null;
         var _loc3_:int = 0;
         if(this.§;$l§.length < this.§7g§ + 1)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§,"Z§)
            {
               _loc2_ = this.§&!v§ < this.§@W§.length ? new Point(this.§@W§[this.§03§.length].x,this.§@W§[this.§03§.length].y) : this.§,",§(null,this.§;$l§,this.§3#?§,this.§^&!§,this.§^&!§ * 2);
               this.§03§.push(_loc2_);
               _loc1_ = new §]!>§(this.boss,_loc2_.x,_loc2_.y);
               this.§;$l§.push(_loc1_);
               ++this.§&!v§;
               _loc3_++;
            }
            §@%;§.play(§`!v§.§-$z§);
         }
      }
      
      private function §""i§() : void
      {
         var _loc1_:* = 0;
         if(this.§[!J§ && this.§@$q§.length > 0)
         {
            _loc1_ = int(this.§@$q§.length - 1);
            while(_loc1_ > -1)
            {
               if(this.§@$q§[_loc1_].disposed)
               {
                  this.§@$q§.splice(_loc1_,1);
               }
               _loc1_--;
            }
            if(this.§5"3§ >= this.§`p§ && this.§@$q§.length == 0 && this.boss.buffs.hasBuff(§"j§.NAME))
            {
               this.boss.buffs.§6C§(§"j§.NAME);
            }
         }
      }
      
      private function §]"B§() : void
      {
         if(!this.boss.buffs.hasBuff(§"j§.NAME))
         {
            this.boss.buffs.place(new §"j§(§#$<§()));
         }
      }
      
      private function §@"P§() : void
      {
         var _loc2_:§&"T§ = null;
         var _loc1_:Boolean = false;
         for each(_loc2_ in this.§;$l§)
         {
            if(§#&3§(_loc2_).isDamaged)
            {
               _loc1_ = true;
               break;
            }
         }
         for each(_loc2_ in this.§;$l§)
         {
            §]!>§(_loc2_).resetDamaged();
         }
      }
      
      private function §1P§() : void
      {
         var _loc1_:* = 0;
         if(this.§%"q§.length > 0)
         {
            _loc1_ = int(this.§%"q§.length - 1);
            while(_loc1_ > -1)
            {
               if(this.§%"q§[_loc1_].disposed)
               {
                  this.§%"q§.splice(_loc1_,1);
               }
               _loc1_--;
            }
         }
      }
      
      private function §+$j§() : void
      {
         var _loc1_:* = 0;
         if(this.§;$l§.length > 0)
         {
            _loc1_ = int(this.§;$l§.length - 1);
            while(_loc1_ > -1)
            {
               if(this.§;$l§[_loc1_].disposed)
               {
                  this.§;$l§.splice(_loc1_,1);
               }
               _loc1_--;
            }
         }
      }
      
      private function §,",§(param1:Vector.<§&"T§>, param2:Vector.<§&"T§>, param3:int, param4:int, param5:int) : Point
      {
         var _loc7_:Point = null;
         var _loc8_:uint = 0;
         var _loc10_:int = 0;
         var _loc11_:§&"T§ = null;
         var _loc6_:uint = 10;
         var _loc9_:* = 0;
         do
         {
            if(!param1 || param1.length == 0)
            {
               _loc11_ = this.boss;
            }
            else
            {
               _loc11_ = param1[int(§8"%§.randomSeed.§,!q§(0,param1.length - 1))];
            }
            _loc7_ = §-#M§.§,#e§();
            _loc10_ = §-q§.distance(_loc11_.x,_loc11_.y,_loc7_.x,_loc7_.y);
            _loc8_ = §<H§.§3%'§(_loc7_.x,_loc7_.y,param3,param2).length;
         }
         while(++_loc9_ < _loc6_ && (_loc8_ > 0 || param4 > _loc10_ || _loc10_ > param5));
         return _loc7_;
      }
      
      private function §7& §(param1:§+%]§) : void
      {
         var clip:MovieClip = null;
         var dummy:§&"T§ = null;
         var unit:§+%]§ = param1;
         clip = §6#A§.§!&6§(§>p§);
         dummy = Application.scene.§,$z§();
         unit.buffs.§6C§(§+m§.NAME);
         unit.graphics.§5$#§(§2m§.§-w§,clip,0,§<H§.§-#C§);
         §8$a§.§%!E§(clip.totalFrames,function():void
         {
            if(clip.totalFrames > 1)
            {
               clip.stop();
            }
            if(clip.numChildren > 0)
            {
               §3!3§.§>!j§(§3!3§.§#"R§(clip));
            }
            unit.graphics.detachClip(clip,§2m§.§-w§);
            unit.buffs.place(new §1%I§(boss));
            dummy.disposed = true;
         });
      }
      
      private function §'$R§(param1:DamageEvent) : void
      {
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         var _loc4_:int = 0;
         if(Boolean(param1.source && param1.source.owner && param1.source.owner.squad && !param1.source.owner.squad.isAi() && this.boss) && Boolean(!this.boss.disposed) && !this.boss.buffs.hasBuff(§"j§.NAME))
         {
            if(randomSeed.§,!q§(1,2) == 1)
            {
               §#&3§.§^$Y§(this.boss,param1.source.owner,this.boss.x,this.boss.y,§]!>§.§9$9§());
            }
            else
            {
               _loc2_ = §8"%§.§?!W§.§4"m§.activeSquad.§1!n§();
               if(_loc2_.length > 0)
               {
                  _loc3_ = _loc2_[int(randomSeed.§,!q§(0,_loc2_.length - 1))];
                  _loc4_ = randomSeed.§,!q§(1,2) == 1 ? 15 : -15;
                  §#&3§.§^$Y§(this.boss,_loc3_,_loc3_.x + _loc4_,_loc3_.y - 10,§]!>§.§9$9§());
               }
            }
         }
      }
      
      override public function clear() : void
      {
         this.boss.addEventListener(§0%v§.§&!D§,this.§'$R§);
         this.boss = null;
         this.§@$q§ = null;
         this.§;$l§ = null;
         this.§%"q§ = null;
         this.§03§ = null;
      }
   }
}


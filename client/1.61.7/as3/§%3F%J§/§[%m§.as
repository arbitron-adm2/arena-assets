package §?%J§
{
   import § !8§.§`!d§;
   import § "d§.§,!c§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+$=§.§;!d§;
   import §+%S§.§ !!§;
   import §+%S§.§'%V§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §+%S§.§[0§;
   import §+&<§.*;
   import §+5§.§^$[§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-!U§.*;
   import §-%B§.*;
   import §-@§.*;
   import §0!§.§9"u§;
   import §0%[§.§0%§;
   import §0%z§.§&%&§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1&-§.§-#B§;
   import §1&-§.§4!s§;
   import §2"L§.§^$y§;
   import §2#H§.§"§;
   import §2#H§.§;#;§;
   import §2#i§.§+%z§;
   import §2#x§.§]s§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7"Q§.§7o§;
   import §7$1§.§;$n§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §<!W§.§#"1§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=&6§.§3#B§;
   import §>%S§.§^!V§;
   import §?#g§.§-!k§;
   import §?#g§.Race;
   import §?$7§.§6&'§;
   import §?$7§.§8"e§;
   import §?$K§.§3#j§;
   import §?$K§.§=z§;
   import §?$K§.§>K§;
   import §@!N§.*;
   import §@!i§.§!m§;
   import §@!i§.§<!9§;
   import §@$§.§&&H§;
   import §@$§.§`&C§;
   import §@$f§.§2U§;
   import §@%I§.§7%K§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%§.Zombie;
   import §[%§.§^"n§;
   import §]^§.§4&+§;
   import §^!"§.§0^§;
   import §^!"§.§^$F§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import com.inreflected.ui.touchScroll.*;
   import config.§5%T§;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.*;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.client.BuySelectRace;
   import ru.pragmatix.wormix.messages.client.BuyShopItems;
   import ru.pragmatix.wormix.messages.client.PumpReactionRates;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionDailyProgressTO;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.messages.structures.TurnStructureV2;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§^#%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §[%m§ extends §-"o§
   {
      
      private static const §6n§:uint = 3;
      
      private static const §""x§:uint = 15;
      
      private static const §@#2§:uint = 30;
      
      private var boss:§+%]§;
      
      private var §?%;§:Array = [];
      
      private var bosses:Vector.<§+%]§>;
      
      private var faceMaker:§^#%§;
      
      public function §[%m§(param1:Boolean = false)
      {
         super(param1);
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:§,!c§ = new §,!c§(13,1.2,0.9,param1);
         var _temp_1:* = new <§-!`§>[new §-!`§(§0$N§.§%! §("TEAM_NAME_ILLUSIONIST1"),[UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_ILLUSIONIST1"),_loc4_.level,Race.§+&8§,15 * _loc4_.§?"-§ + 4 * _loc4_.§>$m§ + 600,_loc4_.level * 1.1,_loc4_.level * 1.1,§,$O§.BOSS_ILLUSIONIST_CYLINDER,0,§5%T§.§?%@§)])];
         return new <§-!`§>[new §-!`§(§0$N§.§%! §("TEAM_NAME_ILLUSIONIST1"),[UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_ILLUSIONIST1"),_loc4_.level,Race.§+&8§,15 * _loc4_.§?"-§ + 4 * _loc4_.§>$m§ + 600,_loc4_.level * 1.1,_loc4_.level * 1.1,§,$O§.BOSS_ILLUSIONIST_CYLINDER,0,§5%T§.§?%@§)])];
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         this.boss = §+%]§(param1[0].§1!n§()[0]);
         var _loc2_:Number = §^i§ ? 0.3 : 0.1;
         this.boss.aiArsenal = new §,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§?$w§),new §>%Q§(§+%z§.DRILL_GUN_UPG_1),new §>%Q§(§+%z§.CROSSBOW),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_1,0.7),new §>%Q§(§+%z§.CANNON_UPG_1,0.3),new §>%Q§(§+%z§.§ %L§,0.3),new §>%Q§(§+%z§.WATERMELON,0.2),new §>%Q§(§+%z§.§'#?§,_loc2_),new §>%Q§(§+%z§.FREEZING_BAZOOKA_UPG1A,_loc2_),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_1,_loc2_)],uint.MAX_VALUE,true,true);
         this.boss.aiArsenal.subtractWeapons([§+%z§.BLOCKER_UPG_2B_LIGHT]);
         var _loc3_:Boolean = §8"%§.§?!W§.§^!U§().§'#t§();
         if(_loc3_)
         {
            this.boss.aiArsenal.subtractWeapons([§+%z§.CARPET_BAZOOKA,§+%z§.CARPET_BAZOOKA_UPG_1,§+%z§.HOLY_GRENADE,§+%z§.HOLY_GRENADE_UPG_1,§+%z§.CANNON,§+%z§.CANNON_UPG_1,§+%z§.CANNON_UPG_2]);
            this.boss.aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2A,0.5),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_2A_EYE,0.6),new §>%Q§(§+%z§.HOLY_GRENADE_UPG_2B_POLAR,0.4),new §>%Q§(§+%z§.CANNON_UPG_3A,0.5),new §>%Q§(§+%z§.CANNON_UPG_3B_STICKY,0.5),new §>%Q§(§+%z§.SOUL_GUN_UPG_2B_POISON,0.5),new §>%Q§(§+%z§.PUPPET_U2A_CURSED,0.5,2),new §>%Q§(§+%z§.PARASITE_UPG_2,0.3),new §>%Q§(§+%z§.GUARDING_BOT_UPG_1A_HIDDEN,0.7)],uint.MAX_VALUE);
         }
         this.boss.buffs.place(new §3#j§());
         this.boss.addEventListener(§0%v§.§^$3§,this.onBossSink);
         this.faceMaker = §^#%§(Application.scene.§@$I§.§5# §(§^#%§));
         super.§+$L§(param1);
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc3_:§+%]§ = null;
         var _loc4_:Vector.<§+%]§> = null;
         var _loc5_:Array = null;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc8_:Vector.<§+%]§> = null;
         var _loc9_:uint = 0;
         var _loc10_:Point = null;
         super.§ "a§(param1,param2);
         if(param1 == 1 || §^i§)
         {
            this.bosses = new <§+%]§>[this.boss];
            _loc4_ = §4"m§.§="T§(this.boss);
            for each(_loc3_ in _loc4_)
            {
               this.bosses.push(_loc3_);
            }
         }
         if(param1 == 1 && §<#A§())
         {
            _loc5_ = [§+%z§.ANTITOXIN];
            for each(_loc3_ in this.bosses)
            {
               _loc3_.aiArsenal.subtractWeapons(_loc5_);
            }
         }
         if(!§4"m§.§;#l§() && param1 != 1)
         {
            _loc6_ = 0;
            for each(_loc3_ in this.bosses)
            {
               if(!_loc3_.disposed && _loc3_.record.getCharName() != §0$N§.BOT_KING_DEAD_MINION)
               {
                  this.faceMaker.stop(_loc3_,true);
                  _loc3_.graphics.§!$B§();
                  _loc3_.graphics.lock();
                  _loc3_.buffs.§6C§(§ !!§.NAME);
                  _loc3_.buffs.§6C§(§+m§.NAME);
                  _loc3_.buffs.§6C§(§[&;§.NAME);
                  if(§8"%§.§&S§.§41§() && §8"%§.§&S§.§3%W§)
                  {
                     §1"-§.explode(§;n§.§6#B§,_loc3_.x,_loc3_.y,§@#2§);
                  }
                  §@%;§.play(§`!v§.§-$z§);
                  _loc7_ = 1;
                  if(_loc3_.hp < 400)
                  {
                     _loc7_++;
                  }
                  if(_loc3_.hp < 150)
                  {
                     _loc7_++;
                  }
                  _loc8_ = new Vector.<§+%]§>(0);
                  _loc9_ = 0;
                  while(_loc9_ < _loc7_)
                  {
                     _loc8_.push(this.§ "P§(_loc3_));
                     _loc9_++;
                  }
                  this.§?%;§[_loc6_] = _loc8_;
                  _loc10_ = §-#M§.§,#e§();
                  if(_loc10_)
                  {
                     new §'$V§(_loc3_,_loc3_.x,_loc3_.y,true,_loc3_,11289911,16777215,80);
                     §<H§.§"%8§(_loc3_,_loc10_.x,_loc10_.y);
                     if(§8"%§.§&S§.§41§() && §8"%§.§&S§.§3%W§)
                     {
                        §1"-§.explode(§;n§.§6#B§,_loc10_.x,_loc10_.y,§@#2§);
                     }
                  }
                  _loc3_.setSpeedXY(0,1);
                  Application.scene.§]&-§(_loc3_);
                  _loc6_++;
                  if(_loc7_ >= §6n§)
                  {
                     dispatchEvent(new §7%K§(BossAchieves.§1q§));
                  }
               }
            }
         }
      }
      
      override public function §6&§(param1:uint) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:Vector.<§+%]§> = null;
         var _loc4_:§'%V§ = null;
         var _loc5_:§4!s§ = null;
         var _loc6_:§'%V§ = null;
         if(!§4"m§.§;#l§())
         {
            for each(_loc2_ in this.bosses)
            {
               this.§>$g§(_loc2_);
            }
            _loc3_ = §8"%§.§?!W§.§4"m§.§6"M§(this.boss);
            for each(_loc2_ in _loc3_)
            {
               if(_loc2_ is §^"n§ && _loc2_.buffs.hasBuff(§#"1§.NAME))
               {
                  §#"1§(_loc2_.buffs.getBuff(§#"1§.NAME)).resetTargets();
               }
            }
         }
         else
         {
            _loc4_ = §'%V§(this.boss.buffs.getBuff(§'%V§.NAME));
            for each(_loc2_ in this.bosses)
            {
               _loc5_ = §4!s§(_loc2_.buffs.getBuff(§4!s§.§!!Y§));
               if(_loc5_)
               {
                  _loc5_.§%#;§();
               }
               if(_loc4_)
               {
                  _loc6_ = §'%V§(_loc2_.buffs.getBuff(§'%V§.NAME));
                  if(_loc6_)
                  {
                     _loc6_.§`!9§(_loc4_.§7%1§());
                  }
               }
            }
         }
      }
      
      private function § "P§(param1:§+%]§) : §+%]§
      {
         var cloneAttr:§9"u§;
         var raceArmor:int;
         var raceAttack:int;
         var unitAttr:§9"u§;
         var poisoningRRDebuff:§`"C§;
         var objects:Vector.<§&"T§>;
         var clone:§+%]§ = null;
         var spider:§^$[§ = null;
         var unitBounce:§`"C§ = null;
         var cloneBounce:§`"C§ = null;
         var cloneDarkShield:§"#5§ = null;
         var unitBounceCount:§>K§ = null;
         var cloneBounceCount:§>K§ = null;
         var hat:§^$E§ = null;
         var unit:§+%]§ = param1;
         var escapePoint:Point = §-#M§.§,#e§();
         if(!escapePoint)
         {
            escapePoint = new Point(unit.x,unit.y);
         }
         clone = Race.create(unit.record.§ "P§(true),escapePoint.x,escapePoint.y);
         if(Boolean(clone.§+!b§()) && !unit.§+!b§())
         {
            clone.§;"U§(null);
         }
         cloneAttr = clone.attributes;
         cloneAttr.hp.change(-(cloneAttr.hp.value - unit.hp));
         clone.turn(unit.direction);
         clone.§9&2§();
         clone.addEventListener(§0%v§.§&!D§,this.§'$?§);
         clone.setSpeedXY(0,1);
         clone.clip.transform.colorTransform = unit.clip.transform.colorTransform;
         clone.graphics.§!$B§();
         clone.graphics.lock();
         if(unit is Zombie && unit.isRevived())
         {
            clone.§;!s§(true,false);
         }
         unit.buffs.§1!D§(clone);
         if(unit is Zombie && !unit.isRevived())
         {
            Zombie(clone).clearBuffs();
         }
         raceArmor = clone.record.getRace().getBonusList().§1$9§(Bonus.ARMOR);
         raceAttack = clone.record.getRace().getBonusList().§1$9§(Bonus.ATTACK);
         unitAttr = unit.attributes;
         cloneAttr.attack.§5#l§(unitAttr.attack.§'"S§() - unit.§"%_§(Bonus.ATTACK) - raceAttack);
         cloneAttr.armor.§5#l§(unitAttr.armor.§'"S§() - unit.§"%_§(Bonus.ARMOR) - raceArmor);
         if(cloneAttr.attack.§'"S§() != unitAttr.attack.§'"S§())
         {
            cloneAttr.attack.§5#l§(unitAttr.attack.§'"S§() - cloneAttr.attack.§'"S§());
         }
         if(cloneAttr.armor.§'"S§() != unitAttr.armor.§'"S§())
         {
            cloneAttr.armor.§5#l§(unitAttr.armor.§'"S§() - cloneAttr.armor.§'"S§());
         }
         if(§^i§)
         {
            unitBounce = unit.buffs.getBuff(§=z§.NAME);
            cloneBounce = clone.buffs.getBuff(§=z§.NAME);
            if(Boolean(cloneBounce) && Boolean(unitBounce))
            {
               unitBounceCount = unit.buffs.getBuff(§>K§.NAME) as §>K§;
               cloneBounceCount = clone.buffs.getBuff(§>K§.NAME) as §>K§;
               if(Boolean(cloneBounceCount) && Boolean(unitBounceCount) && unitBounceCount.used != cloneBounceCount.used)
               {
                  cloneBounceCount.used = unitBounceCount.used;
                  hat = clone.§2u§();
                  if(hat)
                  {
                     clone.§7"i§(null);
                     clone.§7"i§(hat);
                  }
               }
            }
            else if(!unitBounce && Boolean(cloneBounce))
            {
               clone.buffs.§6C§(§=z§.NAME);
            }
            cloneDarkShield = clone.buffs.getBuff(§"#5§.NAME) as §"#5§;
            if(cloneDarkShield)
            {
               cloneDarkShield.§"#`§();
            }
         }
         poisoningRRDebuff = unit.buffs.getBuff(§[0§.NAME);
         if(!poisoningRRDebuff)
         {
         }
         unit.squad.addUnit(clone,false);
         clone.buffs.place(new §;#;§());
         objects = Application.scene.§@$I§.§;%a§.§"L§([§^$[§]);
         objects = §<H§.§3%'§(unit.x,unit.y,§<H§.§@k§,objects,false);
         for each(spider in objects)
         {
            if(spider.§`"%§() == unit)
            {
               spider.§%!=§(clone);
               break;
            }
         }
         new §'$V§(unit,unit.x,unit.y,true,clone,11289911,16777215,80);
         if(§8"%§.§&S§.§41§() && §8"%§.§&S§.§3%W§)
         {
            §1"-§.explode(§;n§.§6#B§,escapePoint.x,escapePoint.y,30);
         }
         this.faceMaker.§0$I§(clone);
         this.faceMaker.stop(clone,true);
         §8$a§.§%!E§(2,function():void
         {
            if(!clone.disposed)
            {
               Application.scene.§]&-§(clone);
            }
         });
         return clone;
      }
      
      private function §'$?§(param1:Event) : void
      {
         var _loc2_:§+%]§ = param1.currentTarget as §+%]§;
         §1"-§.explode(§;n§.§6#B§,_loc2_.x,_loc2_.y,§@#2§);
         _loc2_.removeEventListener(§0%v§.§&!D§,this.§'$?§);
         §'"$§.§]#I§(_loc2_,_loc2_.x,_loc2_.y,null,§""x§,§@#2§ + 10,§@#2§,false);
         _loc2_.§8!m§ = null;
         _loc2_.disposed = true;
      }
      
      private function §>$g§(param1:§+%]§) : void
      {
         var _loc2_:int = 0;
         var _loc4_:§+%]§ = null;
         this.faceMaker.stop(param1,false);
         param1.graphics.unlock();
         param1.§2!W§();
         _loc2_ = this.bosses.indexOf(param1);
         var _loc3_:Vector.<§+%]§> = this.§?%;§[_loc2_];
         if(_loc3_)
         {
            for each(_loc4_ in _loc3_)
            {
               this.§;%m§(_loc4_);
            }
            this.§?%;§[_loc2_] = null;
         }
      }
      
      private function onBossSink(param1:Event) : void
      {
         dispatchEvent(new §7%K§(BossAchieves.ILLUSIONIST_DROWN_FIVE_TIMES));
      }
      
      private function §;%m§(param1:§+%]§) : void
      {
         if(Boolean(param1) && !param1.disposed)
         {
            dispatchEvent(new §7%K§(BossAchieves.§["f§));
            §1"-§.explode(§;n§.§6#B§,param1.x,param1.y,§@#2§,§`!v§.§>l§);
            param1.disposed = true;
         }
      }
      
      override public function clear() : void
      {
         this.boss.removeEventListener(§0%v§.§^$3§,this.onBossSink);
         this.boss = null;
         this.§?%;§.length = 0;
      }
   }
}


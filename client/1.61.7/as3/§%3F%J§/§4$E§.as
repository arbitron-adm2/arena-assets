package §?%J§
{
   import § "%§.§0$[§;
   import § $q§.*;
   import §!$d§.§<$c§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.§9§;
   import §#%!§.§%&F§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%"Z§.§9"z§;
   import §%E§.§5%C§;
   import §&"c§.§!!q§;
   import §&$Y§.§&!R§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§"$7§;
   import §+%S§.§-$s§;
   import §+%S§.§2$#§;
   import §+%S§.§>!I§;
   import §+%S§.§["4§;
   import §+%S§.§[`§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-@§.§+"A§;
   import §-@§.§5h§;
   import §0%[§.§0%§;
   import §0%j§.*;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2!-§.§'5§;
   import §2!-§.DamageEvent;
   import §2!-§.NewUnitEvent;
   import §2!0§.;
   import §2!0§.§5"m§;
   import §2!0§.§="A§;
   import §2#H§.§;!Y§;
   import §2#i§.§+%z§;
   import §3#T§.§5!M§;
   import §3#a§.§-!`§;
   import §4!!§.§2&F§;
   import §4#`§.§+!l§;
   import §5!,§.§9$h§;
   import §5"J§.*;
   import §5%S§.§>&-§;
   import §65§.§`"C§;
   import §7!B§.§>"D§;
   import §7$1§.§;$n§;
   import §7$t§.§^$E§;
   import §9![§.§^§;
   import §9%W§.§!"G§;
   import §9%W§.§&!P§;
   import §<$q§.§,%3§;
   import §<%E§.§0#G§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §?"j§.*;
   import §?#g§.Race;
   import §?$7§.§6%k§;
   import §?$K§.§3#j§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §]#[§.*;
   import §]^§.§-$T§;
   import §^!]§.MineSetUpEvent;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import §`"x§.§-#z§;
   import §`"x§.SearchFriendMenu;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import com.greensock.loading.core.LoaderCore;
   import com.greensock.loading.core.LoaderItem;
   import com.greensock.plugins.*;
   import config.§5%T§;
   import config.achievements.BossAchieves;
   import config.achievements.§^t§;
   import flash.display.*;
   import flash.events.*;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.GetReagentsForProfile;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §4$E§ extends §-"o§
   {
      
      private static const §4!V§:uint = 0;
      
      private static const §"!M§:uint = 1;
      
      private static const §?_§:uint = 2;
      
      private static const §>"z§:Number = 1.7;
      
      private static const §9%-§:Number = 1.9;
      
      private static const §8%4§:Number = 1.9;
      
      private static const §]"6§:Number = 0.17;
      
      private static const §=!v§:Number = 2.1;
      
      private var bosses:Vector.<§+%]§>;
      
      private var §'!^§:uint;
      
      private var §-"c§:Boolean;
      
      private var §'"Q§:Boolean;
      
      public function §4$E§(param1:Boolean = false)
      {
         super(param1);
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:uint = §^i§ ? uint(1.9 + 0.4 * param2) : uint(5 + (Application.userProfile.§^!A§() + Application.userProfile.getLevel()) / 4);
         var _loc5_:uint = §^i§ ? uint(4 * param2 + 12 * param2 * param3) : 0;
         var _loc6_:Number = §^i§ ? 1 + 0.35 * param3 : 1;
         var _loc7_:Vector.<§-!`§> = new Vector.<§-!`§>();
         var _loc8_:Array = [UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_YAKUZA_STORM"),4 + _loc4_ * 1.8,Race.§ "w§,90 + _loc4_ * 30 + _loc5_,(4 + _loc4_ * 1.5) * _loc6_,(4 + _loc4_ * 1.1) * _loc6_,§,$O§.BOSS_YAKUZA_STORM),UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_YAKUZA_TIGER"),4 + _loc4_ * 1.8,Race.§#%V§,90 + _loc4_ * 27 + _loc5_,(2 + _loc4_ * 0.7) * _loc6_,(10 + _loc4_ * 1.4) * _loc6_,§,$O§.BOSS_YAKUZA_TIGER),UserProfile.§'#3§(§0$N§.§%! §("BOT_NAME_YAKUZA_STEEL"),4 + _loc4_ * 1.8,Race.§+#T§,(210 + _loc4_ * 33 + _loc5_) * 0.9,(10 + _loc4_ * 2.2) * _loc6_,(2 + _loc4_ * 0.05) * _loc6_,§,$O§.BOSS_YAKUZA_STEEL,0,§5%T§.§`%o§)];
         if(§^i§)
         {
            _loc7_.push(new §-!`§(§0$N§.§%! §("BOSS_YAKUZA_NAME"),[_loc8_[0],_loc8_[1],_loc8_[2]]));
         }
         else
         {
            _loc7_.push(new §-!`§(§0$N§.§%! §("TEAM_NAME_YAKUZA_STORM"),[_loc8_[0]]));
            _loc7_.push(new §-!`§(§0$N§.§%! §("TEAM_NAME_YAKUZA_TIGER"),[_loc8_[1]]));
            _loc7_.push(new §-!`§(§0$N§.§%! §("TEAM_NAME_YAKUZA_STEEL"),[_loc8_[2]]));
         }
         return _loc7_;
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         var _loc4_:§+%]§ = null;
         var _loc2_:Boolean = §8"%§.§?!W§.§^!U§().§'#t§();
         var _loc3_:Vector.<§+%]§> = new Vector.<§+%]§>(0);
         if(§^i§)
         {
            _loc3_ = param1[0].§1!n§();
         }
         else
         {
            _loc3_.push(param1[0].§1!n§()[0]);
            _loc3_.push(param1[1].§1!n§()[0]);
            _loc3_.push(param1[2].§1!n§()[0]);
         }
         this.bosses = new Vector.<§+%]§>(0);
         this.bosses[§4!V§] = _loc3_[§4!V§];
         this.bosses[§4!V§].aiArsenal = new §,%8§(new <§>%Q§>[new §>%Q§(§+%z§.MOLOTOV,0.7),new §>%Q§(§+%z§.§!`§,0.8),new §>%Q§(§+%z§.§^";§,0.4),new §>%Q§(§+%z§.AK_47,0.5),new §>%Q§(§+%z§.MORTAR_UPG2B_DOUBLE_SHOT)]);
         if(_loc2_)
         {
            this.bosses[§4!V§].aiArsenal.subtractWeapons([§+%z§.§8#d§,§+%z§.FREEZING_BAZOOKA_UPG1A,§+%z§.FREEZING_BAZOOKA_UPG1B]);
            this.bosses[§4!V§].aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.8),new §>%Q§(§+%z§.FREEZING_BAZOOKA_UPG2A,0.5),new §>%Q§(§+%z§.BLIZZARD,0.3),new §>%Q§(§+%z§.SOUL_GUN_FREEZE,0.5)],uint.MAX_VALUE);
         }
         this.bosses[§"!M§] = _loc3_[§"!M§];
         §§push(this.bosses[§"!M§]);
         §§push(§§findproperty(§,%8§));
         var _temp_10:* = new <§>%Q§>[new §>%Q§(§+%z§.CROSSBOW,_loc2_ ? 0.5 : 1),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,0.7),new §>%Q§(§+%z§.§!`§,_loc2_ ? 0.5 : 0.8),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON,_loc2_ ? 0.5 : 1)];
         var _temp_12:* = new <§>%Q§>[new §>%Q§(§+%z§.CROSSBOW,_loc2_ ? 0.5 : 1),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,0.7),new §>%Q§(§+%z§.§!`§,_loc2_ ? 0.5 : 0.8),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON,_loc2_ ? 0.5 : 1)];
         var _temp_13:* = new <§>%Q§>[new §>%Q§(§+%z§.CROSSBOW,_loc2_ ? 0.5 : 1),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,0.7),new §>%Q§(§+%z§.§!`§,_loc2_ ? 0.5 : 0.8),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON,_loc2_ ? 0.5 : 1)];
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.CROSSBOW,_loc2_ ? 0.5 : 1),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,0.7),new §>%Q§(§+%z§.§!`§,_loc2_ ? 0.5 : 0.8),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON,_loc2_ ? 0.5 : 1)]);
         if(_loc2_)
         {
            this.bosses[§"!M§].aiArsenal.subtractWeapons([§+%z§.SNIPER_RIFLE,§+%z§.SNIPER_RIFLE_UPG_1,§+%z§.SNIPER_RIFLE_UPG_2A,§+%z§.SNIPER_RIFLE_UPG_2B,§+%z§.RIFLE_UPG_2]);
            this.bosses[§"!M§].aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3A_DINO,1),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.8),new §>%Q§(§+%z§.MINIGUN_U2B_ROCKET,0.5),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.5),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B,0.5)],uint.MAX_VALUE);
         }
         this.bosses[§?_§] = _loc3_[§?_§];
         this.bosses[§?_§].aiArsenal = new §,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§8#d§,1),new §>%Q§(§+%z§.§!`§,0.8),new §>%Q§(§+%z§.MINIGUN_U2B_ROCKET,0.6),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA),new §>%Q§(§+%z§.HOLY_GRENADE,0.3)]);
         if(_loc2_)
         {
            this.bosses[§?_§].aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.8),new §>%Q§(§+%z§.§[$X§,0.5),new §>%Q§(§+%z§.SOUL_GUN_UPG_2A_HEAL,0.5)],uint.MAX_VALUE);
         }
         for each(_loc4_ in this.bosses)
         {
            _loc4_.buffs.place(new §3#j§());
            _loc4_.addEventListener(§0%v§.DISPOSED,this.§=&1§);
         }
         this.§-"c§ = false;
         this.§'"Q§ = false;
         this.§'!^§ = 0;
         if(§^i§)
         {
            Application.scene.addEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
         }
         super.§+$L§(param1);
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc3_:Vector.<§"Z§> = null;
         var _loc4_:Array = null;
         var _loc5_:§"Z§ = null;
         var _loc6_:Vector.<§+%]§> = null;
         var _loc7_:§+%]§ = null;
         var _loc8_:§+%]§ = null;
         var _loc9_:Number = NaN;
         if(§^i§ && param1 == 1)
         {
            _loc3_ = new Vector.<§"Z§>(0);
            _loc4_ = §8"%§.§?!W§.§4"m§.§+!0§();
            for each(_loc5_ in _loc4_)
            {
               if(_loc5_.isAi() && _loc5_ != this.bosses[§4!V§].squad)
               {
                  _loc3_.push(_loc5_);
               }
            }
            for each(_loc5_ in _loc3_)
            {
               _loc6_ = _loc5_.§1!n§();
               for each(_loc7_ in _loc6_)
               {
                  this.bosses.push(_loc7_);
               }
            }
         }
         if(this.§-"c§)
         {
            for each(_loc8_ in this.bosses)
            {
               if(param2 == _loc8_ && !_loc8_.disposed)
               {
                  new §2&F§(_loc8_,_loc8_.x,_loc8_.y,_loc8_,_loc8_.record.getLevel() * §8%4§);
                  break;
               }
            }
         }
         if(this.§'"Q§ && !this.bosses[§"!M§].disposed && param2 == this.bosses[§"!M§])
         {
            _loc9_ = this.bosses[§"!M§].record.getLevel() * §]"6§;
            §5"O§.increaseAttack(this.bosses[§"!M§],_loc9_,§`"C§.§-"^§,§["4§.§6>§);
         }
         super.§ "a§(param1,param2);
      }
      
      private function §=&1§(param1:Event) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:§+%]§ = §+%]§(param1.currentTarget);
         var _loc4_:uint = 0;
         while(_loc4_ <= 2)
         {
            if(_loc3_ == this.bosses[_loc4_])
            {
               _loc2_ = _loc4_;
               break;
            }
            _loc4_++;
         }
         ++this.§'!^§;
         if(this.§'!^§ == 1)
         {
            this.§5!R§(_loc2_);
         }
         else if(this.§'!^§ == 2)
         {
            this.§5!R§(_loc2_);
            this.§,#q§();
         }
      }
      
      private function §5!R§(param1:uint) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         dispatchEvent(new §7%K§(param1 == §?_§ ? BossAchieves.YAKUZA_KILL_STEEL_LAST : BossAchieves.YAKUZA_KILL_TWO_IN_TURN));
         switch(param1)
         {
            case §4!V§:
               this.§-"c§ = true;
               break;
            case §"!M§:
               _loc3_ = this.bosses[param1].record.getLevel() * §>"z§;
               for each(_loc2_ in this.bosses)
               {
                  if(_loc2_ != this.bosses[param1] && !_loc2_.disposed)
                  {
                     §5"O§.increaseAttack(_loc2_,_loc3_,§`"C§.§-"^§,§["4§.§6>§);
                  }
               }
               break;
            case §?_§:
               _loc4_ = this.bosses[param1].record.getLevel() * §9%-§;
               for each(_loc2_ in this.bosses)
               {
                  if(_loc2_ != this.bosses[param1] && !_loc2_.disposed)
                  {
                     _loc2_.buffs.§6C§(§ !!§.NAME);
                     _loc2_.buffs.place(new §3#j§());
                     §5"O§.increaseArmor(_loc2_,_loc4_,§`"C§.§-"^§,§>!I§.§6>§);
                  }
               }
         }
      }
      
      private function §,#q§() : void
      {
         var _loc1_:uint = 0;
         var _loc3_:§+%]§ = null;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ <= 2)
         {
            if(!this.bosses[_loc2_].disposed)
            {
               _loc1_ = uint(_loc2_);
               break;
            }
            _loc2_++;
         }
         switch(_loc1_)
         {
            case §4!V§:
               _loc3_ = this.bosses[§4!V§];
               _loc3_.buffs.place(new §;!Y§(_loc3_.record.getLevel() * §=!v§));
               break;
            case §"!M§:
               _loc4_ = §8"%§.§?!W§.§^!U§().§'#t§();
               §§push(this.bosses[§"!M§]);
               §§push(§§findproperty(§,%8§));
               var _temp_1:* = new <§>%Q§>[new §>%Q§(_loc4_ ? §+%z§.SUPER_DRILL_MISSILE : (§^i§ ? uint(§+%z§.DRILL_GUN_UPG_2) : §+%z§.§!`§))];
               §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(_loc4_ ? §+%z§.SUPER_DRILL_MISSILE : (§^i§ ? uint(§+%z§.DRILL_GUN_UPG_2) : §+%z§.§!`§))]);
               this.§'"Q§ = true;
               break;
            case §?_§:
               _loc3_ = this.bosses[§?_§];
               _loc5_ = _loc3_.attributes.hp.§#&"§() - _loc3_.hp;
               new §2&F§(_loc3_,_loc3_.x,_loc3_.y,_loc3_,_loc5_);
               _loc3_.buffs.§6C§(§ !!§.NAME);
               _loc3_.buffs.place(new §3#j§());
               _loc3_.buffs.place(new §"$7§(20,true,0,0));
         }
      }
      
      private function §^#X§(param1:NewUnitEvent) : void
      {
         var _loc2_:String = null;
         if(param1.unit.squad.isAi() && !param1.unit.disposed)
         {
            _loc2_ = param1.unit.squad.§&!G§().getCharName();
            if(§^i§ && this.bosses.indexOf(param1.unit) == -1 && (_loc2_ == §0$N§.BOSS_PHARAOH_NAME || _loc2_ == §0$N§.BOT_NAME_SAMURAI_CAT))
            {
               this.bosses.push(param1.unit);
            }
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:§+%]§ = null;
         super.clear();
         if(§^i§)
         {
            Application.scene.removeEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
         }
         for each(_loc1_ in this.bosses)
         {
            _loc1_.removeEventListener(§0%v§.DISPOSED,this.§=&1§);
         }
         this.bosses = null;
      }
   }
}


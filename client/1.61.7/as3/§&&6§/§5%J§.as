package §&&6§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § "d§.§,!c§;
   import § #9§.§"$t§;
   import § &5§.§@N§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!K§.§!!n§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#k§.§9$v§;
   import §%# §.§@a§;
   import §%L§.§%%w§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&"c§.§5$n§;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§8"j§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§"$7§;
   import §+%S§.§##B§;
   import §+%S§.§2&>§;
   import §+%S§.§;!4§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §0&F§.UpgradeEvent;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2"v§.§@G§;
   import §2#H§.§#$A§;
   import §2#H§.§+N§;
   import §2#H§.§,"R§;
   import §2#H§.§,#V§;
   import §2#H§.§1%I§;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §2o§.§]#@§;
   import §3#T§.*;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §3%?§.§=E§;
   import §4!!§.§&!^§;
   import §4!!§.§2&F§;
   import §4$b§.§6!G§;
   import §4f§.§-&§;
   import §6"'§.§&"3§;
   import §6%2§.§#"B§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§"&=§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#<§.§!#^§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §<!^§.MeteorShard;
   import §<%k§.§`!v§;
   import §=&!§.§<$Z§;
   import §=7§.*;
   import §?#g§.*;
   import §?$7§.§8"e§;
   import §?$K§.§!"t§;
   import §?$K§.§3#j§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import config.§;"I§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.SelectRaceResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.common.post.*;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§>!n§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §5%J§ extends §-"o§
   {
      
      private static const § !?§:§&$2§ = new §&$2§(25);
      
      private static const §?y§:uint = 5;
      
      private static const §+&#§:uint = 150;
      
      private static const §[#>§:uint = 200;
      
      private static const §^$8§:uint = 200;
      
      private static const §4!Y§:Number = 2;
      
      private static const §6Z§:Number = 1;
      
      private var §7$w§:Vector.<§=E§> = new Vector.<§=E§>(0);
      
      private var boss:§+%]§;
      
      private var §%!D§:§"Z§;
      
      private var dummy:§&"T§;
      
      public function §5%J§(param1:Boolean = false)
      {
         super(param1);
         resource = new §@#%§("enchanter.swf");
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:Boolean = §8"%§.§?!W§.§^!U§().§'#t§();
         var _loc5_:§,!c§ = new §,!c§(5,1.1,0.9,param1);
         var _loc6_:§,!c§ = new §,!c§(12,1.6,1.4,param1);
         var _loc7_:UserProfile = UserProfile.§'#3§(§0$N§.BOSS_ENCHANTER_BOT_NAME_1,_loc5_.level * 1.35,Race.§ "w§,500 + 7 * _loc5_.§?"-§ + 3 * _loc5_.§>$m§,_loc5_.level * 1.5 * (_loc4_ ? 1.3 : 1),_loc5_.level * 0.9 * (_loc4_ ? 1.3 : 1),§,$O§.BOSS_ENCHANTER_MASK,§]!E§.BOSS_ENCHANTER_FIERY_DAGGER);
         var _loc8_:Vector.<§-!`§> = new Vector.<§-!`§>(0);
         if(§^i§)
         {
            _loc8_.push(new §-!`§(§0$N§.BOSS_ENCHANTER_BOT_NAME_1,[_loc7_,this.§0%$§(_loc6_),this.§0%$§(_loc6_)]));
         }
         else
         {
            _loc8_.push(new §-!`§(§0$N§.BOSS_ENCHANTER_BOT_NAME_1,[_loc7_]));
            _loc8_.push(new §-!`§(§0$N§.BOSS_ENCHANTER_TEAM_BOT_2,[this.§0%$§(_loc5_),this.§0%$§(_loc5_),this.§0%$§(_loc5_),this.§0%$§(_loc5_)]));
         }
         return _loc8_;
      }
      
      private function §0%$§(param1:§,!c§) : UserProfile
      {
         var _loc2_:Boolean = §8"%§.§?!W§.§^!U§().§'#t§();
         return UserProfile.§'#3§(§0$N§.BOSS_ENCHANTER_BOT_NAME_2,param1.level * 1,Race.§ "w§,(150 + 5 * param1.§?"-§ + 3 * param1.§>$m§) * (§^i§ ? 1.3 * (_loc2_ ? 1.25 : 1) : 1),param1.level * 0.6 * (_loc2_ ? 1.25 : 1),param1.level * 1 * (_loc2_ ? 1.25 : 1),§,$O§.DOCTOR_MASK,§]!E§.TOTEM_FIRE);
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Vector.<§+%]§> = null;
         var _loc3_:Vector.<§+%]§> = param1[0].§1!n§();
         _loc2_ = _loc3_[0];
         §§push(_loc2_);
         §§push(§§findproperty(§,%8§));
         var _temp_2:* = new <§>%Q§>[new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,0.7),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B,§^i§ ? 0.7 : 0.5),new §>%Q§(§+%z§.CROSSBOW,0.5),new §>%Q§(§+%z§.ANTITOXIN,0.9),new §>%Q§(§+%z§.BANDAGE,0.3,3),new §>%Q§(§+%z§.ANTIFREEZE_U2A_ATTACK,0.3,2),new §>%Q§(§+%z§.BOSS_FIRE_MINIGUN,0.2),new §>%Q§(§+%z§.PUPPET,0.1,1,30)];
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,0.7),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B,§^i§ ? 0.7 : 0.5),new §>%Q§(§+%z§.CROSSBOW,0.5),new §>%Q§(§+%z§.ANTITOXIN,0.9),new §>%Q§(§+%z§.BANDAGE,0.3,3),new §>%Q§(§+%z§.ANTIFREEZE_U2A_ATTACK,0.3,2),new §>%Q§(§+%z§.BOSS_FIRE_MINIGUN,0.2),new §>%Q§(§+%z§.PUPPET,0.1,1,30)],uint.MAX_VALUE,true,true);
         this.§+%p§(_loc2_);
         _loc2_.aiArsenal.subtractWeapons([§+%z§.METEOR,§+%z§.§<!;§]);
         _loc2_.buffs.place(new §3#j§());
         _loc2_.buffs.place(new §!"t§(§+&#§));
         _loc2_.addEventListener(§0%v§.§&!D§,this.§#"o§);
         this.boss = _loc2_;
         if(§^i§)
         {
            if(§8"%§.§?!W§.§^!U§().§'#t§())
            {
               this.boss.aiArsenal.addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.ANTIFREEZE_U2A_ATTACK,0.2,2),new §>%Q§(§+%z§.ANTIFREEZE_U2B_ARMOR,0.2,2),new §>%Q§(§+%z§.PUPPET_U2A_CURSED,0.3,2),new §>%Q§(§+%z§.VILE_PUMPKIN,0.5,2),new §>%Q§(§+%z§.PARASITE_UPG_2,0.5,2),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,2),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.9,2)],uint.MAX_VALUE);
            }
            _loc4_ = 1;
            _loc5_ = int(_loc3_.length);
            while(_loc4_ < _loc5_)
            {
               _loc2_ = _loc3_[_loc4_];
               this.§2!P§(_loc2_);
               _loc4_++;
            }
            this.§%!D§ = param1[0];
         }
         else
         {
            _loc6_ = param1[1].§1!n§();
            for each(_loc2_ in _loc6_)
            {
               this.§2!P§(_loc2_);
            }
            this.§%!D§ = param1[1];
         }
         super.§+$L§(param1);
      }
      
      private function §+%p§(param1:§+%]§) : void
      {
         if(!§^i§)
         {
            return;
         }
         §§push(param1.aiArsenal);
         var _temp_1:* = new <§>%Q§>[new §>%Q§(§+%z§.§"%P§,0.5),new §>%Q§(§+%z§.§ %L§,0.5),new §>%Q§(§+%z§.RED_HOT_HAMMER,0.3),new §>%Q§(§+%z§.BOSS_FIRE_MINIGUN,0.4)];
         var _temp_3:* = new <§>%Q§>[new §>%Q§(§+%z§.§"%P§,0.5),new §>%Q§(§+%z§.§ %L§,0.5),new §>%Q§(§+%z§.RED_HOT_HAMMER,0.3),new §>%Q§(§+%z§.BOSS_FIRE_MINIGUN,0.4)];
         §§pop().addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.§"%P§,0.5),new §>%Q§(§+%z§.§ %L§,0.5),new §>%Q§(§+%z§.RED_HOT_HAMMER,0.3),new §>%Q§(§+%z§.BOSS_FIRE_MINIGUN,0.4)],uint.MAX_VALUE);
      }
      
      private function §2!P§(param1:§+%]§) : void
      {
         param1.aiArsenal = new §,%8§(new <§>%Q§>[new §>%Q§(§+%z§.DRILL_GUN_UPG_1,1),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.6),new §>%Q§(§+%z§.AK_47_UPG_1A,0.4),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.ANTITOXIN,0.6),new §>%Q§(§+%z§.BANDAGE,0.3,1)],uint.MAX_VALUE,true,false,true);
         this.§+%p§(param1);
         if(§^i§)
         {
            if(§8"%§.§?!W§.§^!U§().§'#t§())
            {
               §§push(param1.aiArsenal);
               §§pop().addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3A_DINO,0.5),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B,0.5),new §>%Q§(§+%z§.PARASITE_UPG_2,0.4,1),new §>%Q§(§+%z§.VILE_PUMPKIN,0.4,1),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.8,1),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,1)],uint.MAX_VALUE);
            }
         }
         param1.buffs.place(new §3#j§());
      }
      
      private function §#"o§(param1:DamageEvent) : void
      {
         var _loc2_:§=E§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.boss.buffs.hasBuff(§,#V§.NAME))
         {
            return;
         }
         if(Boolean(param1.source) && Boolean(param1.source.owner) && !param1.source.owner.disposed)
         {
            _loc3_ = §4!Y§ - this.§%!D§.§'"H§() + (§^i§ && !this.boss.disposed ? 1 : 0);
            if(_loc3_ > 0 && this.boss.squad.getTeamId() != param1.source.owner.squad.getTeamId())
            {
               §1"-§.§8"l§(this.boss,§1"-§.§+@§,50);
               _loc4_ = §6Z§ * _loc3_ * param1.power;
               §'"$§.§]#I§(this.boss,this.boss.x,this.boss.y,param1.source.owner,_loc4_,0,0,false,true);
            }
         }
         if(Boolean(this.dummy) && !this.dummy.disposed)
         {
            return;
         }
         for each(_loc2_ in this.§7$w§)
         {
            if(!_loc2_.disposed)
            {
               _loc2_.disposed = true;
            }
         }
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         super.§ "a§(param1,param2);
         if(§4"m§.§,j§() == 1)
         {
            this.§<&C§();
         }
         if(!§4"m§.§;#l§())
         {
            return;
         }
         if(param2 == this.boss)
         {
            if(this.boss.buffs.hasBuff(§,#V§.NAME))
            {
               this.§8#s§();
            }
         }
         if(this.§%!D§.§@Q§(param2) && param2 != this.boss)
         {
            if(this.boss.attributes.hp.value != this.boss.attributes.hp.§#&"§() && !this.boss.disposed)
            {
               new §2&F§(param2,param2.x,param2.y,this.boss,this.§="]§());
            }
            else if(this.boss.disposed)
            {
               this.§8#s§();
            }
         }
         if(§^i§ && §4"m§.activeSquad == param2.squad && this.§^&%§().length > 0)
         {
            this.§8#s§();
         }
      }
      
      override public function §6&§(param1:uint) : void
      {
         if(!§4"m§.§;#l§())
         {
            this.§2'§();
         }
         if(!currentUnit.disposed && this.§%!D§.§@Q§(currentUnit))
         {
            this.§<&C§();
         }
      }
      
      private function §2'§() : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:Vector.<§+%]§> = null;
         var _loc4_:§+%]§ = null;
         var _loc1_:Vector.<§+%]§> = this.§%!D§.§1!n§();
         for each(_loc2_ in _loc1_)
         {
            if(!(§^i§ && _loc2_ == this.boss))
            {
               _loc3_ = §<H§.§5"]§(_loc2_.x,_loc2_.y,§^$8§,_loc1_);
               for each(_loc4_ in _loc3_)
               {
                  if(_loc4_ != _loc2_)
                  {
                     §-#M§.§[&F§(_loc4_);
                  }
               }
            }
         }
      }
      
      private function §8#s§() : void
      {
         var _loc1_:* = 0;
         var _loc2_:§=E§ = null;
         _loc1_ = int(this.§7$w§.length - 1);
         while(_loc1_ > -1)
         {
            _loc2_ = this.§7$w§[_loc1_];
            if(!_loc2_.disposed)
            {
               _loc2_.§<%§ = true;
               _loc2_.disposed = true;
               this.§7$w§.splice(_loc1_,1);
            }
            _loc1_--;
         }
         if(!this.boss.disposed && this.boss.buffs.hasBuff(§,#V§.NAME))
         {
            this.boss.buffs.§6C§(§,#V§.NAME);
         }
      }
      
      private function §="]§() : uint
      {
         var _loc1_:Number = 1;
         switch(§8"%§.§?!W§.§^!U§().§^"g§)
         {
            case §8"e§.HARD:
               _loc1_ = 2;
               break;
            case §8"e§.§?=§:
               _loc1_ = 3;
         }
         return § !?§.value * _loc1_ * (§?y§ - this.§%!D§.§'"H§() - (§^i§ && !this.boss.disposed ? 1 : 0));
      }
      
      private function §<&C§() : void
      {
         var _loc6_:Vector.<§+%]§> = null;
         var _loc7_:Point = null;
         var _loc8_:uint = 0;
         var _loc9_:* = 0;
         var _loc10_:int = 0;
         var _loc11_:§&!^§ = null;
         var _loc1_:uint = this.§%!D§.§'"H§();
         var _loc2_:Vector.<§&"T§> = new Vector.<§&"T§>(0);
         this.dummy = Application.scene.§,$z§();
         var _loc3_:int = §-#M§.§-!e§ * (§^i§ ? 0.5 : 1);
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         while(_loc5_ < _loc1_)
         {
            _loc6_ = this.§%!D§.§1!n§();
            if(!(§^i§ && _loc6_[_loc5_] == this.boss))
            {
               _loc8_ = 1;
               _loc9_ = _loc3_;
               do
               {
                  _loc7_ = §-#M§.§,#e§();
                  _loc9_--;
                  if(_loc7_)
                  {
                     _loc8_ = §<H§.§3%'§(_loc7_.x,_loc7_.y,§[#>§,_loc2_).length;
                  }
                  if(_loc9_ == 0)
                  {
                     break;
                  }
               }
               while(_loc8_ > 0);
               if(!_loc7_)
               {
                  _loc7_ = §-#M§.§`&!§(§-#M§.§-!e§,false);
               }
               _loc7_.y -= §=E§.§"!Z§;
               _loc2_.push(new §&"T§());
               _loc10_ = _loc2_.length - 1;
               _loc2_[_loc10_].x = _loc7_.x;
               _loc2_[_loc10_].y = _loc7_.y;
               if(_loc7_)
               {
                  _loc4_++;
                  _loc11_ = new §&!^§(_loc6_[_loc5_],_loc6_[_loc5_].x,_loc6_[_loc5_].y,true,_loc7_,16724736,16724736,40);
                  _loc11_.addEventListener(§0%v§.DISPOSED,this.§=X§);
               }
            }
            _loc5_++;
         }
         if(_loc4_ == 0)
         {
            this.dummy.disposed = true;
         }
         else if(!this.boss.disposed)
         {
            this.boss.buffs.replace(new §,#V§(this.boss,_loc4_ * §=E§.§;$R§()));
         }
      }
      
      private function §=X§(param1:Event) : void
      {
         if(Application.scene.§@$I§.§=%d§())
         {
            return;
         }
         var _loc2_:Vector.<§=E§> = this.§^&%§();
         var _loc3_:§&!^§ = §&!^§(param1.currentTarget);
         _loc3_.removeEventListener(§0%v§.DISPOSED,this.§=X§);
         var _loc4_:§=E§ = new §=E§(this.boss,_loc3_.target.x,_loc3_.target.y);
         this.§7$w§.push(_loc4_);
         _loc2_ = this.§^&%§();
         var _loc5_:uint = this.§%!D§.§'"H§();
         if(_loc5_ - (§^i§ && !this.boss.disposed && _loc5_ > 1 ? 1 : 0) == _loc2_.length)
         {
            for each(_loc4_ in _loc2_)
            {
               _loc4_.canBeDamaged = true;
            }
            this.dummy.disposed = true;
         }
      }
      
      private function §^&%§() : Vector.<§=E§>
      {
         var _loc2_:§=E§ = null;
         var _loc1_:Vector.<§=E§> = new Vector.<§=E§>(0);
         for each(_loc2_ in this.§7$w§)
         {
            if(!_loc2_.disposed)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      private function §]%]§() : uint
      {
         return this.§^&%§().length * §=E§.§;$R§();
      }
      
      override public function clear() : void
      {
         this.boss.removeEventListener(§0%v§.§&!D§,this.§#"o§);
         this.boss = null;
         this.§7$w§.length = 0;
      }
   }
}


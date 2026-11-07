package §&&6§
{
   import § !P§.§<#q§;
   import § "d§.§,!c§;
   import § &5§.§@N§;
   import § L§.§`T§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"!C§.§3#n§;
   import §"%H§.§1! §;
   import §##y§.§9§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+#P§.§]!E§;
   import §+$=§.§+&§;
   import §+$=§.§6#A§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §2!-§.§^!9§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4%_§.§3§;
   import §5$p§.§4&$§;
   import §5$p§.ArchdemonRope;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$1§.§3&G§;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §8$V§.*;
   import §;!J§.*;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §?!E§.*;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import com.greensock.TweenMax;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.SWFLoader;
   import config.§5%T§;
   import config.achievements.§"!&§;
   import config.achievements.BossAchieves;
   import config.achievements.§^t§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.StageQuality;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.GetAbandonedFriendsResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   import vk.*;
   import vk.api.§;&G§;
   
   public class §]$T§ extends §-"o§
   {
      
      private static const §%"W§:uint = 100;
      
      private static const §2%Z§:uint = 150;
      
      private static const §-!p§:uint = 250;
      
      private static const §6$Y§:uint = 10;
      
      private static const §%$<§:uint = 1;
      
      private var boss:§+%]§;
      
      private var §?"1§:uint = 0;
      
      public function §]$T§(param1:Boolean = false)
      {
         super(param1);
         resource = new §@#%§("archdemon.swf");
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:§,!c§ = new §,!c§(§^i§ ? 30 : 15,§^i§ ? 1.5 : 1.3,§^i§ ? 1.1 : 0.9,param1);
         var _loc5_:uint = _loc4_.§>$m§;
         var _loc6_:uint = _loc4_.§?"-§;
         var _loc7_:uint = _loc4_.level;
         var _temp_2:* = new <§-!`§>[new §-!`§(§0$N§.BOSS_ARCHDEMON_NAME,[UserProfile.§'#3§(§0$N§.BOSS_ARCHDEMON_NAME,_loc7_ * 1.4,Race.§+&8§,(820 + 15 * _loc6_ + 5 * _loc5_) * (§^i§ ? 1.3 : 1),10 + _loc7_ * 1.3,10 + _loc7_ * 1.7,§,$O§.LAVA_JAW,§]!E§.BOSS_ARCHIDEMON_SHIELD,§5%T§.§4#=§)])];
         return new <§-!`§>[new §-!`§(§0$N§.BOSS_ARCHDEMON_NAME,[UserProfile.§'#3§(§0$N§.BOSS_ARCHDEMON_NAME,_loc7_ * 1.4,Race.§+&8§,(820 + 15 * _loc6_ + 5 * _loc5_) * (§^i§ ? 1.3 : 1),10 + _loc7_ * 1.3,10 + _loc7_ * 1.7,§,$O§.LAVA_JAW,§]!E§.BOSS_ARCHIDEMON_SHIELD,§5%T§.§4#=§)])];
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         this.boss = §+%]§(param1[0].§1!n§()[0]);
         this.boss.aiMissFactor = 1;
         this.boss.aiShotPower = 5;
         this.boss.aiArsenal = new §,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§!`§,1),new §>%Q§(§+%z§.MINIGUN_U2A_REDUCE_ARMOR,0.5),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2A_POISON,0.3),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,0.7),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2A,0.5),new §>%Q§(§+%z§.ANTITOXIN,0.6),new §>%Q§(§+%z§.BANDAGE,0.3,1)]);
         var _loc2_:Boolean = §8"%§.§?!W§.§^!U§().§'#t§();
         if(_loc2_)
         {
            this.boss.aiArsenal.subtractWeapons([§+%z§.SNIPER_RIFLE,§+%z§.SNIPER_RIFLE_UPG_1,§+%z§.SNIPER_RIFLE_UPG_2A,§+%z§.SNIPER_RIFLE_UPG_2B]);
            §§push(this.boss.aiArsenal);
            var _temp_14:* = new <§>%Q§>[new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3B_WASP,0.5),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.8),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6),new §>%Q§(§+%z§.PLASMAGUN,0.4),new §>%Q§(§+%z§.BOSS_FIRE_MINIGUN,0.7),new §>%Q§(§+%z§.RED_HOT_HAMMER,0.3),new §>%Q§(§+%z§.§"%P§,0.5)];
            §§pop().addWeapons(new <§>%Q§>[new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_3B_WASP,0.5),new §>%Q§(§+%z§.EMERGENCY_TELEPORT_UPG_3A,0.8),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6),new §>%Q§(§+%z§.PLASMAGUN,0.4),new §>%Q§(§+%z§.BOSS_FIRE_MINIGUN,0.7),new §>%Q§(§+%z§.RED_HOT_HAMMER,0.3),new §>%Q§(§+%z§.§"%P§,0.5)],uint.MAX_VALUE);
         }
         §-#M§.§&"r§(this.boss);
         super.§+$L§(param1);
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         super.§ "a§(param1,param2);
         if(§4"m§.§;#l§())
         {
            if(§4"m§.activeUnit == this.boss)
            {
               this.§[!2§();
               ++this.§?"1§;
            }
         }
         else if(this.§?"1§ >= §%$<§)
         {
            this.§?"1§ = 0;
            this.§0%7§(param2);
         }
      }
      
      override public function §6&§(param1:uint) : void
      {
         var _loc2_:§+%]§ = null;
         if(§4"m§.§;#l§() && §4"m§.activeUnit == this.boss)
         {
            _loc2_ = this.§0#,§();
            if(this.boss.hp < this.boss.attributes.hp.§#&"§() / 2)
            {
               this.§0#,§(_loc2_);
            }
         }
      }
      
      override public function clear() : void
      {
         this.boss = null;
      }
      
      private function §[!2§() : void
      {
         var _loc3_:§4&$§ = null;
         var _loc4_:§'$V§ = null;
         var _loc1_:§+%]§ = null;
         var _loc2_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([§4&$§]);
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_.§>$c§().hp >= this.boss.hp + §-q§.§8$G§(§6$Y§,this.boss.hp) && (!_loc1_ || _loc1_.hp < _loc3_.§>$c§().hp))
            {
               _loc1_ = _loc3_.§>$c§();
               break;
            }
         }
         if(_loc1_)
         {
            _loc4_ = new §'$V§(this.boss,this.boss.x,this.boss.y,true,_loc1_,16711680,16711680,20);
            §""n§.single(_loc4_,§0%v§.DISPOSED,this.§7!R§,this,[_loc1_]);
         }
      }
      
      private function §7!R§(param1:§+%]§) : void
      {
         §1"-§.§8"l§(this.boss,"BossAbsorptionHealth");
         §1"-§.§8"l§(param1,"VictimExhaustionHealth",-1,§1%"§.§]$<§(this.§'!G§,this,[param1]));
      }
      
      private function §'!G§(param1:§+%]§) : void
      {
         var _loc2_:uint = 0;
         if(Boolean(this.boss && !this.boss.disposed) && Boolean(param1) && !param1.disposed)
         {
            _loc2_ = uint(this.boss.hp);
            this.boss.attributes.hp.change(param1.hp - _loc2_);
            param1.attributes.hp.change(-param1.hp + _loc2_);
         }
      }
      
      private function §0#,§(param1:§+%]§ = null) : §+%]§
      {
         var _loc4_:§+%]§ = null;
         var _loc6_:§#p§ = null;
         var _loc9_:Boolean = false;
         var _loc10_:ArchdemonRope = null;
         var _loc12_:§4&$§ = null;
         var _loc2_:Vector.<§+%]§> = §4"m§.§6"M§(this.boss);
         if(_loc2_.length == 0)
         {
            return null;
         }
         var _loc3_:Boolean = _loc2_.length > 1;
         var _loc5_:Array = [];
         for each(_loc4_ in _loc2_)
         {
            if(!§^i§ || !param1 || _loc3_ && param1 != _loc4_)
            {
               _loc5_[_loc5_.length] = _loc4_;
            }
         }
         if(§^i§)
         {
            for each(_loc4_ in _loc5_)
            {
            }
            _loc5_.sort(this.§>"!§);
            for each(_loc4_ in _loc5_)
            {
            }
         }
         else
         {
            _loc5_ = §""L§.§6$6§(_loc5_,randomSeed);
         }
         _loc6_ = Application.scene.§@$I§.§;%a§;
         var _loc7_:Vector.<§&"T§> = _loc6_.§"L§([§4&$§]);
         var _loc8_:Vector.<§&"T§> = _loc6_.§"L§([ArchdemonRope]);
         var _loc11_:* = int(_loc5_.length - 1);
         while(_loc11_ > -1)
         {
            if(_loc5_.length <= 1)
            {
               break;
            }
            _loc4_ = _loc5_[_loc11_];
            _loc9_ = false;
            for each(_loc12_ in _loc7_)
            {
               if(!_loc9_ && _loc12_.§>$c§() == _loc4_)
               {
                  if(_loc5_.length > 2)
                  {
                     _loc5_.splice(_loc11_,1);
                  }
                  _loc9_ = true;
                  if(_loc5_.length < 3)
                  {
                     break;
                  }
               }
            }
            if(!_loc9_ && _loc5_.length > 1)
            {
               for each(_loc10_ in _loc8_)
               {
                  if(_loc10_.§>$c§() == _loc4_)
                  {
                     if(_loc5_.length > 1)
                     {
                        _loc5_.splice(_loc11_,1);
                     }
                     if(_loc5_.length < 2)
                     {
                        break;
                     }
                  }
               }
            }
            _loc11_--;
         }
         if(_loc5_.length == 0)
         {
            return null;
         }
         _loc4_ = §+%]§(_loc5_[0]);
         _loc10_ = new ArchdemonRope(this.boss,_loc4_,§%"W§,§2%Z§);
         _loc10_.x = _loc4_.x;
         _loc10_.y = _loc4_.y + §<H§.§-#C§ + 3;
         return _loc4_;
      }
      
      private function §>"!§(param1:§+%]§, param2:§+%]§) : int
      {
         if(§<H§.distance(this.boss,param1) < §<H§.distance(this.boss,param2))
         {
            return -1;
         }
         if(§<H§.distance(this.boss,param1) > §<H§.distance(this.boss,param2))
         {
            return 1;
         }
         return 0;
      }
      
      private function §0%7§(param1:§+%]§) : void
      {
         var _loc2_:* = 0;
         var _loc3_:§+%]§ = null;
         var _loc6_:Vector.<§&"T§> = null;
         var _loc8_:§4&$§ = null;
         var _loc9_:§+%]§ = null;
         var _loc10_:Boolean = false;
         var _loc11_:ArchdemonRope = null;
         var _loc4_:Array = [];
         var _loc5_:Vector.<§+%]§> = §4"m§.§6"M§(this.boss);
         for each(_loc3_ in _loc5_)
         {
            _loc4_.push(_loc3_);
         }
         _loc6_ = Application.scene.§@$I§.§;%a§.§"L§([§4&$§]);
         _loc2_ = int(_loc4_.length - 1);
         while(_loc2_ >= 0)
         {
            for each(_loc8_ in _loc6_)
            {
               if(_loc4_[_loc2_] == _loc8_.§>$c§())
               {
                  _loc4_.splice(_loc2_,1);
               }
            }
            _loc2_--;
         }
         var _loc7_:Point = §-#M§.§,#e§(100,true);
         if((Boolean(_loc7_)) && _loc4_.length > 0)
         {
            if(_loc4_.length > 1)
            {
               _loc2_ = int(_loc4_.length - 1);
               while(_loc2_ >= 0)
               {
                  if(_loc4_[_loc2_] == param1)
                  {
                     _loc4_.splice(_loc2_,1);
                     break;
                  }
                  _loc2_--;
               }
               _loc4_ = §""L§.§6$6§(_loc4_,randomSeed);
            }
            _loc9_ = _loc4_[0];
            _loc6_ = Application.scene.§@$I§.§;%a§.§"L§([ArchdemonRope]);
            for each(_loc3_ in _loc4_)
            {
               _loc10_ = false;
               for each(_loc11_ in _loc6_)
               {
                  if(_loc3_ == _loc11_.§>$c§())
                  {
                     _loc10_ = true;
                     break;
                  }
               }
               if(!_loc10_)
               {
                  _loc9_ = _loc3_;
                  break;
               }
            }
            new §4&$§(this.boss,_loc9_,_loc7_.x,_loc7_.y,§-!p§);
         }
      }
   }
}


package §?%J§
{
   import § "d§.§,!c§;
   import § #k§.§!&$§;
   import § #k§.§%%l§;
   import § #k§.§3%0§;
   import § #k§.§4#O§;
   import § #k§.§8W§;
   import § #m§.§[&H§;
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §"% §.LevelUpDialog;
   import §##y§.§9§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%# §.§##U§;
   import §%L§.§'$T§;
   import §&!m§.§-$6§;
   import §&&6§.§>V§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-@§.§0"e§;
   import §-@§.§8"k§;
   import §-I§.§,$$§;
   import §0%[§.§1%"§;
   import §0%z§.BossAchieveHint;
   import §0&F§.§0%v§;
   import §1#0§.§;4§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §2#s§.*;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4'§.§`"q§;
   import §4u§.§[%u§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §6"'§.§9$Z§;
   import §6",§.§[%w§;
   import §6%2§.*;
   import §7!B§.§&"T§;
   import §7!B§.§>"D§;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §9![§.§^§;
   import §9%W§.§&!P§;
   import §<"L§.*;
   import §<%E§.§4T§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?"j§.*;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$K§.§!"t§;
   import §?$K§.§3#j§;
   import §?$K§.§[&"§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§<!9§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`#x§.*;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import config.*;
   import config.achievements.§!$L§;
   import flash.display.*;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.geom.Point;
   import flash.ui.Mouse;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§""t§;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.game.rules.§;!f§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.ChooseBonusItem;
   import ru.pragmatix.wormix.messages.client.ClearName;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.§#p§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.CreateBattleRequest;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.Uzi;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §-&"§ extends §-"o§
   {
      
      private static const §##2§:uint = 50;
      
      private static const § #H§:uint = 1;
      
      private static const §8$d§:uint = 70;
      
      private static const §,$b§:uint = 30;
      
      private static const §8"D§:uint = 150;
      
      private var emperor:§+%]§;
      
      private var §?#r§:Vector.<§3%0§> = new Vector.<§3%0§>();
      
      private var §&%3§:uint;
      
      private var §"$X§:uint = 0;
      
      private var dummy:§&"T§;
      
      public function §-&"§(param1:Boolean = false)
      {
         super(param1);
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         var _loc4_:§,!c§ = new §,!c§(5,1.2,1,param1);
         var _temp_1:* = new <§-!`§>[new §-!`§(§0$N§.§<N§("BOSS_EMPEROR_NAME"),[UserProfile.§'#3§(§0$N§.§<N§("BOSS_EMPEROR_NAME"),_loc4_.level,Race.§"$H§,920 + 8 * _loc4_.§?"-§ + 20 * _loc4_.§3"`§,_loc4_.level * 1.1,_loc4_.level * 1.5,§,$O§.§'#j§,§]!E§.§6%m§,§5%T§.§8%y§)])];
         return new <§-!`§>[new §-!`§(§0$N§.§<N§("BOSS_EMPEROR_NAME"),[UserProfile.§'#3§(§0$N§.§<N§("BOSS_EMPEROR_NAME"),_loc4_.level,Race.§"$H§,920 + 8 * _loc4_.§?"-§ + 20 * _loc4_.§3"`§,_loc4_.level * 1.1,_loc4_.level * 1.5,§,$O§.§'#j§,§]!E§.§6%m§,§5%T§.§8%y§)])];
      }
      
      private function §0!I§(param1:§+%]§) : void
      {
         param1.aiMissFactor = 0;
         param1.aiShotPower = 4;
         §§push(param1);
         §§push(§§findproperty(§,%8§));
         var _temp_4:* = new <§>%Q§>[new §>%Q§(§+%z§.DRILL_GUN_UPG_1),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,0.7),new §>%Q§(§+%z§.BOSS_FIRE_MINIGUN,0.7),new §>%Q§(§+%z§.PARASITE_UPG_1,0.4),new §>%Q§(§+%z§.BLIZZARD,0.4),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,2)];
         var _temp_7:* = new <§>%Q§>[new §>%Q§(§+%z§.DRILL_GUN_UPG_1),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,0.7),new §>%Q§(§+%z§.BOSS_FIRE_MINIGUN,0.7),new §>%Q§(§+%z§.PARASITE_UPG_1,0.4),new §>%Q§(§+%z§.BLIZZARD,0.4),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,2)];
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.DRILL_GUN_UPG_1),new §>%Q§(§+%z§.STICKY_GRENADE_UPG_2B,0.7),new §>%Q§(§+%z§.BOSS_FIRE_MINIGUN,0.7),new §>%Q§(§+%z§.PARASITE_UPG_1,0.4),new §>%Q§(§+%z§.BLIZZARD,0.4),new §>%Q§(§+%z§.ANTITOXIN,0.4),new §>%Q§(§+%z§.BANDAGE,0.3,1),new §>%Q§(§+%z§.GIRDER_U2_TACTIC,0.6,2)],99);
         §-#M§.§&"r§(param1);
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         this.emperor = param1[0].§1!n§()[0];
         this.§0!I§(this.emperor);
         this.emperor.buffs.place(new §!"t§());
         this.emperor.buffs.place(new §[&"§(§8"D§));
         this.emperor.buffs.place(new §3#j§());
         this.emperor.addEventListener(§0%v§.§&!D§,this.§'$R§);
         this.§&%3§ = this.emperor.attributes.hp.value - §##2§;
         super.§+$L§(param1);
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
      }
      
      override public function §6&§(param1:uint) : void
      {
         if(this.§"$X§ > 0)
         {
            this.§"!^§();
         }
      }
      
      private function §"!^§() : void
      {
         if(!this.dummy)
         {
            this.dummy = Application.scene.§,$z§();
         }
         var _loc1_:Vector.<Class> = new <Class>[§8W§];
         if(!this.§^#$§())
         {
            _loc1_.push(§%%l§);
         }
         if(!this.emperor.disposed)
         {
            _loc1_.push(§4#O§);
         }
         if(!this.emperor.disposed && !this.§[R§())
         {
            _loc1_.push(§!&$§);
         }
         var _loc2_:Class = _loc1_[§8"%§.randomSeed.§,!q§(0,_loc1_.length - 1)];
         var _loc3_:Point = this.§'%L§();
         this.§?#r§.push(new _loc2_(this.emperor,_loc3_.x,_loc3_.y));
         --this.§"$X§;
         var _loc4_:Boolean = §8"%§.§?!W§.§4"m§.§6"M§(this.emperor).length > 0;
         if(this.§"$X§ > 0 && _loc4_)
         {
            §8$a§.§%!E§(§,$b§,this.§"!^§);
         }
         else if(this.dummy)
         {
            this.dummy.disposed = true;
         }
      }
      
      private function §'%L§() : Point
      {
         var _loc2_:Point = null;
         var _loc3_:uint = 0;
         var _loc1_:uint = 25;
         var _loc4_:uint = 0;
         do
         {
            _loc2_ = §-#M§.§,#e§();
            _loc3_ = §<H§.§3%'§(_loc2_.x,_loc2_.y,§8$d§,Vector.<§&"T§>(this.§?$'§())).length;
            _loc4_++;
         }
         while(_loc3_ > 0 && _loc4_ < _loc1_);
         return _loc2_;
      }
      
      private function §[R§() : Boolean
      {
         var _loc1_:§3%0§ = null;
         for each(_loc1_ in this.§?#r§)
         {
            if(_loc1_ is §!&$§ && !_loc1_.disposed)
            {
               return true;
            }
         }
         return false;
      }
      
      private function §^#$§() : Boolean
      {
         var _loc1_:uint = 0;
         var _loc4_:§3%0§ = null;
         _loc1_ = §8"%§.§?!W§.§4"m§.§6"M§(this.emperor).length;
         var _loc2_:uint = _loc1_ * § #H§;
         var _loc3_:uint = 0;
         for each(_loc4_ in this.§?#r§)
         {
            if(_loc4_ is §%%l§ && !_loc4_.disposed)
            {
               _loc3_++;
               if(_loc3_ >= _loc2_)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private function §?$'§() : Vector.<§3%0§>
      {
         var _loc2_:§3%0§ = null;
         var _loc1_:Vector.<§3%0§> = new Vector.<§3%0§>();
         for each(_loc2_ in this.§?#r§)
         {
            if(!_loc2_.disposed)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      private function §'$R§(param1:DamageEvent) : void
      {
         var _loc2_:int = 0;
         if(this.emperor.attributes.hp.value < this.§&%3§)
         {
            _loc2_ = param1.power;
            while(_loc2_ > 0)
            {
               ++this.§"$X§;
               _loc2_ -= §##2§;
            }
            this.§&%3§ = this.emperor.attributes.hp.value - §##2§;
         }
      }
      
      override public function clear() : void
      {
         this.emperor.removeEventListener(§0%v§.§&!D§,this.§'$R§);
         this.emperor = null;
      }
   }
}


package §&&6§
{
   import § "d§.§,!c§;
   import § #m§.§;#^§;
   import § $q§.§3U§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.§`&$§;
   import §#"V§.§!&5§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!%§;
   import §'!Z§.§;n§;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §+%S§.§'%V§;
   import §,!f§.*;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%z§.§?$E§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1!J§.§@#%§;
   import §1#p§.*;
   import §2!-§.§'5§;
   import §2!-§.DamageEvent;
   import §2!-§.NewGraveEvent;
   import §2#H§.§<§;
   import §2#H§.§`#D§;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §2B§.§^%y§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4#`§.§+!l§;
   import §4$b§.§2m§;
   import §5!,§.§9$h§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §8#o§.§#$s§;
   import §8$Z§.§9!&§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §="z§.§9%1§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$K§.§3#j§;
   import §?$K§.§`""§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?>§.§]!V§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[" §.*;
   import §]$&§.§2&2§;
   import §]$J§.§#"s§;
   import §]$v§.§+%n§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`"p§.*;
   import com.greensock.TweenMax;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.ChooseBonusItemResult;
   import ru.pragmatix.wormix.messages.server.DowngradeWeaponResult;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §7"1§ extends §-"o§
   {
      
      private const §8!6§:uint = 20;
      
      private var bosses:Vector.<§+%]§> = new Vector.<§+%]§>(0);
      
      private var §%"w§:Vector.<§+%]§> = new Vector.<§+%]§>(0);
      
      private var §,!O§:uint = 0;
      
      protected var playerSquads:Vector.<§"Z§>;
      
      public function §7"1§(param1:Boolean = false)
      {
         super(param1);
         resource = new §@#%§("phantom.swf");
      }
      
      override public function §<"u§(param1:Vector.<§"Z§>, param2:uint, param3:uint) : Vector.<§-!`§>
      {
         this.playerSquads = param1;
         var _loc4_:§,!c§ = new §,!c§(5,1.1,0.9,param1);
         var _loc5_:uint = _loc4_.§>$m§;
         var _loc6_:uint = _loc4_.§?"-§;
         var _loc7_:uint = _loc4_.level;
         var _temp_2:* = new <§-!`§>[new §-!`§(§0$N§.BOSS_PHANTOMS_BOT_NAME,[UserProfile.§'#3§(§0$N§.BOSS_PHANTOMS_BOT_NAME,_loc7_ * 1.6,Race.§"$H§,450 + 7 * _loc6_ + 3 * _loc5_,_loc7_ * 1.5,_loc7_ * 1.2,§,$O§.BOSS_PHANTOM)]),new §-!`§(§0$N§.BOSS_PHANTOMS_BOT_NAME,[UserProfile.§'#3§(§0$N§.BOSS_PHANTOMS_BOT_NAME,_loc7_ * 1.7,Race.§"$H§,300 + 6 * _loc6_ + 3 * _loc5_,_loc7_ * 1.3,_loc7_ * 1.4,§,$O§.BOSS_PHANTOM)])];
         var _temp_3:* = new <§-!`§>[new §-!`§(§0$N§.BOSS_PHANTOMS_BOT_NAME,[UserProfile.§'#3§(§0$N§.BOSS_PHANTOMS_BOT_NAME,_loc7_ * 1.6,Race.§"$H§,450 + 7 * _loc6_ + 3 * _loc5_,_loc7_ * 1.5,_loc7_ * 1.2,§,$O§.BOSS_PHANTOM)]),new §-!`§(§0$N§.BOSS_PHANTOMS_BOT_NAME,[UserProfile.§'#3§(§0$N§.BOSS_PHANTOMS_BOT_NAME,_loc7_ * 1.7,Race.§"$H§,300 + 6 * _loc6_ + 3 * _loc5_,_loc7_ * 1.3,_loc7_ * 1.4,§,$O§.BOSS_PHANTOM)])];
         return new <§-!`§>[new §-!`§(§0$N§.BOSS_PHANTOMS_BOT_NAME,[UserProfile.§'#3§(§0$N§.BOSS_PHANTOMS_BOT_NAME,_loc7_ * 1.6,Race.§"$H§,450 + 7 * _loc6_ + 3 * _loc5_,_loc7_ * 1.5,_loc7_ * 1.2,§,$O§.BOSS_PHANTOM)]),new §-!`§(§0$N§.BOSS_PHANTOMS_BOT_NAME,[UserProfile.§'#3§(§0$N§.BOSS_PHANTOMS_BOT_NAME,_loc7_ * 1.7,Race.§"$H§,300 + 6 * _loc6_ + 3 * _loc5_,_loc7_ * 1.3,_loc7_ * 1.4,§,$O§.BOSS_PHANTOM)])];
      }
      
      override public function §+$L§(param1:Vector.<§"Z§>) : void
      {
         this.bosses = new Vector.<§+%]§>(0);
         var _loc2_:§+%]§ = §+%]§(param1[0].§1!n§()[0]);
         _loc2_.aiMissFactor = 1;
         _loc2_.aiShotPower = 5;
         _loc2_.aiArsenal = new §,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§!`§,1),new §>%Q§(§+%z§.CROSSBOW,0.5),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2B,0.5),new §>%Q§(§+%z§.SNIPER_RIFLE_UPG_1,0.7),new §>%Q§(§+%z§.BLIZZARD,0.3),new §>%Q§(§+%z§.BANDAGE,0.3,1)]);
         _loc2_.buffs.place(new §3#j§());
         this.bosses.push(_loc2_);
         _loc2_ = §+%]§(param1[1].§1!n§()[0]);
         _loc2_.aiMissFactor = 1;
         _loc2_.aiShotPower = 5;
         §§push(_loc2_);
         §§push(§§findproperty(§,%8§));
         var _temp_13:* = new <§>%Q§>[new §>%Q§(§+%z§.§!`§,1),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2A,0.7),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.6),new §>%Q§(§+%z§.AK_47,0.4),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.BLIZZARD,0.3),new §>%Q§(§+%z§.BANDAGE,0.3,1)];
         §§pop().aiArsenal = new §§pop().§,%8§(new <§>%Q§>[new §>%Q§(§+%z§.§!`§,1),new §>%Q§(§+%z§.CARPET_BAZOOKA_UPG_2A,0.7),new §>%Q§(§+%z§.CLUSTER_BOMB_UPG_2A_PIRANHA,0.6),new §>%Q§(§+%z§.AK_47,0.4),new §>%Q§(§+%z§.CROSSBOW,0.4),new §>%Q§(§+%z§.BLIZZARD,0.3),new §>%Q§(§+%z§.BANDAGE,0.3,1)]);
         _loc2_.buffs.place(new §3#j§());
         this.bosses.push(_loc2_);
         this.§-%o§();
         super.§+$L§(param1);
      }
      
      override public function § "a§(param1:uint, param2:§+%]§) : void
      {
         var _loc3_:§+%]§ = null;
         super.§ "a§(param1,param2);
         if(§8"%§.§?!W§.§4"m§.§;#l§())
         {
            for each(_loc3_ in this.bosses)
            {
               if(!_loc3_.disposed && _loc3_.squad.getTeamId() == param2.squad.getTeamId() && §8"%§.§?!W§.§4"m§.§="T§(_loc3_,false,true).length < this.§8!6§)
               {
                  this.§@%o§(param2);
                  break;
               }
            }
         }
      }
      
      override public function §6&§(param1:uint) : void
      {
         if(Boolean(!§8"%§.§?!W§.§4"m§.§;#l§()) && Boolean(currentUnit) && !currentUnit.disposed)
         {
            currentUnit.buffs.place(new §`#D§());
         }
      }
      
      public function getBosses() : Vector.<§+%]§>
      {
         return this.bosses;
      }
      
      override public function clear() : void
      {
         this.§%"w§.length = 0;
         this.bosses.length = 0;
         this.bosses = null;
      }
      
      private function §-%o§() : void
      {
         var squad:§"Z§ = null;
         var units:Vector.<§+%]§> = null;
         var unit:§+%]§ = null;
         this.§%"w§.length = 0;
         for each(squad in this.playerSquads)
         {
            units = squad.§1!n§();
            for each(unit in units)
            {
               if(!unit.disposed)
               {
                  this.§%"w§.push(unit);
               }
            }
         }
         this.§%"w§.sort(function(param1:§+%]§, param2:§+%]§):int
         {
            if(param1.attributes.hp.value > param2.attributes.hp.value)
            {
               return -1;
            }
            return 1;
         });
      }
      
      private function §@%o§(param1:§+%]§) : void
      {
         var _loc3_:§+%]§ = null;
         var _loc4_:uint = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:UserProfile = null;
         var _loc8_:§+%]§ = null;
         var _loc2_:Point = §-#M§.§,#e§();
         if(_loc2_)
         {
            _loc4_ = this.§%"w§.length;
            _loc5_ = 0;
            while(_loc5_ < _loc4_)
            {
               _loc6_ = this.§,!O§ + _loc5_;
               if(_loc6_ >= _loc4_)
               {
                  _loc6_ -= _loc4_;
               }
               _loc3_ = this.§%"w§[_loc6_];
               if(!_loc3_.disposed)
               {
                  break;
               }
               _loc5_++;
            }
            if(++this.§,!O§ >= _loc4_)
            {
               this.§-%o§();
               this.§,!O§ = 0;
            }
            if(_loc3_)
            {
               _loc7_ = _loc3_.record.§ "P§(true);
               _loc7_.stats.§+#+§.value = _loc7_.stats.§>%v§.value = 0;
               _loc7_.stats.§'$Q§.value = param1.attributes.attack.value >> 1;
               _loc7_.setIds(_loc3_.squad.§&!G§().getId(),_loc3_.squad.§&!G§().§"%D§());
               _loc8_ = §-#M§.§^#1§(_loc2_,_loc7_,param1.aiArsenal,param1.squad);
               _loc8_.clip.filters = [§2!%§.§`#F§];
               TweenMax.to(_loc8_.clip,0,{"colorMatrixFilter":{
                  "saturation":0.2,
                  "contrast":0.61,
                  "hue":0.6,
                  "brightness":2
               }});
               _loc8_.buffs.place(new §<#3§(_loc3_));
               _loc8_.buffs.place(new §`""§());
               _loc8_.addEventListener(§0%v§.DISPOSED,this.§6%r§);
               _loc8_.addEventListener(§0%v§.§&!D§,this.§'#Y§,false,§[!F§.§##c§);
            }
         }
      }
      
      private function §'#Y§(param1:DamageEvent) : void
      {
         dispatchEvent(param1);
      }
      
      private function §6%r§(param1:Event) : void
      {
         dispatchEvent(param1);
         param1.target.removeEventListener(§0%v§.§&!D§,this.§'#Y§);
         param1.target.removeEventListener(§0%v§.DISPOSED,this.§6%r§);
      }
   }
}


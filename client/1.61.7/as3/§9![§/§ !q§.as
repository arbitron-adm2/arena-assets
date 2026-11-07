package §9![§
{
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §##y§.§9§;
   import §#%!§.§%&F§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%E§.§2§;
   import §&!m§.§-$6§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §+$=§.§6#A§;
   import §+%S§.§=t§;
   import §,#c§.ArenaMenu;
   import §-%B§.*;
   import §-@§.*;
   import §0!§.§6#z§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%j§.§#!U§;
   import §0%j§.§-,§;
   import §0&F§.§0%v§;
   import §1"r§.§4!u§;
   import §1#p§.*;
   import §1&-§.§ &=§;
   import §2!-§.DamageEvent;
   import §2!-§.HpChangeEvent;
   import §2!-§.NewUnitEvent;
   import §2"L§.§,'§;
   import §2$]§.*;
   import §2o§.§]#@§;
   import §4!!§.§%$$§;
   import §4'§.§"@§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5"J§.*;
   import §5%S§.§>&-§;
   import §6"'§.§9$Z§;
   import §6"'§.§=$@§;
   import §6$z§.BonusTrait;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §7$t§.§&!e§;
   import §8$V§.§`"c§;
   import §<%E§.§4T§;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §=$#§.§`%u§;
   import §=&!§.§&$a§;
   import §=&!§.§4$z§;
   import §=1§.*;
   import §>$q§.§4#;§;
   import §>%I§.§-#f§;
   import §>%I§.§`!g§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$7§.§+#N§;
   import §?$7§.§6&'§;
   import §?$7§.§6J§;
   import §?$7§.§8"e§;
   import §@!N§.§""L§;
   import §@!i§.§<#&§;
   import §@$§.*;
   import §@<§.§+%]§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^#[§.§?"&§;
   import §^§.*;
   import config.§=%A§;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   use namespace gestouch_internal;
   
   public class § !q§ extends BonusTrait
   {
      
      private static const §1!h§:int = 200;
      
      private var §7#%§:int;
      
      private var §]"w§:Dictionary;
      
      private var §<"-§:Boolean;
      
      public function § !q§()
      {
         super();
      }
      
      override protected function activate(param1:int) : void
      {
         this.§7#%§ = param1;
         this.§]"w§ = new Dictionary();
         Application.scene.addEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
         Application.scene.addEventListener(§0%v§.EOT,this.§,!l§);
         if(Boolean(§8"%§.§?!W§.§4"m§) && Boolean(owner) && Boolean(owner.squad))
         {
            this.§4""§();
         }
         else
         {
            Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
         }
      }
      
      private function §@%D§(param1:Event) : void
      {
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         if(this.§]"w§)
         {
            this.§4""§();
         }
      }
      
      private function §4""§() : void
      {
         var _loc2_:§+%]§ = null;
         var _loc1_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(owner);
         for each(_loc2_ in _loc1_)
         {
            _loc2_.addEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
            _loc2_.addEventListener(§0%v§.DISPOSED,this.onDisposed);
         }
      }
      
      override protected function deactivate(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:Vector.<§+%]§> = null;
         var _loc4_:§+%]§ = null;
         if(Boolean(§8"%§.§?!W§.§4"m§) && Boolean(owner.squad))
         {
            _loc3_ = §8"%§.§?!W§.§4"m§.§6"M§(owner);
            for each(_loc4_ in _loc3_)
            {
               _loc4_.removeEventListener(§0%v§.DISPOSED,this.onDisposed);
               _loc4_.removeEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
            }
         }
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         Application.scene.removeEventListener(§0%v§.EOT,this.§,!l§);
         Application.scene.removeEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
         for(_loc2_ in this.§]"w§)
         {
            delete this.§]"w§[_loc2_];
         }
         this.§]"w§ = null;
      }
      
      private function §^#X§(param1:NewUnitEvent) : void
      {
         if(param1.unit.squad.getTeamId() != owner.squad.getTeamId() && !param1.unit.disposed)
         {
            param1.unit.addEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
            param1.unit.addEventListener(§0%v§.DISPOSED,this.onDisposed);
         }
      }
      
      private function onDisposed(param1:Event) : void
      {
         §+%]§(param1.target).removeEventListener(§0%v§.DISPOSED,this.onDisposed);
         §+%]§(param1.target).removeEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
      }
      
      private function §3"M§(param1:HpChangeEvent) : void
      {
         var _loc2_:DamageEvent = null;
         var _loc3_:§+%]§ = null;
         var _loc4_:String = null;
         if(!§8"%§.§?!W§.§4"m§)
         {
            return;
         }
         if(Boolean(!param1.§ %M§.disposed && param1.§ %M§ is §+%]§ && param1.changeType == §6#z§.DMG_TAKEN) && Boolean(param1.§=#r§) && param1.§=#r§ is DamageEvent)
         {
            _loc2_ = param1.§=#r§ as DamageEvent;
            _loc3_ = param1.§ %M§ as §+%]§;
            if(Boolean(!_loc3_.squad.isAi() && param1.amount < 0 && _loc2_.source && _loc2_.source.owner) && Boolean(owner == _loc2_.source.owner) && _loc3_.squad.getTeamId() != owner.squad.getTeamId())
            {
               _loc4_ = _loc3_.getId().toString();
               if(this.§]"w§[_loc4_] == undefined)
               {
                  this.§]"w§[_loc4_] = Math.abs(param1.amount);
               }
               else
               {
                  this.§]"w§[_loc4_] += Math.abs(param1.amount);
               }
               if(this.§]"w§[_loc4_] >= §1!h§)
               {
                  this.§;#=§(_loc3_);
                  this.§`"4§();
               }
            }
         }
      }
      
      private function §;#=§(param1:§+%]§) : void
      {
         var _loc2_:§`"C§ = param1.buffs.getBuff(§ &=§.NAME);
         if(!_loc2_ || _loc2_.§8#z§() < § &=§.§%!y§)
         {
            §8"%§.§?!W§.§>$y§(owner.record.getCharName() + " victim " + param1.record.getCharName() + " is debuffed" + (_loc2_ ? " again!" : "") + "!");
            param1.buffs.replace(new § &=§(§ &=§.§%!y§,this.§7#%§));
         }
      }
      
      private function §,!l§(param1:Event) : void
      {
         var _loc2_:String = null;
         if(§8"%§.§?!W§.§4"m§.activeUnit.squad != owner.squad)
         {
            return;
         }
         if(this.§]"w§)
         {
            for(_loc2_ in this.§]"w§)
            {
               delete this.§]"w§[_loc2_];
            }
         }
      }
      
      private function §`"4§() : void
      {
         if(!this.§<"-§ && §8"%§.§?!W§.§4"m§.§=%g§() && !owner.squad.isAi())
         {
            this.§<"-§ = true;
            §`%u§.§5$+§(Bonus.ANTI_HEAL_BONUS,owner);
         }
      }
   }
}


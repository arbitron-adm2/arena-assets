package §9![§
{
   import § $q§.§3U§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.*;
   import §"%H§.§'%u§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §#$e§.§!a§;
   import §#%!§.§%&F§;
   import §#P§.§`o§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%# §.*;
   import §%$!§.§@!o§;
   import §%L§.§%%w§;
   import §&!?§.§"_§;
   import §&#E§.§4##§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'%[§.§ i§;
   import §'%[§.§3%5§;
   import §'%[§.§4!C§;
   import §'%[§.§@"4§;
   import §'%[§.§]$5§;
   import §+$=§.§6#A§;
   import §+%S§.§2!x§;
   import §+%S§.§73§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §-8§.*;
   import §-@§.§0"e§;
   import §0!§.§6#z§;
   import §0%[§.§0%§;
   import §0%j§.§0$+§;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §2!-§.DamageEvent;
   import §2!-§.HpChangeEvent;
   import §2!-§.NewUnitEvent;
   import §2"L§.§^$y§;
   import §2#s§.*;
   import §2#x§.§]s§;
   import §3"_§.§?#w§;
   import §3#a§.§-#M§;
   import §4$b§.*;
   import §5"J§.§4!m§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §6$z§.BonusTrait;
   import §65§.§`"C§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §9%W§.§!7§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §;$8§.§6"E§;
   import §<$q§.§,%3§;
   import §<%k§.§`!v§;
   import §="z§.*;
   import §=7§.§?%4§;
   import §>%S§.§^!V§;
   import §?$K§.§=z§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?>§.§0!7§;
   import §@!N§.§-!Y§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@!i§.§;#L§;
   import §@!i§.§<!9§;
   import §@!i§.§<#&§;
   import §@$§.§`&C§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[%'§.§<"G§;
   import §[%§.Cat;
   import §]^§.§-$T§;
   import §^!"§.§0^§;
   import §^#[§.§&$2§;
   import §`"x§.§-#z§;
   import §`"x§.SearchFriendMenu;
   import §`%&§.§8U§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import config.achievements.§^t§;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.*;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.messages.server.OpenChestResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §`#0§ extends BonusTrait
   {
      
      private static const §1!h§:int = 200;
      
      private static const §9#T§:int = 3;
      
      private var §'"K§:Number;
      
      private var §2! §:int;
      
      private var §"%>§:int;
      
      public function §`#0§()
      {
         super();
      }
      
      override protected function activate(param1:int) : void
      {
         this.§'"K§ = 0;
         this.§2! § = 0;
         this.§"%>§ = param1;
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
         this.§4""§();
      }
      
      private function §4""§() : void
      {
         var _loc2_:§+%]§ = null;
         var _loc1_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§5#h§();
         for each(_loc2_ in _loc1_)
         {
            if(_loc2_ != owner)
            {
               _loc2_.addEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
               _loc2_.addEventListener(§0%v§.DISPOSED,this.onDisposed);
            }
         }
         Application.scene.addEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
         Application.scene.addEventListener(§0%v§.EOT,this.§,!l§);
      }
      
      override protected function deactivate(param1:int) : void
      {
         var _loc2_:Vector.<§+%]§> = null;
         var _loc3_:§+%]§ = null;
         if(owner)
         {
            owner.attributes.attack.§5#l§(this.§2! § * -§9#T§);
         }
         if(Boolean(§8"%§.§?!W§.§4"m§) && Boolean(owner.squad))
         {
            _loc2_ = §8"%§.§?!W§.§4"m§.§5#h§();
            for each(_loc3_ in _loc2_)
            {
               if(_loc3_ != owner)
               {
                  _loc3_.removeEventListener(§0%v§.DISPOSED,this.onDisposed);
                  _loc3_.removeEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
               }
            }
         }
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         Application.scene.removeEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
         Application.scene.removeEventListener(§0%v§.EOT,this.§,!l§);
         this.§'"K§ = this.§2! § = 0;
      }
      
      private function §^#X§(param1:NewUnitEvent) : void
      {
         if(param1.unit != owner && !param1.unit.disposed)
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
         if(!§8"%§.§?!W§.§4"m§)
         {
            return;
         }
         if(this.§2! § >= this.§"%>§)
         {
            return;
         }
         if(Boolean(!param1.§ %M§.disposed && param1.§ %M§ is §+%]§ && param1.changeType == §6#z§.DMG_TAKEN) && Boolean(param1.§=#r§) && param1.§=#r§ is DamageEvent)
         {
            _loc2_ = param1.§=#r§ as DamageEvent;
            if(Boolean(param1.amount < 0 && _loc2_.source) && Boolean(_loc2_.source.owner) && owner == _loc2_.source.owner)
            {
               this.§'"K§ += Math.abs(param1.amount);
               if(this.§'"K§ >= §1!h§)
               {
                  this.§'"K§ -= §1!h§;
                  this.§9#d§();
               }
            }
         }
      }
      
      private function §,!l§(param1:Event) : void
      {
         if(owner.disposed)
         {
            Application.scene.removeEventListener(§0%v§.EOT,this.§,!l§);
         }
         this.§'"K§ = 0;
      }
      
      private function §9#d§() : void
      {
         var _loc1_:§`"C§ = null;
         if(!§5"O§.§4#+§(owner))
         {
            ++this.§2! §;
            _loc1_ = owner.buffs.getBuff(§2!x§.NAME);
            if(!_loc1_)
            {
               owner.buffs.place(new §2!x§(§2!x§.NAME,§9#T§));
            }
            else if(_loc1_.getValue() < §9#T§ * this.§"%>§)
            {
               _loc1_.addValue(§9#T§);
            }
         }
      }
   }
}


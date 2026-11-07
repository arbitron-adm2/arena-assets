package §1&-§
{
   import §!$D§.§2$^§;
   import §"$+§.§@C§;
   import §##y§.§9§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%$!§.§@!o§;
   import §&#E§.§;"v§;
   import §&&6§.*;
   import §'!Z§.§2!H§;
   import §+%S§.§=t§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0!§.§6#z§;
   import §0%[§.*;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#0§.§;!L§;
   import §2!-§.DamageEvent;
   import §2!-§.HpChangeEvent;
   import §2!-§.NewUnitEvent;
   import §2"L§.§^$y§;
   import §4'§.§`"q§;
   import §5!9§.§6$,§;
   import §5$p§.§4&$§;
   import §5$p§.ArchdemonRope;
   import §65§.§5#A§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$1§.§;$n§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§&!P§;
   import §9%k§.*;
   import §<!^§.§9"§;
   import §<"L§.*;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?"j§.*;
   import §?#g§.§"&>§;
   import §?$7§.§+#N§;
   import §@!N§.§""L§;
   import §@$v§.§%3§;
   import §@<§.§+%]§;
   import §]$v§.*;
   import §]^§.§3$f§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import config.§28§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import org.gestouch.core.Touch;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.GetAchievements;
   import ru.pragmatix.wormix.messages.client.GetColiseumReward;
   import ru.pragmatix.wormix.messages.client.SyncInvestedAwardPoints;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.§#p§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.*;
   
   public class §+<§ extends §5#A§
   {
      
      private static const NAME:String = "REDICE_HEALING";
      
      private static const §4!Q§:int = §<H§.§3r§ * 3;
      
      private static const §^1§:int = §<H§.§3r§ * 5;
      
      private static const §=%"§:int = §<H§.§3r§ * 15;
      
      private static const §"$f§:int = §=%"§ - §^1§;
      
      private var activated:Boolean;
      
      public function §+<§(param1:int)
      {
         super(NAME,-1,param1);
      }
      
      override protected function §5#F§() : void
      {
         if(§8"%§.§?!W§.§4"m§)
         {
            this.activate();
         }
      }
      
      override protected function §0&"§() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         var _loc2_:§+%]§ = null;
         if(!§&%M§)
         {
            Application.scene.removeEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
            if(Boolean(§8"%§.§?!W§.§4"m§) && Boolean(this.unit.squad))
            {
               _loc1_ = §8"%§.§?!W§.§4"m§.§6"M§(this.unit);
               for each(_loc2_ in _loc1_)
               {
                  _loc2_.removeEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
                  _loc2_.removeEventListener(§0%v§.DISPOSED,this.onDisposed);
               }
            }
         }
      }
      
      override protected function onNextTurn(param1:Event) : void
      {
         super.onNextTurn(param1);
         this.activate();
      }
      
      private function activate() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         var _loc2_:§+%]§ = null;
         if(!this.activated && Boolean(this.unit.squad))
         {
            this.activated = true;
            Application.scene.addEventListener(§0%v§.NEW_UNIT_ADDED,this.§^#X§);
            _loc1_ = §8"%§.§?!W§.§4"m§.§6"M§(this.unit);
            for each(_loc2_ in _loc1_)
            {
               _loc2_.addEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
               _loc2_.addEventListener(§0%v§.DISPOSED,this.onDisposed);
            }
         }
      }
      
      private function §^#X§(param1:NewUnitEvent) : void
      {
         if(param1.unit.squad.getTeamId() != unit.squad.getTeamId() && !param1.unit.disposed)
         {
            param1.unit.addEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
            param1.unit.addEventListener(§0%v§.DISPOSED,this.onDisposed);
         }
      }
      
      private function onDisposed(param1:Event) : void
      {
         §+%]§(param1.target).removeEventListener(§0%v§.GAME_OBJECT_HP_CHANGE,this.§3"M§);
         §+%]§(param1.target).removeEventListener(§0%v§.DISPOSED,this.onDisposed);
      }
      
      private function §3"M§(param1:HpChangeEvent) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:uint = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(!§&%M§ && param1.changeType == §6#z§.HEAL && param1.amount > 0 && param1.§ %M§ is §+%]§ && value.value > 0)
         {
            _loc2_ = §+%]§(param1.§ %M§);
            _loc3_ = §^$y§.distance(_loc2_.x - unit.x,_loc2_.y - unit.y);
            if(_loc2_ != unit && !_loc2_.disposed && _loc2_.hp > 0 && !_loc2_.squad.isAi() && _loc2_.squad.getTeamId() != unit.squad.getTeamId())
            {
               _loc4_ = Math.round(§-q§.§8$G§(value.value,param1.amount));
               _loc5_ = 100;
               if(_loc4_ > 0)
               {
                  _loc2_.attributes.hp.change(-_loc4_);
                  _loc2_.attributes.hp.§@#§(_loc4_);
                  §2!H§.§;!x§(String(_loc4_),§2!H§.§0"Z§,_loc2_.x,_loc2_.y - 10,20);
                  DamageEvent.§!"2§(null,_loc2_,_loc4_,§0%v§.§'%e§);
               }
            }
         }
      }
   }
}


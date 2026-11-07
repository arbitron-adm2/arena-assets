package §%&6§
{
   import § "L§.§1%b§;
   import § #k§.§3%0§;
   import §!!i§.§@&&§;
   import §"$+§.*;
   import §"%H§.§'%u§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §-@§.*;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2!-§.SupplyPickedUpEvent;
   import §4!!§.§"$E§;
   import §4!!§.§6$V§;
   import §4%_§.§3§;
   import §7!B§.§&"T§;
   import §7$1§.§;$n§;
   import §;"9§.§;"c§;
   import §?#g§.§&"P§;
   import §?$7§.§6%k§;
   import §?$7§.§`%2§;
   import §@!i§.§!m§;
   import §@#K§.§3&2§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §[!`§.§+%q§;
   import §[$<§.§>"9§;
   import §^#[§.§&$2§;
   import §`%&§.§`§;
   import com.greensock.TweenMax;
   import com.greensock.plugins.*;
   import config.achievements.§^t§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.serialization.client.*;
   
   public class §2$v§ extends §8!`§
   {
      
      private var auraPlaying:Boolean;
      
      public function §2$v§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint, param5:§&$2§)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      public function §7$p§(param1:§+%]§) : void
      {
         var target:§+%]§ = param1;
         new §"$E§(target,target.x,target.y,this);
         if(§8"%§.§&S§.§41§() && !this.auraPlaying)
         {
            this.auraPlaying = true;
            §1"-§.§8"l§(target,"HealBrakeClip",-1,function():void
            {
               auraPlaying = false;
            });
         }
      }
      
      override protected function onCollide(param1:CollisionEvent) : void
      {
         §1$^§(§2$v§);
         super.onCollide(param1);
      }
      
      override protected function §?$u§(param1:DamageEvent) : void
      {
         var _loc2_:§+%]§ = null;
         if(Boolean(param1.source) && Boolean(param1.source.owner) && !disposed)
         {
            _loc2_ = param1.source.owner;
            if(_loc2_.squad.getTeamId() != owner.squad.getTeamId())
            {
               new §6$V§(owner,x,y,_loc2_,paramSet.damage.value);
            }
         }
         super.§?$u§(param1);
      }
   }
}


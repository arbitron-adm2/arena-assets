package §-"N§
{
   import §!L§.§+"'§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,!f§.*;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §2B§.§#&E§;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §5!,§.§9$h§;
   import §7!B§.§&"T§;
   import §7$t§.§=?§;
   import §<%k§.§`!v§;
   import §=&!§.§4$z§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §>$q§.§9$U§;
   import §?#g§.*;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@!i§.§<#&§;
   import §[%'§.§<"G§;
   import §]$J§.§#"s§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.*;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.*;
   
   use namespace gestouch_internal;
   
   public class §'"T§ extends §3%d§
   {
      
      public function §'"T§(param1:§]$d§, param2:§4$z§)
      {
         super(param1,param2);
         if(param2.result.equals(§<$Z§.§+%I§))
         {
            this.§[$9§(§0$N§.GAME_OVER_ZOMBIE_RISING_WIN);
         }
         else
         {
            this.§[$9§(§0$N§.GAME_OVER_ZOMBIE_RISING_FAIL);
         }
         getChildByName("nextBtn").visible = false;
         if(rewards.length > 0)
         {
            §7$K§();
         }
         §%&!§(param2.result,this.§6"M§(),true);
         §3% §();
      }
      
      override protected function §=!O§() : void
      {
      }
      
      override protected function §6"M§() : Vector.<UserProfile>
      {
         var _loc2_:§-!`§ = null;
         var _loc1_:Vector.<UserProfile> = new Vector.<UserProfile>(0);
         for each(_loc2_ in §^#R§.scenario.§"!p§)
         {
            _loc1_.push(_loc2_.§]"P§);
         }
         return _loc1_;
      }
      
      private function §[$9§(param1:String) : void
      {
         var _loc2_:TextField = §'%s§("msg");
         _loc2_.visible = true;
         §&$9§.§>&F§(_loc2_,§"-§.§+$m§,param1);
         lastPosition.y += _loc2_.numLines * _loc2_.getLineMetrics(0).height + 5;
         if(expPanel)
         {
            expPanel.y += _loc2_.numLines * _loc2_.getLineMetrics(0).height + 5;
         }
      }
   }
}


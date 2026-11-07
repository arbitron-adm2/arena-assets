package §9![§
{
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §#"V§.§?%>§;
   import §##j§.§'"%§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §&"c§.§5$n§;
   import §&%X§.§5F§;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §,$J§.§0%G§;
   import §0!§.*;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §2"L§.§,!t§;
   import §2#W§.*;
   import §2#i§.§9##§;
   import §3"@§.§##L§;
   import §4'§.§#"l§;
   import §6$z§.BonusTrait;
   import §65§.§`"C§;
   import §7!B§.§1"?§;
   import §7$t§.§2"y§;
   import §8#<§.§!#^§;
   import §8$V§.*;
   import §<%k§.§`!v§;
   import §="z§.§6a§;
   import §=$#§.§`%u§;
   import §>%S§.§^!V§;
   import §?$K§.§3#j§;
   import §?$L§.§ "N§;
   import §?$L§.§0"-§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%§.Cat;
   import §^!]§.§-$w§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import avmplus.getQualifiedClassName;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.events.TweenEvent;
   import com.greensock.plugins.*;
   import config.achievements.§!$L§;
   import flash.display.*;
   import flash.events.*;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.utils.*;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.logger.TracePublisher;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetRaceExceptExclusive;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.messages.server.AssembleStuffResult;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.messages.server.RaceExceptExclusiveResult;
   import ru.pragmatix.wormix.messages.server.StartTurnResponse;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.rewards.*;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   use namespace gestouch_internal;
   
   public class §[%e§ extends BonusTrait
   {
      
      private static const §'"y§:Number = 0.2;
      
      private var §<"-§:Boolean;
      
      private var §^!O§:Boolean;
      
      private var §8,§:Boolean = §8"%§.§?!W§.§^!U§().§6"3§();
      
      public function §[%e§()
      {
         super();
      }
      
      override protected function activate(param1:int) : void
      {
         if(this.§8,§)
         {
            return;
         }
         this.§+#Y§();
         owner.addEventListener(§0%v§.§^$3§,this.onSink);
         owner.addEventListener(§0%v§.UNIT_ACTIVATION,this.§=!^§);
      }
      
      private function §+#Y§() : void
      {
         var _loc1_:Boolean = !§8"%§.§?!W§.§4"m§ || §8"%§.§?!W§.§4"m§.activeUnit != owner;
         if(!this.§^!O§ && !owner.§="r§ && !owner.buffs.hasBuff(§3#j§.NAME))
         {
            this.§^!O§ = true;
            owner.buffs.place(new §3#j§(true));
         }
      }
      
      private function onSink(param1:Event) : void
      {
         var _loc2_:int = 0;
         if(!owner.disposed && this.§^!O§)
         {
            this.§`"4§();
            _loc2_ = int(Math.floor((owner.record.stats.§8+§.value + owner.record.stats.§3$L§.value) * §'"y§));
            §'"$§.§]#I§(owner,owner.x,owner.y,owner,_loc2_,0,0,true,true,null,false,false,false);
         }
      }
      
      private function §`"4§() : void
      {
         if(!this.§<"-§ && §8"%§.§?!W§.§4"m§.§=%g§() && !owner.squad.isAi())
         {
            this.§<"-§ = true;
            §`%u§.§5$+§(Bonus.§7I§,owner);
         }
      }
      
      private function §=!^§(param1:Event) : void
      {
         this.§^!F§();
      }
      
      override protected function deactivate(param1:int) : void
      {
         if(this.§8,§)
         {
            return;
         }
         this.§^!F§();
      }
      
      private function §^!F§() : void
      {
         var _loc1_:§`"C§ = owner.buffs.getBuff(§3#j§.NAME);
         if(this.§^!O§)
         {
            this.§^!O§ = false;
            owner.buffs.§6C§(§3#j§.NAME);
            §#$k§.§;%$§(owner);
         }
         owner.removeEventListener(§0%v§.UNIT_ACTIVATION,this.§=!^§);
         owner.removeEventListener(§0%v§.§^$3§,this.onSink);
      }
   }
}


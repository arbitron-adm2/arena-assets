package §?$K§
{
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §"$+§.§ G§;
   import §"$+§.§@C§;
   import §#"V§.§!&5§;
   import §#"V§.§6"%§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.§'-§;
   import §,#c§.ArenaMenu;
   import §-"N§.§+#R§;
   import §-&5§.*;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2o§.§]#@§;
   import §3#T§.§?$q§;
   import §4'§.§"@§;
   import §4B§.§=%8§;
   import §5"J§.*;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §7$1§.§=!?§;
   import §7$t§.§^$E§;
   import §<!W§.§>&@§;
   import §<%k§.§`!v§;
   import §=&!§.§&$a§;
   import §=&!§.§]$d§;
   import §?"j§.§]!<§;
   import §?$L§.§&$9§;
   import §@!N§.§4"0§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §[%§.Rabbit;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import com.greensock.loading.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.media.SoundTransform;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import org.gestouch.core.gestouch_internal;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.BossBattleOfferDialog;
   import ru.pragmatix.wormix.gui.window.§^$7§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.GetDailyBonus;
   import ru.pragmatix.wormix.messages.server.GetDailyBonusResult;
   import ru.pragmatix.wormix.messages.structures.MechanicEventV2;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.utils.§-q§;
   
   use namespace gestouch_internal;
   
   public class §+G§ extends §%%o§
   {
      
      public static const NAME:String = "GUARDING_BOT";
      
      private static const §6%l§:uint = 90;
      
      private var §>i§:§=!?§;
      
      private var §;%I§:§5$n§;
      
      private var §4$e§:§&$2§;
      
      public function §+G§(param1:uint)
      {
         this.§4$e§ = new §&$2§(param1);
         super(NAME,-1,0);
      }
      
      override protected function §5#F§() : void
      {
         this.§;%I§ = §5$n§.§<#=§("AmGuardingBot",this.§4$e§.value,50,30);
         Application.scene.addEventListener(§0%v§.SOT,this.§8$m§);
      }
      
      override protected function §0&"§() : void
      {
         this.§;%I§ = null;
         this.§4$e§ = null;
         if(this.§>i§)
         {
            this.§>i§.disposed = true;
            this.§>i§ = null;
         }
         Application.scene.removeEventListener(§0%v§.SOT,this.§8$m§);
      }
      
      private function §8$m§(param1:Event) : void
      {
         if(Boolean(unit) && !unit.disposed)
         {
            if(!this.§>i§ || this.§>i§.disposed)
            {
               this.§>i§ = new §=!?§(unit,unit.x,unit.y,this.§;%I§);
               this.§>i§.setSpeedXY(0,0);
            }
            else if(§-q§.distance(unit.x,unit.y,this.§>i§.x,this.§>i§.y) >= §6%l§)
            {
               §1"-§.explode(§;n§.§@%d§,this.§>i§.x,this.§>i§.y,24);
               this.§>i§.disposed = true;
               this.§8$m§(param1);
            }
         }
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §+G§(this.§4$e§.value));
      }
   }
}


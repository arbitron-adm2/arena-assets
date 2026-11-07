package §&!@§
{
   import § "L§.§`#r§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §&"R§.*;
   import §&#E§.§;"v§;
   import §&#h§.§&N§;
   import §&#h§.§5f§;
   import §&&6§.§>V§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §-%B§.§-"o§;
   import §-@§.*;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §0&F§.SelectObjectEvent;
   import §0&F§.§`"^§;
   import §1#p§.§2=§;
   import §2!-§.DamageEvent;
   import §2#H§.§+N§;
   import §2#W§.PvpChestBox;
   import §3"@§.§#$O§;
   import §4&F§.*;
   import §5!,§.§?!P§;
   import §5$]§.§<%f§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §6$0§.§%$z§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$1§.§3&G§;
   import §7$1§.§=!?§;
   import §7$t§.§^$E§;
   import §;#O§.§+%7§;
   import §<!W§.§;#A§;
   import §<!W§.§?#L§;
   import §<"?§.§6"d§;
   import §<%k§.*;
   import §=!p§.§%#'§;
   import §=!p§.§&&0§;
   import §="z§.§9%1§;
   import §=&!§.§<$!§;
   import §>"l§.§3!z§;
   import §?$7§.§+#N§;
   import §?%J§.§?§;
   import §?>§.§0!7§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[%'§.§<"G§;
   import §[%§.*;
   import §^!"§.§0^§;
   import §^#[§.§&$2§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.data.TweenLiteVars;
   import com.greensock.plugins.*;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class Miner extends §6"d§
   {
      
      public static const §@%g§:§&$2§ = new §&$2§(14);
      
      public function Miner()
      {
         super(28);
      }
      
      override public function getId() : int
      {
         return §+#N§.MINER;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §?#9§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [[mapRecord.§?$&§[1],new Point(mapRecord.§8$2§[6].x,mapRecord.§8$2§[6].y + 330),new Point(mapRecord.§8$2§[3].x + 160,mapRecord.§8$2§[3].y - 150),new Point(mapRecord.§?$&§[4].x - 60,mapRecord.§?$&§[4].y + 30)],[mapRecord.§8$2§[1]]];
      }
      
      override protected function §!"V§() : void
      {
         script.addEventListener(§0%v§.§&!D§,this.§'$R§);
         script.addEventListener(§0%v§.DISPOSED,this.§2$r§);
         §'#G§();
      }
      
      private function §'$R§(param1:DamageEvent) : void
      {
         var _loc2_:§2R§ = null;
         if(param1.victim.disposed)
         {
            _loc2_ = §]%!§(BossAchieves.§'!a§);
            if(_loc2_.available && param1.source is §3&G§)
            {
               _loc2_.completed = true;
               §`#t§(_loc2_);
            }
         }
      }
      
      override protected function onPlayerUnitDamaged(param1:DamageEvent) : void
      {
         var _loc2_:§2R§ = §]%!§(BossAchieves.§4&!§);
         if(!_loc2_.closed && param1.source is §3&G§)
         {
            _loc2_.§#"!§();
            §5X§(_loc2_);
         }
      }
      
      private function §2$r§(param1:Event) : void
      {
         var _loc2_:§2R§ = §]%!§(BossAchieves.§^#q§);
         if(_loc2_.available)
         {
            §=$I§(_loc2_,§@%g§.value);
         }
      }
      
      override protected function § "a§(param1:uint) : void
      {
         §]%!§(BossAchieves.§^#q§).count = 0;
         super.§ "a§(param1);
      }
      
      override protected function §'G§() : void
      {
         §]%!§(BossAchieves.§4&!§).§,%,§();
      }
      
      override public function clear() : void
      {
         §>%A§();
         script.removeEventListener(§0%v§.§&!D§,this.§'$R§);
         script.removeEventListener(§0%v§.DISPOSED,this.§2$r§);
         super.clear();
      }
   }
}


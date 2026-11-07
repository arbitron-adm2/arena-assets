package §%"Z§
{
   import §!!!§.*;
   import §"!C§.§2v§;
   import §#"V§.§?%>§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §,!f§.*;
   import §2B§.§#&E§;
   import §4'§.§!!0§;
   import §7$t§.§=?§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§=$,§;
   import §@"x§.*;
   import §@%I§.§2R§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[$<§.§>!u§;
   import §^§.*;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import config.achievements.BossAchieves;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.utils.*;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§""t§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.*;
   import ru.pragmatix.wormix.messages.server.ArenaLocked;
   import ru.pragmatix.wormix.messages.server.GetQuestProgressResult;
   import ru.pragmatix.wormix.messages.server.StartBattleResult;
   import ru.pragmatix.wormix.messages.structures.QuestProgressStructure;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   
   use namespace gestouch_internal;
   
   public class §2"B§
   {
      
      public static const RU:§2"B§ = new §2"B§("ru");
      
      public static const UA:§2"B§ = new §2"B§("ua");
      
      public static const BY:§2"B§ = new §2"B§("by");
      
      public static const EN:§2"B§ = new §2"B§("en");
      
      public static const LV:§2"B§ = new §2"B§("lv");
      
      public static const LT:§2"B§ = new §2"B§("lt");
      
      public static const §@&5§:§2"B§ = new §2"B§("kor");
      
      public static const GE:§2"B§ = new §2"B§("ge");
      
      public static const HU:§2"B§ = new §2"B§("hu");
      
      public static const PL:§2"B§ = new §2"B§("pl");
      
      public static const ES:§2"B§ = new §2"B§("es");
      
      public static const §"%#§:§2"B§ = new §2"B§("pt-br");
      
      public static const TR:§2"B§ = new §2"B§("tr");
      
      §§push(§§findproperty(list));
      
      public static const list:Vector.<§2"B§> = new <§2"B§>[RU,UA,BY,EN,LV,LT,§@&5§,GE,HU,PL,ES,§"%#§,TR];
      
      private var §?!,§:String;
      
      public function §2"B§(param1:String)
      {
         super();
         this.§?!,§ = param1;
      }
      
      public static function §8$J§(param1:String) : §2"B§
      {
         var _loc2_:int = 0;
         var _loc3_:int = int(list.length);
         while(_loc2_ < _loc3_)
         {
            if(list[_loc2_].§?!,§ == param1 || list[_loc2_].§?!,§.indexOf(param1) != -1)
            {
               return list[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function §%F§() : String
      {
         return this.§?!,§;
      }
      
      public function equals(param1:§2"B§) : Boolean
      {
         return this.§?!,§ == param1.§?!,§;
      }
      
      public function toString() : String
      {
         return this.§?!,§;
      }
   }
}


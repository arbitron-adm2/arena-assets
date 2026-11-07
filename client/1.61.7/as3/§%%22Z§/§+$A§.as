package §%"Z§
{
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §0&F§.§0%v§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §<!^§.§["l§;
   import §<%k§.§`!v§;
   import §?$K§.§3#j§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §]$v§.*;
   import com.greensock.TweenMax;
   import config.achievements.BossAchieves;
   import config.achievements.§^t§;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.structures.BackpackItemShortStructure;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.structures.*;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §+$A§
   {
      
      public static const INGAME:§+$A§ = new §+$A§(1);
      
      public static const REAL:§+$A§ = new §+$A§(0);
      
      public var value:int;
      
      public function §+$A§(param1:int)
      {
         super();
         this.value = param1;
      }
      
      public static function §0#o§(param1:int) : §+$A§
      {
         return param1 ? INGAME : REAL;
      }
   }
}


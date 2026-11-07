package §2#H§
{
   import § !P§.§<#q§;
   import § #9§.§"$t§;
   import § %?§.§;!T§;
   import §!!!§.*;
   import §!!i§.§@&&§;
   import §!$D§.§2$^§;
   import §!L§.*;
   import §"!C§.§3#n§;
   import §"%H§.§'%u§;
   import §#",§.§?§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%L§.§%%w§;
   import §&#h§.§-"F§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+$=§.§;!d§;
   import §-@§.*;
   import §0%[§.§""n§;
   import §0%[§.Cookie;
   import §0%[§.§^"5§;
   import §0%j§.§#!U§;
   import §0%j§.§-,§;
   import §1#0§.§;4§;
   import §1#p§.§"Z§;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §4!!§.§!%n§;
   import §4!!§.§'$V§;
   import §4!!§.§]!h§;
   import §4'§.§!!0§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §6%2§.§#"B§;
   import §65§.§=&9§;
   import §9%W§.§&!P§;
   import §<!W§.§9%,§;
   import §<"?§.§3>§;
   import §<"?§.§6$c§;
   import §<"?§.§7!@§;
   import §<"?§.§@&#§;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §=&!§.§&$a§;
   import §=&!§.§4$z§;
   import §=&!§.§<$!§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §?#g§.§&"P§;
   import §?#g§.Race;
   import §?$7§.§+l§;
   import §?$L§.§ "N§;
   import §@!N§.§""L§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`$T§.§[!S§;
   import com.greensock.TweenMax;
   import com.greensock.easing.Circ;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import config.achievements.§^t§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.craft.*;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.client.GetProfiles;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§6Y§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §[&B§ extends §=&9§
   {
      
      public static const NAME:String = "WATER_LEVEL";
      
      public static const §!$k§:int = 1;
      
      public function §[&B§(param1:int = -1)
      {
         super(NAME,param1,§!$k§);
      }
      
      override protected function §7$d§() : void
      {
         var _loc1_:int = Application.scene.height - (Application.scene.§#%0§() - 10);
         if(Boolean(unit) && unit.y > _loc1_)
         {
            unit.dispatchEvent(new §7%K§(BossAchieves.PIRATE_DONT_SINK));
         }
      }
      
      override protected function §5#F§() : void
      {
      }
      
      override protected function §0&"§() : void
      {
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §[&B§(this.§8!t§()));
      }
   }
}


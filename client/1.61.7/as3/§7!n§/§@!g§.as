package §7!n§
{
   import §!#g§.*;
   import §!L§.§+"'§;
   import §"%H§.§1! §;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§7#P§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%&6§.§0%2§;
   import §&"c§.§5$n§;
   import §&#h§.§-"F§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#U§.§'#w§;
   import §+$=§.*;
   import §+%S§.§2$#§;
   import §0%[§.§""n§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §3#T§.AtomBomb;
   import §4'§.§`"q§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7!B§.§+%-§;
   import §7!B§.§6#I§;
   import §9%W§.§&!P§;
   import §<"L§.*;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §`%&§.§3!D§;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.media.SoundTransform;
   import flash.text.TextFieldType;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.structures.SimpleProfileStructure;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §@!g§ extends §[&#§
   {
      
      public function §@!g§(param1:DisplayObjectContainer, param2:String)
      {
         super(param1,param2);
      }
      
      override public function setData(param1:§<#&§) : void
      {
         super.setData(param1);
         setText(param1.award.toString() + "+",§]!k§,§"-§.§6"j§);
      }
      
      override public function update() : void
      {
         super.update();
         setText(wager.award.toString() + "+",§]!k§,§"-§.§6"j§);
      }
      
      override protected function §3#,§(param1:Event = null) : void
      {
         §8"%§.§>`§.§4%1§();
      }
      
      override public function setDisabled(param1:Boolean) : void
      {
         if(param1)
         {
            §0"X§.removeHandler(this.§3#,§);
         }
         else
         {
            §0"X§.§[!u§(this.§3#,§);
         }
      }
   }
}


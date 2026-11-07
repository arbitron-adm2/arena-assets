package ru.pragmatix.wormix.weapons.boss
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§`#p§;
   import §"#x§.§'"$§;
   import §"$+§.§,!<§;
   import §"%H§.§1! §;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#h§.§5f§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.QuestGiftItem;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,$J§.§,$O§;
   import §-G§.*;
   import §0%[§.§%"'§;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §8#<§.§!#^§;
   import §8$V§.*;
   import §9%W§.§&!P§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §=!p§.§7#E§;
   import §=!p§.§9#n§;
   import §=$#§.*;
   import §>!_§.§'#m§;
   import §>"w§.§#$L§;
   import §>"w§.§&%0§;
   import §>"w§.§`#Z§;
   import §@!N§.§""L§;
   import §@<§.§+%]§;
   import §[%§.Cat;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`%&§.§#"U§;
   import com.adobe.serialization.json.JSONDecoder;
   import flash.display.MovieClip;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.inspirit.net.MultipartURLLoader;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class ArchbotSacrifice extends §,%r§
   {
      
      public function ArchbotSacrifice()
      {
         super();
         §"#z§ = 45;
         §2$"§ = 45;
         §7&§(new §&!P§(this.§6#N§,true));
         §-g§ = new §#"U§(300);
      }
      
      private function §6#N§(param1:§+%]§ = null) : Boolean
      {
         param1 ||= owner;
         if(§?!P§.§!%w§(param1))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               §>&-§.§[$9§(§0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED,true);
            }
            return false;
         }
         return true;
      }
      
      override protected function §`%V§() : void
      {
         var target:§+%]§ = null;
         var sacr:§+%]§ = null;
         target = §8"%§.§?!W§.§4"m§.§6"M§(owner)[0];
         var selection:Array = §""L§.§,"=§(§8"%§.§?!W§.§4"m§.§="T§(owner,false,false));
         sacr = §<H§.§7%+§(target,selection) as §+%]§;
         var tmpOwner:§+%]§ = owner;
         if(sacr == null)
         {
            sacr = owner;
         }
         if(sacr)
         {
            §'"$§.§]#I§(owner,target.x,target.y,null,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value,false);
            §1"-§.explode(§;n§.§6#B§,target.x,target.y,30,§`!v§.§["s§);
            §<H§.§"%8§(sacr,target.x,target.y,function():void
            {
               if(sacr is Cat)
               {
               }
               sacr.setSpeedXY(0,-5);
               target.setSpeedXY(0,-5);
            });
            §@%;§.play(§`!v§.TELEPORT);
            §1"-§.§##7§(target.x,target.y,20);
         }
         §?!P§.update(tmpOwner);
         §?!K§();
         §=#P§.§6+§();
      }
   }
}


package §9"^§
{
   import § #m§.§;#^§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#",§.§+!h§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##j§.§]$X§;
   import §#k§.§9$v§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §,#c§.ArenaMenu;
   import §-%B§.*;
   import §0"L§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.*;
   import §2!-§.NewUnitEvent;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §3#a§.§-!`§;
   import §5"J§.*;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §<!W§.§9%,§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §>$q§.§4#;§;
   import §?#g§.Race;
   import §?%J§.*;
   import §@!i§.§8%6§;
   import §@!i§.§<!9§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §[%§.*;
   import §]^§.§-$T§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §&"E§ extends §+!h§
   {
      
      private var §9S§:§?%>§;
      
      private var crown:DisplayObject;
      
      public function §&"E§(param1:MovieClip)
      {
         super(param1);
         this.§9S§ = §!&5§.§7#[§(getChildByName("updateAvatarBtn"));
         this.§9S§.setVisible(Social.settings.§5$a§() && §4! §.isMe(Application.userProfile));
         §^"P§(this.§9S§,MouseEvent.CLICK,this.§"%v§);
         this.crown = getChildByName("crown");
         if(this.crown)
         {
            this.crown.visible = false;
         }
      }
      
      private function §"%v§(param1:MouseEvent) : void
      {
         var _loc2_:§1!C§ = new §1!C§();
         _loc2_.show();
      }
      
      override public function setItem(param1:Object) : void
      {
         super.setItem(param1);
         if(Social.settings.§5$a§())
         {
            this.§9S§.setVisible(§4! §.isMe(UserProfile(param1)));
            if(this.crown)
            {
               this.crown.visible = UserProfile(param1).getLevel() == §<!9§.getMaxLevel();
            }
         }
      }
      
      public function §%%S§(param1:Boolean) : void
      {
         var _loc2_:String = param1 ? §+"'§.§3%y§ : §+"'§.§]!H§;
         this.§9S§.setQtip(§0$N§.PHOTO_STUDIO_UPDATE_QTIP,§;#^§.§[!K§,_loc2_);
      }
   }
}


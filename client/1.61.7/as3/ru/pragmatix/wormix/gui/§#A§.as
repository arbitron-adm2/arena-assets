package ru.pragmatix.wormix.gui
{
   import § !P§.*;
   import § #9§.§"$t§;
   import §!!i§.§'"m§;
   import §!!i§.§@&&§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§`&$§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%Q§.*;
   import §&"R§.*;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#E§.§4##§;
   import §&#E§.§;2§;
   import §&#E§.§>"4§;
   import §&#h§.§?B§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.§'-§;
   import §+#U§.*;
   import §+$=§.§6#A§;
   import §+%S§.§[0§;
   import §+%o§.§?!#§;
   import §,"v§.§9%d§;
   import §-"Q§.§2!@§;
   import §-%B§.*;
   import §-8§.§3!x§;
   import §-@§.§,Y§;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0%[§.§9&#§;
   import §0%z§.*;
   import §0&F§.§0$_§;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2#V§.§-#U§;
   import §2#x§.*;
   import §2$]§.§9"?§;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §3"_§.*;
   import §3#T§.§;'§;
   import §3#a§.§-#M§;
   import §4$b§.§6!G§;
   import §4f§.§-&§;
   import §5!9§.§6$,§;
   import §5$]§.§3& §;
   import §5o§.§0!$§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.*;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§??§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8$V§.§`"c§;
   import §9![§.§^§;
   import §9"-§.§?!s§;
   import §9%W§.§`"y§;
   import §;!Z§.*;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §=&!§.§<$Z§;
   import §=7§.§?%4§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$K§.§3#j§;
   import §?$L§.§&$9§;
   import §?>§.§0!7§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§5&4§;
   import §@!i§.§8%6§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[!`§.§ &-§;
   import §[$<§.§"#"§;
   import §]^§.§-$T§;
   import §^#[§.SpeedhackDetectedEvent;
   import §`#x§.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.system.LoaderContext;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import org.gestouch.core.GestureState;
   import org.gestouch.events.GestureEvent;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§8L§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§,!T§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.gui.house.craft.CraftRoom;
   import ru.pragmatix.wormix.gui.window.§!"$§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.PromoteRankInClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.GetAchievements;
   import ru.pragmatix.wormix.messages.client.GetSpecialDeal;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.structures.MechanicEventV2;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §#A§ extends §8L§
   {
      
      public var §1$i§:§6#]§;
      
      public var §^P§:§@&&§;
      
      private var §!#p§:UserInfo;
      
      private var §%#N§:§?!#§;
      
      private var §&C§:§9"?§;
      
      public var bottom:§`&-§;
      
      public var §[!B§:§`&-§;
      
      public var top:§`&-§;
      
      public var §<!z§:§2!@§;
      
      public function §#A§()
      {
         super(this.§1$i§ = new §6#]§());
      }
      
      public static function §2%,§(param1:Event) : void
      {
         if(Application.userProfile.clanMember.rank == §`&$§.§+#8§ && !Application.instance.§#&7§())
         {
            §4##§.show(§0$N§.TITLE_ATTENTION,§0$N§.CLAN_LEADER_CANT_WIPE_SELF,§,#W§.§6!m§);
         }
         else if(§,! §.§7$f§())
         {
            Social.§?%u§.§<"z§();
         }
         else
         {
            §4##§.show(§0$N§.TITLE_ATTENTION,§0$N§.WIPE_PROFILE_ACCESS,§,#W§.§6!m§);
         }
      }
      
      public static function §^#I§(param1:Event = null) : void
      {
         if(Boolean(Application.userProfile.clanMember) && Application.userProfile.clanMember.rank == §`&$§.§+#8§)
         {
            §4##§.show(§0$N§.TITLE_ATTENTION,§0$N§.TRANSFER_PROFILE_LEADER,§,#W§.§6!m§);
         }
         else
         {
            Social.§@#m§.§7$?§();
         }
      }
      
      public function init() : void
      {
         this.bottom = new §`&-§(new Sprite());
         addChild(this.bottom);
         this.§[!B§ = new §`&-§(new Sprite());
         addChild(this.§[!B§);
         this.top = new §`&-§(new Sprite());
         addChild(this.top);
         this.§1$i§.§]%V§.§[!u§(this.§`i§);
         this.§!#p§ = new UserInfo();
         this.bottom.addChild(this.§!#p§);
         this.§8$w§();
         this.§%#N§ = new §?!#§();
         this.§%#N§.moveTo(8.5,98);
         §8"%§.§#m§.§&#t§(this.§%#N§,§!"X§.§%j§);
         this.§&C§ = new §9"?§();
         this.§&C§.x = 20;
         this.§&C§.y = 98;
         this.§&C§.getContainer().scaleX = this.§&C§.getContainer().scaleY = 1.2;
         §8"%§.§#m§.§&#t§(this.§&C§,§!"X§.§%j§);
         this.§<!z§ = new §2!@§();
         this.top.addChild(this.§<!z§);
         this.§[!l§(true);
         §8"%§.§#m§.§&#t§(this.§!#p§,§!"X§.§%j§);
      }
      
      public function §&$J§(param1:§0$_§) : void
      {
         this.§%#N§.init(param1);
         this.bottom.addChild(this.§%#N§);
      }
      
      public function §=#8§() : void
      {
         this.bottom.addChild(this.§&C§);
      }
      
      public function §0"'§() : void
      {
         this.§&C§.update();
      }
      
      override public function activate() : void
      {
         §7!g§(this.§1$i§);
         super.activate();
         §@%;§.§@$U§([§`!v§.§2"H§,§`!v§.§&#!§]);
         §@%;§.§[%<§();
         this.top.setVisible(true);
         if(!this.§^P§)
         {
            this.§ !r§();
         }
      }
      
      public function §'%w§(param1:UserProfile, param2:String = null) : void
      {
         var _loc3_:Boolean = false;
         if(§4! §.isMe(param1) && Application.userProfile.getLevel() >= §,! §.§5!`§)
         {
            _loc3_ = true;
         }
         if(param2 == CraftRoom.§19§ && !_loc3_)
         {
            param2 = CraftRoom.§19§;
         }
         if(!param2)
         {
            if(§4! §.isMe(param1) && Boolean(this.§^P§.§+"F§()))
            {
               param2 = this.§^P§.§+"F§();
            }
            else
            {
               param2 = _loc3_ ? CraftRoom.§19§ : §0!$§.§19§;
            }
         }
         this.§^P§.§3%,§(param1);
         var _loc4_:§'"m§ = this.§^P§.§"!b§(param2) as §'"m§;
         this.§^P§.§;%-§(_loc4_,§1%"§.§]$<§(this.§@#>§,this,[param1],true));
      }
      
      private function § !r§() : void
      {
         this.§^P§ = new §@&&§();
         this.§^P§.exitBtn.§[!u§(this.§+"%§);
         if(Social.§`$A§() && Social.settings.§]"A§() || Application.instance.§#&7§())
         {
            this.§^P§.§""R§.§[!u§(§2%,§);
         }
         else
         {
            this.§^P§.§""R§.setVisible(false);
         }
         this.§^P§.§7#=§.§[!u§(§^#I§);
         this.§^P§.§7#=§.setVisible(false);
      }
      
      private function §@#>§(param1:§'"m§, param2:UserProfile) : void
      {
         this.§^P§.§3%,§(param2);
         this.§!#p§.update(param2,false);
         this.§[!l§(false);
         §7!g§(this.§^P§);
         if(param1)
         {
            this.§^P§.§3$W§(param1);
         }
         §@%;§.play(§`!v§.§;$t§);
         this.§1$i§.setVisible(false);
         this.§1$i§.§@&<§(false);
         this.top.setVisible(false);
      }
      
      public function §`i§(param1:MouseEvent) : void
      {
         this.§'%w§(Application.userProfile);
      }
      
      public function §+"%§(param1:Event) : void
      {
         this.§^P§.§#M§.deactivate();
         this.§^P§.hide();
         Application.instance.openMainMenu();
      }
      
      override public function destroy() : void
      {
         this.§1$i§.§]%V§.removeHandler(this.§`i§);
         if(this.§^P§)
         {
            this.§^P§.exitBtn.removeHandler(this.§+"%§);
         }
         super.destroy();
      }
      
      public function §[!l§(param1:Boolean = true) : void
      {
         if(§2$^§.§;!;§())
         {
            this.§%#N§.setVisible(false);
            this.§&C§.setVisible(param1);
         }
         else
         {
            this.§%#N§.setVisible(param1);
            this.§&C§.setVisible(false);
         }
      }
      
      public function §`-§(param1:UserProfile, param2:Boolean = true) : void
      {
         this.§!#p§.update(param1,param2);
         if(Boolean(this.§^P§) && this.§^P§.isShown())
         {
            this.§^P§.§3%,§(param1);
         }
      }
      
      public function §8$w§() : void
      {
         if(Boolean(this.§^P§) && this.§^P§.isShown())
         {
            if(Boolean(§@&&§.getProfile()) && §@&&§.getProfile().equals(Application.userProfile))
            {
               this.§!#p§.update(Application.userProfile,false);
               this.§^P§.§3%,§(Application.userProfile);
            }
         }
         else
         {
            this.§!#p§.update(Application.userProfile,true);
         }
      }
      
      public function §?%5§(param1:int) : void
      {
         this.§!#p§.§"C§(param1);
      }
      
      public function §&!s§(param1:int) : void
      {
         this.§!#p§.§]!c§(param1);
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         super.onAddedToStage(param1);
      }
      
      override protected function §2-§(param1:Event) : void
      {
         super.§2-§(param1);
         §@%;§.§8&#§();
      }
      
      public function § &;§() : UserInfo
      {
         return this.§!#p§;
      }
   }
}


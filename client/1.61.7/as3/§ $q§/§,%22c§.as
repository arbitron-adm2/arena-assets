package § $q§
{
   import § "L§.§`#r§;
   import § #9§.§"$t§;
   import § #m§.§;#^§;
   import § #m§.§?A§;
   import § #m§.§[&H§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §"!C§.§2v§;
   import §"$+§.§@C§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §#"V§.§'$h§;
   import §#"V§.§8"@§;
   import §#%!§.§7V§;
   import §#%!§.§[%U§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"R§.*;
   import §&"c§.§5$n§;
   import §&#E§.§;2§;
   import §&#h§.§5f§;
   import §'!Z§.§1"-§;
   import §'!Z§.§6S§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,!f§.*;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §0!Y§.§#!Z§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%[§.§]%s§;
   import §0%[§.§^"5§;
   import §0%j§.*;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §0&F§.SelectObjectEvent;
   import §2!-§.DamageEvent;
   import §2"L§.*;
   import §2#H§.§^!J§;
   import §2#W§.PvpChestBox;
   import §3"_§.*;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4$b§.§6!G§;
   import §5!,§.§9$h§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%k§.§0"^§;
   import §;#O§.§+%7§;
   import §<!W§.§;#A§;
   import §<%E§.§'$g§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §=&!§.§<$Z§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$L§.§&$9§;
   import §?>§.§0!7§;
   import §@!N§.§""L§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §["3§.§ V§;
   import §[%§.*;
   import §]$J§.§#"s§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.ui.Multitouch;
   import flash.ui.MultitouchInputMode;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.client.BuyColiseumTicket;
   import ru.pragmatix.wormix.messages.client.BuyResetBonusItems;
   import ru.pragmatix.wormix.messages.client.GetQuestReward;
   import ru.pragmatix.wormix.messages.client.IncreaseAchievements;
   import ru.pragmatix.wormix.messages.client.JoinToChat;
   import ru.pragmatix.wormix.messages.server.BuyResetBonusItemsResult;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §,"c§ extends §`&-§ implements §0!7§, §?A§
   {
      
      private var §&%4§:Boolean;
      
      private var §7n§:§6!G§;
      
      private var profile:UserProfile;
      
      private var §;$4§:§[&H§;
      
      private var §%#m§:§[%U§;
      
      public function §,"c§(param1:DisplayObjectContainer, param2:UserProfile = null, param3:Boolean = true)
      {
         super(DisplayObjectContainer(param1));
         this.§&%4§ = param3;
         if(param2)
         {
            this.§3%,§(param2);
         }
         else
         {
            param1.visible = false;
         }
         this.§;$4§ = new §7V§(param1);
         this.§%#m§ = new §[%U§(this);
      }
      
      public function §3%,§(param1:UserProfile) : void
      {
         this.profile = param1;
         container.visible = true;
         this.§7n§ = §"$t§.§!!1§(this.§7n§,param1,§#!`§());
         if(param1)
         {
            this.§;$4§.§@!y§(this.§%#m§);
         }
         else
         {
            this.§;$4§.§`Z§();
         }
      }
      
      public function §&k§() : DisplayObject
      {
         return this.§%#m§ ? this.§%#m§.§&k§() : null;
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this.§;$4§)
         {
            this.§;$4§.§`Z§();
            this.§;$4§.removeHint();
            this.§;$4§.destroy();
         }
      }
      
      public function getProfile() : UserProfile
      {
         return this.profile;
      }
      
      public function §-$S§() : §6!G§
      {
         return null;
      }
      
      public function §]$o§(param1:§6!G§) : void
      {
      }
      
      public function §2u§() : §^$E§
      {
         return this.profile ? this.profile.§2u§() : null;
      }
      
      public function §7"i§(param1:§^$E§) : void
      {
         if(this.profile)
         {
            this.profile.§7"i§(param1);
         }
      }
      
      public function §+!b§() : §^%%§
      {
         return this.profile ? this.profile.§+!b§() : null;
      }
      
      public function §;"U§(param1:§^%%§) : void
      {
         if(this.profile)
         {
            this.profile.§;"U§(param1);
         }
      }
   }
}


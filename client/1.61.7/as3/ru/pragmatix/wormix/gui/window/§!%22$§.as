package ru.pragmatix.wormix.gui.window
{
   import § "%§.§0$[§;
   import § &5§.§=#P§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §"$+§.§`&$§;
   import §#"V§.§!&5§;
   import §#"V§.§<"4§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%E§.§5%C§;
   import §&$Y§.§&!R§;
   import §&&6§.*;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0&F§.§4$T§;
   import §2!0§.;
   import §2!0§.§5"m§;
   import §2!0§.§="A§;
   import §2#i§.§+%z§;
   import §4'§.§^"p§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§2& §;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §<"L§.*;
   import §<%k§.§`!v§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §]#[§.*;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import config.achievements.§"!&§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.IncomingClanMessage;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§,$n§;
   
   public class §!"$§ extends §<"4§ implements §^c§
   {
      
      protected var anim:MovieClip;
      
      public function §!"$§(param1:MovieClip)
      {
         super(param1);
         if(param1.totalFrames > 1)
         {
            this.anim = param1;
         }
      }
      
      override public function setVisible(param1:Boolean) : void
      {
         super.setVisible(param1);
         if(param1)
         {
            this.playAnimations();
         }
         else
         {
            this.stopAnimations();
         }
      }
      
      public function playAnimations() : void
      {
         if(Boolean(this.anim) && Boolean(!this.anim.isPlaying) && isVisible())
         {
            this.anim.play();
         }
      }
      
      public function stopAnimations() : void
      {
         if(this.anim)
         {
            this.anim.stop();
         }
      }
   }
}


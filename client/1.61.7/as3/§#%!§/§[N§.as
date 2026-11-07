package §#%!§
{
   import §!$d§.§<$c§;
   import §"!C§.§2v§;
   import §"!C§.§3#n§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §'$j§.§'-§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §<"L§.*;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanJoinRatingRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanJoinRatingResponse;
   import ru.pragmatix.wormix.messages.clans.response.treasury.DonateClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.GetQuestReward;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §[N§ implements §%&F§
   {
      
      private var §`#l§:uint;
      
      private var § $w§:String;
      
      private var §^&+§:int;
      
      private var §'W§:int;
      
      private var §[t§:Boolean = false;
      
      public function §[N§(param1:§+%]§, param2:String, param3:int, param4:int = 0)
      {
         super();
         this.§`#l§ = param1.squad.getNumber();
         this.§ $w§ = param2;
         this.§^&+§ = param3;
         this.§'W§ = param4;
      }
      
      public function §]%d§() : void
      {
         this.§[t§ = true;
      }
      
      public function §>$T§() : void
      {
         this.§[t§ = false;
      }
      
      public function §""+§() : Boolean
      {
         return this.§[t§;
      }
      
      public function §%#8§() : String
      {
         return this.§ $w§;
      }
      
      public function §["n§(param1:String) : void
      {
         this.§ $w§ = param1;
      }
      
      public function §3"H§() : uint
      {
         return this.§`#l§;
      }
      
      public function § "§() : int
      {
         return this.§^&+§;
      }
      
      public function §<"l§() : int
      {
         return this.§'W§;
      }
      
      public function §&!J§(param1:int) : void
      {
         this.§^&+§ += param1;
      }
   }
}


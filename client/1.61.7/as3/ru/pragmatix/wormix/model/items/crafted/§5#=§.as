package ru.pragmatix.wormix.model.items.crafted
{
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2B§.§^%y§;
   import §3#a§.§-!`§;
   import §4&F§.*;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5!9§.§6$,§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §<%E§.§,$2§;
   import §<%c§.*;
   import §<%k§.*;
   import §<K§.RatingTabClan;
   import §?$7§.§+#N§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §]$v§.§+%n§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.rules.§6#H§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.RatingWindow;
   import ru.pragmatix.wormix.messages.server.GetAbandonedFriendsResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §5#=§
   {
      
      private var attempts:int;
      
      private var §-&+§:int;
      
      private var §5"1§:int;
      
      public function §5#=§(param1:int, param2:int, param3:int)
      {
         super();
         this.§5"1§ = param1;
         this.§-&+§ = param2;
         this.attempts = param3;
      }
      
      public function toString() : String
      {
         return "Guaranteed{" + " prefixes=" + this.§5"1§ + " prefixId=" + this.§-&+§ + " attempts=" + this.attempts + " }";
      }
      
      public function §?&7§() : int
      {
         return this.§5"1§;
      }
      
      public function §8!B§() : int
      {
         return this.§-&+§;
      }
      
      public function §+r§() : int
      {
         return this.attempts;
      }
   }
}


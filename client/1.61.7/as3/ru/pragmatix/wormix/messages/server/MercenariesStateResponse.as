package ru.pragmatix.wormix.messages.server
{
   import §!L§.§`#p§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#h§.§?B§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#H§.§3$p§;
   import §2#s§.*;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §@!N§.§""L§;
   import §@<§.§+%]§;
   import §]#[§.§2%o§;
   import §`#x§.§"$r§;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import flash.display.MovieClip;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.structures.MechanicEventV2;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class MercenariesStateResponse
   {
      
      public var num:int;
      
      public var isOpen:Boolean;
      
      public var win:int;
      
      public var defeat:int;
      
      public var draw:int;
      
      public var total_win:int;
      
      public var total_defeat:int;
      
      public var total_draw:int;
      
      public var error:int;
      
      public var team:Array;
      
      public var attemptsRemainToday:int;
      
      public function MercenariesStateResponse()
      {
         super();
      }
      
      public function toString() : String
      {
         return "MercenariesStateResponse{" + "error=" + this.error + ", num=" + this.num + ", open=" + this.isOpen + ", win=" + this.win + ", defeat=" + this.defeat + ", draw=" + this.draw + ", total_win=" + this.total_win + ", total_defeat=" + this.total_defeat + ", total_draw=" + this.total_draw + ", attemptsRemainToday=" + this.attemptsRemainToday + ", team=" + this.team + "}";
      }
   }
}


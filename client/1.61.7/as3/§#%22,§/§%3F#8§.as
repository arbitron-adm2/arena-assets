package §#",§
{
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §!L§.§7%0§;
   import §"$+§.§^$`§;
   import §#"V§.§!&5§;
   import §#k§.§9$v§;
   import §%# §.§##U§;
   import §%L§.§%%w§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0%j§.§#!U§;
   import §0%j§.§-,§;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §7"Q§.§0$L§;
   import §8#<§.§!#^§;
   import §8$V§.§`"c§;
   import §<$2§.§+$9§;
   import §<$q§.§?!d§;
   import §<%E§.§6#`§;
   import §=!p§.§8#x§;
   import §=1§.*;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §?>§.§!q§;
   import §?>§.§0!7§;
   import §?>§.§^&<§;
   import §@!N§.*;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§0%a§;
   import §@!i§.§1""§;
   import §@!i§.§5%8§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §^"y§.§]#i§;
   import §^#[§.§?"&§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getQualifiedClassName;
   import org.gestouch.core.Gestouch;
   import org.gestouch.core.IDisplayListAdapter;
   import org.gestouch.core.gestouch_internal;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.§3$B§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.gui.menu.rating.RatingWindow;
   import ru.pragmatix.wormix.messages.server.EnterAccount;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §?#8§ extends §<#D§
   {
      
      private var isActive:Boolean = true;
      
      public function §?#8§(param1:int)
      {
         super([],param1,§`"c§.§0"z§());
      }
      
      override public function §"%S§(param1:Function) : void
      {
         §`"c§.§%!0§(§#<§(),§4$`§(),§1%"§.§]$<§(this.§7"0§,this,[param1],true));
      }
      
      private function §7"0§(param1:Array, param2:Function) : void
      {
         if(this.isActive)
         {
            param2(param1);
         }
      }
      
      public function setActive(param1:Boolean) : void
      {
         this.isActive = param1;
      }
      
      override public function §>$6§() : int
      {
         return §`"c§.§-&A§();
      }
      
      override public function §"$!§() : Boolean
      {
         return §#<§() + §4$`§() >= this.§>$6§();
      }
   }
}


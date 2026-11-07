package §^#[§
{
   import §!L§.§+"'§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §%L§.§'$T§;
   import §&#h§.*;
   import §+$=§.§6#A§;
   import §+5§.§8$W§;
   import §0&F§.§0%v§;
   import §3#T§.Meteor;
   import §8$Z§.*;
   import §="z§.§<$t§;
   import §>!_§.§'!&§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import com.inreflected.ui.touchScroll.VelocityCalculator;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §?"&§
   {
      
      private static const §5#p§:int = 13864;
      
      private static const §3#+§:int = 60698;
      
      private static var §%"§:Boolean = false;
      
      private var val:int;
      
      private var §2%y§:int;
      
      private var §7#u§:int;
      
      public function §?"&§(param1:Boolean = false)
      {
         super();
         this.§2%y§ = int(Math.floor(§5#p§ + (§3#+§ - §5#p§) * Math.random()));
         this.§7#u§ = this.§2%y§ + int(Math.floor(§5#p§ + (§3#+§ - §5#p§) * Math.random()));
         this.value = param1;
      }
      
      public static function §<%3§() : Boolean
      {
         return §%"§;
      }
      
      public function get value() : Boolean
      {
         if(!§%"§ && this.val != this.§7#u§ && this.val != this.§2%y§)
         {
            §%"§ = true;
         }
         return this.val == this.§7#u§;
      }
      
      public function set value(param1:Boolean) : void
      {
         this.val = param1 ? this.§7#u§ : this.§2%y§;
      }
   }
}


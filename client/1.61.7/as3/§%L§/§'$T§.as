package §%L§
{
   import § K§.§="c§;
   import §"%H§.§'%u§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §#k§.§ "&§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §+$=§.§6#A§;
   import §+&<§.*;
   import §,"v§.§9%d§;
   import §-!U§.*;
   import §0%[§.§0%§;
   import §0%j§.§0$+§;
   import §0%z§.§&%&§;
   import §0&F§.§0%v§;
   import §2!-§.WaterLevelChangedEvent;
   import §2#x§.§]s§;
   import §3"_§.§?#w§;
   import §3#T§.§;#Q§;
   import §5#`§.*;
   import §6"'§.*;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §=&!§.§<$Z§;
   import §=&6§.§6!X§;
   import §>!_§.*;
   import §?"[§.§#"m§;
   import §?$7§.§!§;
   import §?$7§.§8"e§;
   import §?$L§.§ "N§;
   import §?$L§.§0"-§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §[#q§.§;$Q§;
   import §[$<§.§"#"§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.§["h§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.client.Ping;
   import ru.pragmatix.wormix.messages.server.ToggleTeamMemberResult;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.§[$ §;
   
   public class §'$T§ extends § "&§
   {
      
      public static var §6%w§:Boolean = false;
      
      private static const §`#V§:uint = 5000;
      
      private static const § u§:uint = 5000;
      
      private static const §!#Q§:String = "CMD";
      
      private static const log:§&`§ = new §&`§(§'$T§);
      
      private var §2##§:uint;
      
      private var §'&!§:Timer;
      
      private var §;%r§:Function;
      
      private var §9&=§:Function;
      
      private var §+!r§:Function;
      
      public function §'$T§(param1:§#&%§, param2:uint = 5000)
      {
         super(param1.§&![§(),param1.§0!+§(),new Ping(),§ u§);
         this.§2##§ = param2;
      }
      
      override public function connect() : void
      {
         super.connect();
      }
      
      override protected function §>!e§(param1:Event) : void
      {
         super.§>!e§(param1);
         if(this.§;%r§ != null)
         {
            this.§;%r§();
         }
         this.§5%e§();
      }
      
      override protected function §;;§(param1:Event, param2:Array) : void
      {
         log.error("Connection failed with error:" + param1.toString(),§!#Q§);
         if(this.§9&=§ != null)
         {
            this.§9&=§();
         }
         this.§5%e§();
         this.close();
      }
      
      public function open(param1:Function, param2:Function) : void
      {
         if(!§1",§())
         {
            this.§;%r§ = param1;
            this.§9&=§ = param2;
            this.§+!r§ = param2;
            this.§'&!§ = new Timer(this.§2##§,1);
            this.§'&!§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§+$s§,false,0,true);
            this.§'&!§.start();
            this.connect();
            §6%w§ = true;
         }
         else
         {
            param1();
         }
      }
      
      override public function close() : void
      {
         if(§1",§())
         {
            this.§+!r§ = null;
         }
         super.close();
      }
      
      public function §5%e§() : void
      {
         if(this.§'&!§)
         {
            this.§'&!§.stop();
            this.§'&!§ = null;
         }
         this.§;%r§ = null;
         this.§9&=§ = null;
         this.§+!r§ = null;
      }
      
      override protected function closeHandler(param1:Event = null) : void
      {
         §6%w§ = false;
         super.closeHandler(param1);
         if(this.§+!r§ != null)
         {
            this.§9&=§();
         }
      }
      
      override public function send(param1:Object) : void
      {
         if(§1",§())
         {
            super.send(param1);
         }
      }
      
      private function §+$s§(param1:Event) : void
      {
         §6%w§ = false;
         if(this.§9&=§ != null)
         {
            this.§9&=§();
         }
         this.§5%e§();
      }
   }
}


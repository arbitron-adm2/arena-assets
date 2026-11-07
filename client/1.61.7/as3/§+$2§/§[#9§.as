package §+$2§
{
   import § #m§.§;#^§;
   import § %f§.§6&4§;
   import §"#x§.§'"$§;
   import §"$+§.§`&$§;
   import §#"V§.§<"4§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#k§.§9$v§;
   import §&"R§.§`&7§;
   import §&"c§.§5$n§;
   import §&x§.*;
   import §'!Z§.§1"-§;
   import §+$=§.*;
   import §+%S§.§%!%§;
   import §+%S§.§="_§;
   import §+&<§.§@$L§;
   import §,&8§.*;
   import §-@§.§+"A§;
   import §-@§.§5h§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1!J§.§"t§;
   import §2"L§.§^$y§;
   import §4!!§.§!%n§;
   import §6"'§.§9$Z§;
   import §6",§.§[%w§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7!n§.§2!j§;
   import §7!n§.§[&#§;
   import §7"Q§.§0$L§;
   import §7$t§.§=?§;
   import §9"^§.UserParamsMenu;
   import §;&2§.§!#W§;
   import §<!W§.§=!6§;
   import §<"L§.*;
   import §<$q§.*;
   import §=#g§.*;
   import §=&!§.§&$a§;
   import §?$7§.§6%k§;
   import §?$7§.§6J§;
   import §?$7§.§8"e§;
   import §?$K§.§=z§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!i§.§"-§;
   import §@!i§.§8%6§;
   import §@!i§.§@$&§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §]&?§.§7#g§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.LoaderCore;
   import config.§=%A§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.StatusEvent;
   import flash.net.LocalConnection;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.*;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.IncomingClanMessage;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §[#9§ extends §<"4§
   {
      
      protected var §88§:DisplayObject;
      
      protected var §]&D§:§4#_§;
      
      protected var §'%^§:§4#_§;
      
      private var §"$R§:Boolean;
      
      public function §[#9§(param1:MovieClip)
      {
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.§88§ = getChildByName("empty");
         this.§]&D§ = new §4#_§(this.§88§);
         this.§'%^§ = new §4#_§(§?Q§);
      }
      
      override public function setDisabled(param1:Boolean) : void
      {
         super.setDisabled(param1);
         if(!param1)
         {
            this.§1"L§(false);
         }
      }
      
      override protected function §^^§() : void
      {
         super.§^^§();
         this.§1"L§(false);
      }
      
      public function §1"L§(param1:Boolean) : void
      {
         if(param1)
         {
            this.setDisabled(true);
            §?Q§.visible = false;
         }
         this.§"$R§ = param1;
         this.§88§.visible = param1;
      }
      
      public function get isEmpty() : Boolean
      {
         return this.§"$R§;
      }
      
      public function set isEmpty(param1:Boolean) : void
      {
         this.§"$R§ = param1;
      }
      
      public function §<$>§(param1:String) : void
      {
         this.§'%^§.setQtip(param1,§;#^§.§[!K§);
      }
      
      public function §-"v§(param1:String) : void
      {
         this.§]&D§.setQtip(param1,§;#^§.§[!K§);
      }
   }
}


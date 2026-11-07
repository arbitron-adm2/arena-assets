package §1&-§
{
   import §!!i§.§@&&§;
   import §!$Z§.§"$I§;
   import §!$d§.§<$c§;
   import §"$+§.§@C§;
   import §"% §.LevelUpDialog;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&!m§.§-$6§;
   import §&&6§.*;
   import §,"v§.§9%d§;
   import §,#c§.ArenaMenu;
   import §-"Q§.*;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §1#p§.*;
   import §5"J§.*;
   import §65§.§5#A§;
   import §7$t§.§&!e§;
   import §<%E§.§4T§;
   import §<%k§.§`!v§;
   import §>$q§.§4#;§;
   import §@!N§.§2"e§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.server.ArenaLocked;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.social.Social;
   
   public class §'%3§ extends §5#A§
   {
      
      public static const NAME:String = "DAMAGE_BLOCK";
      
      private static const §=&@§:§&$2§ = new §&$2§(3);
      
      private var §-#§:int = 0;
      
      public function §'%3§(param1:int)
      {
         super(NAME,-1,param1);
      }
      
      override protected function §5#F§() : void
      {
      }
      
      override protected function §0&"§() : void
      {
         this.§-#§ = 0;
      }
      
      public function §0;§() : void
      {
         ++this.§-#§;
      }
      
      public function get isBlocked() : Boolean
      {
         return this.§-#§ % §=&@§.value == 0;
      }
   }
}


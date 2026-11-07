package §<!W§
{
   import § &5§.§=#P§;
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §%"1§.§@%;§;
   import §+%S§.§[0§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §1#p§.§2=§;
   import §2"L§.§,'§;
   import §65§.§`"C§;
   import §9%W§.§&!P§;
   import §9%W§.§8#p§;
   import §<%k§.§`!v§;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §@!N§.§""L§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`%&§.§@&,§;
   import config.achievements.§!$L§;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.§3y§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.PumpReactionTheHouseResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §!"+§ extends §`"C§
   {
      
      public static const NAME:String = "INVULNERABLE_USED_BUFF";
      
      public function §!"+§()
      {
         super(NAME,-1);
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §!"+§());
      }
   }
}


package §+%S§
{
   import §!!i§.§@&&§;
   import §"$+§.§`&$§;
   import §"%H§.§'%u§;
   import §#k§.§9$v§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §65§.§%%o§;
   import §9%W§.§!7§;
   import §9%W§.§8#p§;
   import §9%W§.§`"y§;
   import §<"L§.*;
   import §?$7§.§+#N§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`%&§.§5$1§;
   import flash.display.Sprite;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.craft.§=%G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.IncomingClanMessage;
   import ru.pragmatix.wormix.messages.clans.response.InviteToClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§,$n§;
   
   public class §%!%§ extends §%%o§
   {
      
      public static const NAME:String = "ANTIDODGE_DEBUFF";
      
      private static const §%!y§:int = 4;
      
      public function §%!%§(param1:int = 4, param2:int = 1)
      {
         super(NAME,param1,param2);
      }
      
      override protected function §5#F§() : void
      {
         unit.graphics.colorTransform(-50,-50,50);
      }
      
      override protected function §0&"§() : void
      {
         unit.graphics.colorTransform(50,50,-50);
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §%!%§(§8#z§(),value.value));
      }
      
      public function isSleep() : Boolean
      {
         var _loc1_:§]$;§ = §8"%§.§?!W§.§4"m§;
         return Boolean(_loc1_) && _loc1_.activeUnit.squad.getTeamId() != unit.squad.getTeamId();
      }
   }
}


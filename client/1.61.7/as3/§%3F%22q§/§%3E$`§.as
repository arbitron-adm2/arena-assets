package §?"q§
{
   import § !8§.§`!d§;
   import §""8§.§]#g§;
   import §"$+§.§`&$§;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.§5f§;
   import §'!Z§.§;n§;
   import §+%S§.§,$p§;
   import §0%[§.§0%§;
   import §6%2§.§#"B§;
   import §65§.§6%E§;
   import §<"L§.*;
   import §<$q§.§?!d§;
   import §?#g§.§&"P§;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import config.achievements.§!$L§;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.IncomingClanMessage;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.BuySkinResponse;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§6Y§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§,$n§;
   
   public class §>$`§ extends §]#g§
   {
      
      public function §>$`§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint)
      {
         super(param1,param2,param3,param4);
         §7"A§ = §;n§.§@$Y§;
      }
      
      override public function attachTrail() : void
      {
         if(§8"%§.§&S§.§-p§())
         {
            ammoTrail = §,$n§.§&#z§(this,false,4,8,16111208,16111208,1);
         }
      }
      
      override protected function trigger(param1:§+%]§) : void
      {
         var _loc2_:§6%E§ = null;
         if(param1.§0!e§)
         {
            _loc2_ = param1.buffs;
            if(!_loc2_.hasBuff(§,$p§.NAME))
            {
               _loc2_.place(new §,$p§(owner));
            }
            else
            {
               _loc2_.§6C§(§,$p§.NAME);
            }
         }
      }
   }
}


package §[%§
{
   import §"$+§.§`&$§;
   import §#k§.§9$v§;
   import §0%[§.§0%§;
   import §0%[§.§6!?§;
   import §4%_§.§3§;
   import §65§.§`"C§;
   import §7"Q§.*;
   import §<!W§.§3"R§;
   import §<!W§.§4!I§;
   import §<!W§.§;!`§;
   import §<"L§.*;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import config.§`!a§;
   import flash.display.DisplayObjectContainer;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.IncomingClanMessage;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§,$n§;
   
   public class §^"n§ extends §+%]§
   {
      
      public function §^"n§(param1:UserProfile, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
         buffs.place(new §;!`§());
         if(param1.getRace().§%§(§`!a§.§7#+§).getLevel() <= param1.getLevel())
         {
            buffs.place(new §4!I§());
         }
      }
      
      override public function §%!F§() : void
      {
         var _loc1_:§`"C§ = null;
         _loc1_ = buffs.getBuff(§3"R§.NAME) || buffs.getBuff(§;!`§.NAME);
         var _loc2_:§3#3§ = §;!`§(_loc1_).getDrone();
         if(_loc2_)
         {
            _loc2_.disposed = true;
         }
      }
      
      override public function §1%f§() : void
      {
         super.§1%f§();
         if(buffs.hasBuff(§3"R§.NAME))
         {
            buffs.§6C§(§;!`§.NAME);
         }
      }
   }
}


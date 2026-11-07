package §[!O§
{
   import §"$+§.§`&$§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §+%S§.*;
   import §0%[§.§0%§;
   import §2!-§.DamageEvent;
   import §2#i§.§!$A§;
   import §2#i§.§6§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §9%W§.§!7§;
   import §<"L§.§##-§;
   import §>%S§.§^!V§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@<§.§+%]§;
   import §["3§.*;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §%@§ extends §6!u§
   {
      
      public function §%@§()
      {
         super();
      }
      
      public function §[P§() : Boolean
      {
         return §?!'§ != §^%s§;
      }
      
      public function §+$N§() : Array
      {
         if(§?!'§ != §^%s§)
         {
            var _loc1_:* = §§findproperty(§^%s§);
            var _loc2_:Number = _loc1_.§^%s§ + 1;
            _loc1_.§^%s§ = _loc2_;
            return §,$>§[§^%s§] != undefined ? §,$>§[§^%s§] : [];
         }
         return [];
      }
   }
}


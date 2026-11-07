package §4!!§
{
   import § %"§.§"%5§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §"!C§.§3#n§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§7%f§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §7$1§.§;$n§;
   import §8$V§.*;
   import §<%k§.§`!v§;
   import §?$L§.§0"-§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import config.achievements.§!$L§;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import org.gestouch.core.gestouch_internal;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.CallToBattleResultType;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   
   use namespace gestouch_internal;
   
   public class §2&F§ extends §'$V§
   {
      
      private var heal:§&$2§;
      
      private var §4y§:Boolean;
      
      private var §8&>§:Function;
      
      public function §2&F§(param1:§+%]§, param2:int, param3:int, param4:§+%]§, param5:uint, param6:Boolean = false, param7:uint = 13934615, param8:uint = 16777215)
      {
         super(param1,param2,param3,true,param4,param7,param8,40);
         this.heal = new §&$2§(param5);
         this.§4y§ = param6;
         §3$1§ = false;
      }
      
      override protected function §;&;§() : void
      {
         var _loc2_:int = 0;
         if(target is §+%]§)
         {
            _loc2_ = §+%]§(target).bonuses.getStatValue(Bonus.§;#-§);
            this.heal.value += §-q§.§8$G§(_loc2_,this.heal.value);
         }
         var _loc1_:int = target.attributes.hp.§#1§(this.heal.value,false,this.§4y§ ? 1 : 0);
         if(this.§8&>§ != null)
         {
            this.§8&>§(_loc1_);
         }
      }
      
      public function set onHealCallback(param1:Function) : void
      {
         this.§8&>§ = param1;
      }
   }
}


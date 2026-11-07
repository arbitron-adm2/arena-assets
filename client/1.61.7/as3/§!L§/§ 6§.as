package §!L§
{
   import § &5§.§0&$§;
   import §##y§.CollisionEvent;
   import §#5§.§!&"§;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§"$7§;
   import §+%S§.§;!4§;
   import §0!§.§8$Y§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §4!x§.§@& §;
   import §5#`§.§7%g§;
   import §6"'§.§9$Z§;
   import §6%2§.*;
   import §7$t§.§&!e§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=&!§.§ "^§;
   import §=&!§.§]$d§;
   import §@!i§.§"-§;
   import §@$f§.PromoRaidWindow;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.filters.BitmapFilterQuality;
   import flash.filters.GlowFilter;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.ColiseumError;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.facebook.controller.bank.CountryCodeNames;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class § 6§
   {
      
      private var log:§&`§ = new §&`§(§ 6§);
      
      private var §-$Q§:§7%0§;
      
      public function § 6§()
      {
         super();
      }
      
      public function load(param1:§]$d§, param2:Vector.<UserProfile>, param3:Function, param4:Function) : void
      {
         var callback:Function = null;
         var info:§]$d§ = param1;
         var profiles:Vector.<UserProfile> = param2;
         var onSuccess:Function = param3;
         var onFail:Function = param4;
         var mirror:Boolean = § "^§.getValue(info.options,§ "^§.MIRROR_MAP);
         if(§0#2§.§;%<§())
         {
            if(info.§ &2§())
            {
               mirror = true;
            }
         }
         try
         {
            callback = §1%"§.§]$<§(this.§0#H§,this,[profiles,onSuccess,onFail],true);
            §8"%§.§"!§.§#$C§(info.mapId,callback,info.noMapGround,mirror);
         }
         catch(e:Object)
         {
            onFail();
         }
      }
      
      private function §0#H§(param1:§0&$§, param2:§9$Z§, param3:Boolean, param4:Vector.<UserProfile>, param5:Function, param6:Function) : void
      {
         var _loc7_:Array = null;
         var _loc8_:Array = null;
         var _loc9_:UserProfile = null;
         var _loc10_:UserProfile = null;
         §[&G§.§]$+§();
         if(param3)
         {
            _loc7_ = [];
            if(param4 != null)
            {
               for each(_loc9_ in param4)
               {
                  for each(_loc10_ in _loc9_.§7$F§())
                  {
                     _loc7_.push(_loc10_);
                  }
               }
            }
            _loc8_ = _loc7_.filter(§4! §.§5!'§);
            if(_loc8_.length > 0)
            {
               this.§-$Q§ = new §7%0§();
               §[&G§.§5%b§(§0$N§.BATTLE_ENEMY_DATA_LOAD);
               this.§-$Q§.§%$N§(_loc8_,§1%"§.§]$<§(param5,this,[param1]));
            }
            else
            {
               param5(param1);
            }
         }
         else
         {
            param6();
         }
      }
   }
}


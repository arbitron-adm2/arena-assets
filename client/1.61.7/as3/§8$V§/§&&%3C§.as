package §8$V§
{
   import §"$+§.*;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §+%S§.§+m§;
   import §+%S§.§2&>§;
   import §0%[§.§0%§;
   import §0%[§.Cookie;
   import §0%[§.§^"5§;
   import §1#p§.§"Z§;
   import §1#p§.Team;
   import §2#H§.§+N§;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import config.achievements.§!$L§;
   import flash.events.MouseEvent;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.PumpReactionRate;
   import ru.pragmatix.wormix.messages.client.PumpReactionRates;
   import ru.pragmatix.wormix.messages.server.PumpReactionRatesResult;
   import ru.pragmatix.wormix.messages.server.PumpReactionTheHouseResult;
   import ru.pragmatix.wormix.messages.structures.PumpReactionRateStructure;
   import ru.pragmatix.wormix.model.user.§!>§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §&&<§
   {
      
      private static const §5$6§:uint = 100;
      
      private static const §,S§:String = "upReactionDoneFor";
      
      private var upReactionDoneFor:Object;
      
      public function §&&<§()
      {
         super();
         this.upReactionDoneFor = Cookie.getValue(§,S§,{});
      }
      
      public function §;[§(param1:UserProfile) : Boolean
      {
         var _loc4_:Number = NaN;
         var _loc2_:Number = new Date().time;
         var _loc3_:Boolean = !param1.equals(Application.userProfile);
         if(Boolean(_loc3_) && Boolean(this.upReactionDoneFor[param1.getId()]) && this.upReactionDoneFor[param1.getId()] is Number)
         {
            _loc4_ = §0#2§.§8%m§(this.upReactionDoneFor[param1.getId()]);
            _loc3_ = _loc4_ < §0#2§.§8%m§(_loc2_);
         }
         return _loc3_;
      }
      
      public function §5%s§(param1:UserProfile, param2:Function) : void
      {
         §^"5§.single(§%%w§.§7F§,PumpReactionTheHouseResult,this.§8e§,this,[param2,param1],true);
         §%%w§.§,U§(new PumpReactionRate(param1.getId()));
      }
      
      private function §8e§(param1:§9$v§, param2:Function, param3:UserProfile) : void
      {
         this.§]&@§(param3);
         var _loc4_:§!>§ = §!>§.valueOf(PumpReactionTheHouseResult(param1.message).result);
         if(_loc4_ == §!>§.OK)
         {
            §8"%§.§@1§.increase([§!$L§.§?&+§],[1]);
         }
         param2(_loc4_);
      }
      
      public function §0#N§(param1:Array, param2:Function, param3:Boolean = true) : void
      {
         var _loc5_:Object = null;
         var _loc4_:PumpReactionRates = new PumpReactionRates();
         for each(_loc5_ in param1)
         {
            _loc4_.friendIds.push(_loc5_ is UserProfile ? _loc5_.getId() : _loc5_);
         }
         if(_loc4_.friendIds.length > §5$6§)
         {
            _loc4_.friendIds = _loc4_.friendIds.slice(0,§5$6§);
         }
         §^"5§.single(§%%w§.§7F§,PumpReactionRatesResult,this.§<$O§,this,[param2,param3],true);
         §%%w§.§,U§(_loc4_);
      }
      
      private function §<$O§(param1:§9$v§, param2:Function, param3:Boolean) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:PumpReactionRateStructure = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc4_:Array = PumpReactionRatesResult(param1.message).pumpedFriends;
         var _loc5_:int = 0;
         var _loc6_:uint = 0;
         for each(_loc8_ in PumpReactionRatesResult(param1.message).pumpedFriends)
         {
            switch(§!>§.valueOf(_loc8_.result))
            {
               case §!>§.TODAY_ALREADY_PUMPED:
                  this.§9&%§(_loc8_.friendId);
                  break;
               case §!>§.OK:
                  this.§9&%§(_loc8_.friendId);
                  _loc6_++;
                  break;
               case §!>§.ERROR:
                  _loc7_ = true;
                  break;
               case §!>§.DAY_LIMIT_PUMP:
                  _loc5_++;
                  break;
               default:
                  _loc7_ = true;
            }
         }
         if(_loc6_ > 0)
         {
            §8"%§.§@1§.increase([§!$L§.§?&+§],[_loc6_]);
         }
         if(_loc5_ > 0)
         {
            _loc9_ = param3 ? §0$N§.PUMP_REACTION_DAY_LIMIT_ADD : §0$N§.PUMP_REACTION_DAY_LIMIT_ADD_CLAN;
            _loc10_ = §0%§.format(_loc9_,{"count":_loc4_.length - _loc5_});
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0$N§.PUMP_REACTION_DAY_LIMIT + ". " + _loc10_,§,#W§.§6!m§);
         }
         else if(_loc7_)
         {
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0$N§.ERROR_SERVER,§,#W§.§6!m§);
         }
         param2(_loc6_);
      }
      
      public function §4%Q§() : Object
      {
         return this.upReactionDoneFor;
      }
      
      public function §6&H§() : void
      {
         this.upReactionDoneFor = {};
         Cookie.setValue(§,S§,this.upReactionDoneFor);
      }
      
      public function §]&@§(param1:UserProfile) : void
      {
         this.upReactionDoneFor[param1.getId()] = new Date().time;
         Cookie.setValue(§,S§,this.upReactionDoneFor);
      }
      
      public function §9&%§(param1:int) : void
      {
         this.upReactionDoneFor[param1] = new Date().time;
         Cookie.setValue(§,S§,this.upReactionDoneFor);
      }
   }
}


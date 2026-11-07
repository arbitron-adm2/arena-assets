package §<%E§
{
   import §"$+§.*;
   import §%L§.§%%w§;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §=!p§.§'%#§;
   import §`%&§.§5$1§;
   import flash.events.Event;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   
   public class §;!y§ extends §,$2§
   {
      
      private var log:§&`§ = new §&`§(§;!y§);
      
      private var §0$9§:Object = {};
      
      private var §#%+§:Array = [];
      
      public function §;!y§()
      {
         super(null,"LOAD.USER.PROFILES");
      }
      
      public function §"$ §(param1:§'%#§) : void
      {
         var _loc2_:String = param1.§"%D§();
         this.§0$9§[_loc2_] = param1;
         if(this.§#%+§.indexOf(_loc2_) == -1)
         {
            this.§#%+§[this.§#%+§.length] = _loc2_;
         }
      }
      
      public function §'"L§(param1:String) : §'%#§
      {
         var _loc2_:§'%#§ = this.§0$9§[param1];
         if(!_loc2_)
         {
            this.log.warn("SocialUserData not found by socialId " + param1);
         }
         return _loc2_;
      }
      
      public function §@#C§() : Object
      {
         return this.§0$9§;
      }
      
      public function §0$F§() : Array
      {
         return this.§#%+§;
      }
   }
}


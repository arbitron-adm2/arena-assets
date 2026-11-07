package §3#a§
{
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §,!f§.*;
   import §,"v§.§9%d§;
   import §2B§.§#&E§;
   import §7$t§.§=?§;
   import §9&+§.§>&5§;
   import §="z§.§9%1§;
   import §?>§.§0!7§;
   import §@!N§.§""L§;
   import §@8§.§5%>§;
   import §]^§.§3$f§;
   import §]^§.§4&+§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.§3$B§;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class §<#_§
   {
      
      public static const §'#@§:String = "NAMES_FOR_HAT_";
      
      private static const COMMON_NAMES:String = "COMMON_NAMES";
      
      private static const §=!g§:String = "ARENA_MERC_NAME_";
      
      private static const §6#P§:String = "ARENA_MERC_EPIC_NAME_";
      
      private static var instance:§<#_§ = null;
      
      private var §<!-§:Object = {};
      
      private var §?6§:Array;
      
      public function §<#_§()
      {
         var _loc1_:§4&+§ = null;
         var _loc2_:uint = 0;
         var _loc3_:String = null;
         var _loc4_:CraftedEquipFamily = null;
         var _loc5_:Vector.<§5%>§> = null;
         var _loc6_:String = null;
         var _loc7_:Array = null;
         var _loc8_:§5%>§ = null;
         super();
         if(instance)
         {
            throw new Error("BotNamingHelper must not be instantiated!");
         }
         instance = this;
         this.§?6§ = §0$N§.§<N§(COMMON_NAMES).split(",");
         for each(_loc1_ in §3$f§.§+!7§())
         {
            if(_loc1_.§"!?§() != 0)
            {
               _loc3_ = §0$N§.§<N§(§'#@§ + _loc1_.§"!?§(),"");
               if(_loc3_)
               {
                  this.§<!-§[_loc1_.§"!?§()] = _loc3_.split(",");
               }
            }
         }
      }
      
      public static function getInstance() : §<#_§
      {
         return !instance ? new §<#_§() : instance;
      }
      
      public function §8$T§(param1:uint, param2:Vector.<UserProfile>, param3:Boolean) : String
      {
         var _loc4_:UserProfile = null;
         if(param1 == 0)
         {
            return "";
         }
         var _loc5_:Array = [];
         _loc5_ = _loc5_.concat(this.§<!-§[param1] ? this.§<!-§[param1] : this.§?6§);
         var _loc6_:uint = _loc5_.length;
         var _loc7_:* = int(_loc6_ - 1);
         while(_loc7_ >= 0)
         {
            for each(_loc4_ in param2)
            {
               if(_loc5_[_loc7_] == _loc4_.getCharName())
               {
                  _loc5_.splice(_loc7_,1);
                  break;
               }
            }
            _loc7_--;
         }
         if(_loc5_.length == 0)
         {
            _loc5_ = this.§?6§;
         }
         return param3 ? String(§""L§.§=!W§(_loc5_)) : _loc5_[0];
      }
      
      public function §!d§(param1:UserProfile, param2:Boolean) : void
      {
         var _loc4_:UserProfile = null;
         var _loc5_:uint = 0;
         var _loc3_:Vector.<UserProfile> = param1.§"]§();
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = _loc4_.§2u§() ? uint(_loc4_.§2u§().getId()) : 0;
            _loc4_.§-"§(this.§8$T§(_loc5_,_loc3_,param2));
         }
      }
      
      public function §9"I§(param1:int, param2:uint) : String
      {
         var _loc3_:String = §0$N§.§<N§(§6#P§ + param1.toString(),"");
         if(!_loc3_ && param2 > 0)
         {
            _loc3_ = this.§8$T§(param2,null,false);
         }
         return _loc3_;
      }
      
      public function §@#E§(param1:UserProfile) : void
      {
         var _loc4_:UserProfile = null;
         var _loc5_:uint = 0;
         var _loc2_:Vector.<UserProfile> = param1.§"]§();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc4_ = _loc2_[_loc3_];
            _loc5_ = _loc4_.§2u§() ? uint(_loc4_.§2u§().getId()) : 0;
            _loc4_.§-"§(this.§9"I§(_loc4_.getId(),_loc5_));
            _loc3_++;
         }
      }
   }
}


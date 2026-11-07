package ru.pragmatix.wormix.serialization.server
{
   import §!L§.§`#p§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §0%[§.Cookie;
   import §5!,§.§9$h§;
   import §8$V§.*;
   import §9"-§.AnchorTeleportMark;
   import §=!p§.§'%#§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class WithdrawSeasonWeaponsResultBinarySerializer implements §&"a§
   {
      
      public function WithdrawSeasonWeaponsResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10134;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = null;
         _loc3_ = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:WithdrawSeasonWeaponsResult = new WithdrawSeasonWeaponsResult();
         var _loc5_:uint = _loc3_.readUnsignedShort();
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc3_.readShort();
            _loc4_.withdrawnWeapons[_loc6_] = WeaponStructure(§<!h§.§@%$§(WeaponStructure).deserializeStructure(_loc3_,null));
            _loc6_++;
         }
         _loc4_.compensationInMoney = _loc3_.readInt();
         _loc4_.compensationInKeys = _loc3_.readInt();
         §!!"§.§!!J§(_loc3_,_loc4_.prevSeasonWeapons);
         §!!"§.§!!J§(_loc3_,_loc4_.currentSeasonWeapons);
         §!!"§.§!!J§(_loc3_,_loc4_.currentSeasonStuff);
         return _loc4_;
      }
   }
}


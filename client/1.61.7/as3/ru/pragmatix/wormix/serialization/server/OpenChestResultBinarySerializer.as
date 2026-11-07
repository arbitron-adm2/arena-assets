package ru.pragmatix.wormix.serialization.server
{
   import §%L§.§%%w§;
   import §,!f§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §7$t§.§=?§;
   import §8#a§.ShopMenu;
   import §<"L§.§7"L§;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.messages.client.RewardReturnFriend;
   import ru.pragmatix.wormix.messages.server.OpenChestResult;
   import ru.pragmatix.wormix.messages.server.RewardReturnFriendResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class OpenChestResultBinarySerializer implements §&"a§
   {
      
      public function OpenChestResultBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 10102;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = null;
         _loc3_ = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:OpenChestResult = new OpenChestResult();
         _loc4_.equipId = _loc3_.readShort();
         _loc4_.weaponId = _loc3_.readInt();
         _loc4_.weaponCount = _loc3_.readInt();
         _loc4_.fuzyCount = _loc3_.readInt();
         _loc4_.rubyCount = _loc3_.readInt();
         _loc4_.recipeId = _loc3_.readShort();
         _loc4_.result = _loc3_.readShort();
         var _loc5_:String = _loc3_.readUTF();
         _loc4_.medalCount = _loc3_.readInt();
         _loc4_.mutagenCount = _loc3_.readInt();
         _loc4_.experience = _loc3_.readInt();
         _loc4_.battles = _loc3_.readInt();
         _loc4_.bossToken = _loc3_.readInt();
         _loc4_.wagerToken = _loc3_.readInt();
         §!!"§.§1&B§(_loc3_,_loc5_,§0$N§.PROTOCOL_CHEATER);
         return _loc4_;
      }
   }
}


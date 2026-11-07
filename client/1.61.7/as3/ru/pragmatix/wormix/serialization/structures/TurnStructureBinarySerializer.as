package ru.pragmatix.wormix.serialization.structures
{
   import § &5§.§0&$§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §+%S§.§2&>§;
   import §,"v§.§@#&§;
   import §2#i§.§+%z§;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §4!K§.§^%A§;
   import §7$t§.§=?§;
   import §<"?§.§3>§;
   import §<%k§.§`!v§;
   import §=$#§.§`%u§;
   import §?!E§.*;
   import §?$L§.§0"-§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §`#x§.§"$r§;
   import com.greensock.TweenMax;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.BossWormStructure;
   import ru.pragmatix.wormix.messages.structures.TurnStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   
   public class TurnStructureBinarySerializer implements §@#&§
   {
      
      public function TurnStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
         var _loc6_:ByteArray = null;
         var _loc4_:TurnStructure = TurnStructure(param1);
         param2.writeShort(_loc4_.turnNum);
         param2.writeBoolean(_loc4_.isPlayerTurn);
         param2.writeInt(_loc4_.endTime);
         param2.writeInt(_loc4_.damageToPlayer);
         param2.writeInt(_loc4_.damageToBoss);
         var _loc5_:uint = _loc4_.items.length;
         param2.writeShort(_loc5_);
         var _loc7_:int = 0;
         while(_loc7_ < _loc5_)
         {
            _loc6_ = new ByteArray();
            param2.writeShort(0);
            §<!h§.§@%$§(WeaponStructure).serializeStructure(_loc4_.items[_loc7_],_loc6_,null);
            param2.writeBytes(_loc6_);
            _loc7_++;
         }
         _loc5_ = _loc4_.deaths.length;
         param2.writeShort(_loc5_);
         _loc7_ = 0;
         while(_loc7_ < _loc5_)
         {
            _loc6_ = new ByteArray();
            param2.writeShort(0);
            §<!h§.§@%$§(BossWormStructure).serializeStructure(_loc4_.deaths[_loc7_],_loc6_,null);
            param2.writeBytes(_loc6_);
            _loc7_++;
         }
         _loc5_ = _loc4_.births.length;
         param2.writeShort(_loc5_);
         _loc7_ = 0;
         while(_loc7_ < _loc5_)
         {
            _loc6_ = new ByteArray();
            param2.writeShort(0);
            §<!h§.§@%$§(BossWormStructure).serializeStructure(_loc4_.births[_loc7_],_loc6_,null);
            param2.writeBytes(_loc6_);
            _loc7_++;
         }
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:TurnStructure = new TurnStructure();
         _loc3_.turnNum = param1.readShort();
         _loc3_.isPlayerTurn = param1.readBoolean();
         _loc3_.endTime = param1.readInt();
         _loc3_.damageToPlayer = param1.readInt();
         _loc3_.damageToBoss = param1.readInt();
         var _loc4_:uint = param1.readUnsignedShort();
         _loc3_.items = [];
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            param1.readShort();
            _loc3_.items[_loc5_] = §<!h§.§@%$§(WeaponStructure).deserializeStructure(param1,null);
            _loc5_++;
         }
         _loc4_ = param1.readUnsignedShort();
         _loc3_.deaths = [];
         _loc5_ = 0;
         while(_loc5_ < _loc4_)
         {
            param1.readShort();
            _loc3_.deaths[_loc5_] = §<!h§.§@%$§(BossWormStructure).deserializeStructure(param1,null);
            _loc5_++;
         }
         _loc4_ = param1.readUnsignedShort();
         _loc3_.births = [];
         _loc5_ = 0;
         while(_loc5_ < _loc4_)
         {
            param1.readShort();
            _loc3_.births[_loc5_] = §<!h§.§@%$§(BossWormStructure).deserializeStructure(param1,null);
            _loc5_++;
         }
         return _loc3_;
      }
   }
}


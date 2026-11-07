package ru.pragmatix.wormix.serialization.structures
{
   import § &5§.§0&$§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §#k§.*;
   import §%"1§.§@%;§;
   import §,"v§.§@#&§;
   import §-@§.§-#m§;
   import §1#p§.*;
   import §4#`§.§+!l§;
   import §6#Z§.§&!Z§;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §<%k§.§`!v§;
   import §=&!§.§4$z§;
   import §>%S§.§^!V§;
   import §?$L§.§0"-§;
   import §@<§.§+%]§;
   import §`#x§.§"$r§;
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getQualifiedClassName;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.DowngradeWeaponResult;
   import ru.pragmatix.wormix.messages.structures.RestrictionItemStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class RestrictionItemStructureBinarySerializer implements §@#&§
   {
      
      public function RestrictionItemStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:ByteArray = null;
         _loc3_ = param1 as ByteArray;
         var _loc4_:int = _loc3_.readInt();
         var _loc5_:int = _loc3_.readInt();
         var _loc6_:Vector.<int> = new Vector.<int>(0);
         §!!"§.§#'§(_loc3_,_loc6_);
         return new RestrictionItemStructure(_loc4_,_loc5_,_loc6_);
      }
   }
}


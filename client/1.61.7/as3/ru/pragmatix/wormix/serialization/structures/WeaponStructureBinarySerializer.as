package ru.pragmatix.wormix.serialization.structures
{
   import § $q§.§-%f§;
   import §##j§.§0!-§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §0&F§.§0%v§;
   import §7"Q§.§0$L§;
   import §`#x§.§"$r§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class WeaponStructureBinarySerializer implements §@#&§
   {
      
      public function WeaponStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
         var _loc4_:WeaponStructure = WeaponStructure(param1);
         param2.writeInt(_loc4_.getId());
         param2.writeInt(_loc4_.getCount());
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:int = param1.readInt();
         var _loc4_:int = param1.readInt();
         return new WeaponStructure(_loc3_,_loc4_);
      }
   }
}


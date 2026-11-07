package ru.pragmatix.wormix.serialization.structures
{
   import §"$+§.*;
   import §,"v§.§@#&§;
   import §0%[§.§0%§;
   import §1#p§.§2=§;
   import §8$Z§.§9"t§;
   import §?$7§.§+l§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import com.inreflected.forks.spark.effects.interpolation.NumberInterpolator;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.ProfileDoubleKeyStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class ProfileDoubleKeyStructureBinarySerializer implements §@#&§
   {
      
      public function ProfileDoubleKeyStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
         var _loc4_:ProfileDoubleKeyStructure = ProfileDoubleKeyStructure(param1);
         param2.writeUnsignedInt(_loc4_.longId);
         param2.writeUTF(_loc4_.stringId);
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:ProfileDoubleKeyStructure = new ProfileDoubleKeyStructure();
         _loc3_.longId = param1.readUnsignedInt();
         _loc3_.stringId = param1.readUTF();
         return _loc3_;
      }
   }
}


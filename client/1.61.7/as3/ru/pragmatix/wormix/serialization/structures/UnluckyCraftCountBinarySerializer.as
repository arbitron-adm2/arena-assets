package ru.pragmatix.wormix.serialization.structures
{
   import §!$Z§.§6=§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §,"v§.§@#&§;
   import §0%[§.§0%§;
   import §1#p§.§+E§;
   import §1#p§.§2=§;
   import §4#2§.*;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §8$V§.*;
   import §9"-§.§?!s§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§"-§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import §^"y§.§]#i§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.SecurityErrorEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.UnluckyCraftCount;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   
   public class UnluckyCraftCountBinarySerializer implements §@#&§
   {
      
      public function UnluckyCraftCountBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:ByteArray = param1 as ByteArray;
         var _loc4_:UnluckyCraftCount = new UnluckyCraftCount();
         _loc4_.recipeId = _loc3_.readShort();
         _loc4_.count = _loc3_.readInt();
         return _loc4_;
      }
   }
}


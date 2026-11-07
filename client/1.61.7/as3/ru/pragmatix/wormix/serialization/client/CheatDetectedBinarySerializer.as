package ru.pragmatix.wormix.serialization.client
{
   import § #9§.§"$t§;
   import § $q§.§3U§;
   import §!L§.§+"'§;
   import §&"c§.§5$n§;
   import §+$2§.§;#T§;
   import §+$=§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §-8§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2"L§.*;
   import §>%S§.§^!V§;
   import §?#g§.§"&>§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.ui.Mouse;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.messages.client.CheatDetected;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class CheatDetectedBinarySerializer implements §&"a§
   {
      
      private static const ID:§&$2§ = new §&$2§(87);
      
      public function CheatDetectedBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return ID.value;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:CheatDetected = CheatDetected(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _temp_2:* = new ByteArray();
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUTF(_loc3_.sessionKey);
         _loc5_.writeShort(_loc3_.banType);
         _loc5_.writeUTF(_loc3_.banNote);
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return {};
      }
   }
}


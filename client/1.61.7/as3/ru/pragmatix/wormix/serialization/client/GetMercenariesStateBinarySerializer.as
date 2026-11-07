package ru.pragmatix.wormix.serialization.client
{
   import § !P§.§]z§;
   import § #m§.§;#^§;
   import § &5§.§=#P§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#5§.*;
   import §#P§.§`o§;
   import §%# §.*;
   import §'$j§.*;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §0%z§.*;
   import §0&F§.§0$_§;
   import §0&F§.§0%v§;
   import §2!-§.GameObjectDisposed;
   import §2#s§.*;
   import §5"J§.*;
   import §6"'§.§&"3§;
   import §8#o§.§1@§;
   import §9%W§.§8#p§;
   import §;!Z§.*;
   import §>%S§.§^!V§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@<§.*;
   import §^#[§.§&$2§;
   import §`%&§.§@&,§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetMercenariesState;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class GetMercenariesStateBinarySerializer implements §&"a§
   {
      
      public function GetMercenariesStateBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 126;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:GetMercenariesState = GetMercenariesState(param1);
         var _temp_1:* = new §^!V§();
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return new GetMercenariesState();
      }
   }
}


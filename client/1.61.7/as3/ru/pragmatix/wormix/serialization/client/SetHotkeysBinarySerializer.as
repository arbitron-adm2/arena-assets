package ru.pragmatix.wormix.serialization.client
{
   import §!$d§.§<$c§;
   import §#"V§.§<"4§;
   import §##y§.CollisionEvent;
   import §&"c§.§5$n§;
   import §+#P§.§]!E§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §2!-§.DamageEvent;
   import §3#T§.§;#Q§;
   import §4!!§.§'$V§;
   import §4f§.§-&§;
   import §8#<§.§!#^§;
   import §<%k§.§`!v§;
   import §=!p§.§1e§;
   import §>%S§.§^!V§;
   import §?#g§.§&"P§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §["3§.*;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§&#>§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.SetHotkeys;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class SetHotkeysBinarySerializer implements §&"a§
   {
      
      public function SetHotkeysBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 128;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:SetHotkeys = SetHotkeys(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         §!!"§.§[$k§(_loc5_,_loc3_.hotkeys);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return null;
      }
   }
}


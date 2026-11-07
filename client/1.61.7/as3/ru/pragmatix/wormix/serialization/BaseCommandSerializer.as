package ru.pragmatix.wormix.serialization
{
   import § "L§.§1%b§;
   import § #9§.§"$t§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §%&6§.§8!`§;
   import §&"c§.§5$n§;
   import §&#h§.§?B§;
   import §+$=§.§6#A§;
   import §+%S§.§-$s§;
   import §+%S§.§3$§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §0!§.§6#z§;
   import §0&F§.§0%v§;
   import §2!-§.NewUnitEvent;
   import §2!-§.WaterLevelChangedEvent;
   import §2#i§.§+%z§;
   import §3#T§.§;'§;
   import §3#T§.§^!P§;
   import §4$b§.§6!G§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §;!Z§.*;
   import §<$2§.§<%>§;
   import §=7§.§?%4§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$L§.§&$9§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`"p§.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class BaseCommandSerializer implements §&"a§
   {
      
      public function BaseCommandSerializer()
      {
         super();
      }
      
      protected function §?g§(param1:Object) : ByteArray
      {
         return new ByteArray();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:§^!V§ = new §^!V§();
         _loc3_.§@&I§(this.getCommandId());
         var _loc4_:ByteArray = this.§?g§(param1);
         _loc3_.§<!§(_loc4_.length);
         _loc3_.§2$t§(param2);
         param2.writeBytes(_loc4_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         return null;
      }
      
      public function getCommandId() : uint
      {
         return ServerCommands.ZERO;
      }
   }
}


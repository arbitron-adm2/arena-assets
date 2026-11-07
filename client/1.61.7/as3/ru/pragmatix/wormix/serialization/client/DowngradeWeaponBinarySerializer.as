package ru.pragmatix.wormix.serialization.client
{
   import § #k§.*;
   import § &5§.§=#P§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%$!§.§@!o§;
   import §'!Z§.§1"-§;
   import §+%S§.§+m§;
   import §+%S§.§0"G§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §1&-§.§4!s§;
   import §3#T§.§+&F§;
   import §3#T§.Boomerang;
   import §4!!§.§76§;
   import §4$b§.*;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?>§.§0!7§;
   import §@!i§.§;#L§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.DowngradeWeapon;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginErrorType;
   
   public class DowngradeWeaponBinarySerializer implements §&"a§
   {
      
      public function DowngradeWeaponBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 88;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:DowngradeWeapon = DowngradeWeapon(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeShort(_loc3_.recipeId);
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


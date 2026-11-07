package ru.pragmatix.wormix.serialization.clans.request.edit
{
   import § !8§.§9%+§;
   import §#P§.§`o§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §-%B§.*;
   import §0"L§.*;
   import §0%[§.§]2§;
   import §0&F§.§!!c§;
   import §2#s§.BankMenu;
   import §4!!§.§'$V§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=!V§.*;
   import §?#g§.*;
   import §?$L§.§&$9§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObjectContainer;
   import flash.geom.ColorTransform;
   import flash.net.SharedObject;
   import flash.text.AntiAliasType;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.edit.RenameClanRequest;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   import ru.pragmatix.wormix.utils.*;
   
   public class RenameClanRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function RenameClanRequestBinarySerializer()
      {
         super();
      }
      
      override protected function §?g§(param1:Object) : ByteArray
      {
         var _loc2_:RenameClanRequest = RenameClanRequest(param1);
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeUTF(_loc2_.name);
         _loc3_.writeBoolean(_loc2_.fromTreas);
         return _loc3_;
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.RENAME_CLAN_REQUEST;
      }
   }
}


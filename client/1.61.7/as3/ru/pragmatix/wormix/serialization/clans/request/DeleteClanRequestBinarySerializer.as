package ru.pragmatix.wormix.serialization.clans.request
{
   import §"!C§.§3#n§;
   import §#P§.§`o§;
   import §&#E§.§;"v§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §7$t§.§&!e§;
   import §=&!§.§<$Z§;
   import §?"[§.*;
   import §?#g§.§&"P§;
   import §?$7§.§!§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@<§.§+%]§;
   import §`#x§.§"$r§;
   import flash.display.MovieClip;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.request.DeleteClanRequest;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.BaseCommandSerializer;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class DeleteClanRequestBinarySerializer extends BaseCommandSerializer
   {
      
      public function DeleteClanRequestBinarySerializer()
      {
         super();
      }
      
      override protected function §?g§(param1:Object) : ByteArray
      {
         var _loc2_:DeleteClanRequest = DeleteClanRequest(param1);
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeInt(_loc2_.clanId);
         return _loc3_;
      }
      
      override public function getCommandId() : uint
      {
         return ClanMessages.DELETE_CLAN_REQUEST;
      }
   }
}


package ru.pragmatix.wormix.serialization.client
{
   import § !8§.§`!d§;
   import § $q§.§3U§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §65§.§`"C§;
   import §7$1§.§;$n§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §[" §.*;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.PumpReactionRates;
   import ru.pragmatix.wormix.messages.server.GetQuestProgressResult;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§#&>§;
   
   public class PumpReactionRatesBinarySerializer implements §&"a§
   {
      
      public function PumpReactionRatesBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 705;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:PumpReactionRates = PumpReactionRates(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         var _loc6_:uint = 0;
         var _loc7_:uint = _loc3_.friendIds.length;
         _loc5_.writeShort(_loc7_);
         _loc6_ = 0;
         while(_loc6_ < _loc7_)
         {
            _loc5_.writeUnsignedInt(_loc3_.friendIds[_loc6_]);
            _loc6_++;
         }
         _loc5_.writeUTF(_loc3_.sessionKey);
         §6&A§.§,&!§(_loc5_,§["u§.§'&I§);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:ByteArray = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable);
         var _loc4_:PumpReactionRates = new PumpReactionRates();
         var _loc5_:uint = 0;
         _loc4_.friendIds = new Array();
         var _loc6_:uint = uint(_loc3_.readShort());
         _loc5_ = 0;
         while(_loc5_ < _loc6_)
         {
            _loc4_.friendIds[_loc5_] = _loc3_.readUnsignedInt();
            _loc5_++;
         }
         _loc4_.sessionKey = _loc3_.readUTF();
         var _loc7_:Boolean = §6&A§.isSecure(_loc3_,§["u§.§'&I§);
         if(!_loc7_)
         {
            §%%w§.§7F§.§]">§(§0$N§.PROTOCOL_CHEATER);
            return null;
         }
         return _loc4_;
      }
   }
}


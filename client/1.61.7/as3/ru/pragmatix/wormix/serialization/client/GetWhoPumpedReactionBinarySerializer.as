package ru.pragmatix.wormix.serialization.client
{
   import § !8§.§`!d§;
   import § "L§.§`#r§;
   import §!$d§.§<$c§;
   import §"$+§.§@C§;
   import §#k§.§9$v§;
   import §%"1§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §4$b§.§6!G§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5"J§.*;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9%W§.§!"G§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §>%S§.§^!V§;
   import §?$L§.§&$9§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.TopClansMainRequest;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.client.GetWhoPumpedReaction;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class GetWhoPumpedReactionBinarySerializer implements §&"a§
   {
      
      public function GetWhoPumpedReactionBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 46;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:GetWhoPumpedReaction = GetWhoPumpedReaction(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeBoolean(_loc3_.todayOnly);
         _loc4_.§<!§(_loc5_.length);
         _loc4_.§2$t§(param2);
         param2.writeBytes(_loc5_);
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:GetWhoPumpedReaction = new GetWhoPumpedReaction();
         _loc3_.todayOnly = param1.readBoolean();
         return _loc3_;
      }
   }
}


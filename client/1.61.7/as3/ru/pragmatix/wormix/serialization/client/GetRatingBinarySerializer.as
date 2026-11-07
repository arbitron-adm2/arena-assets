package ru.pragmatix.wormix.serialization.client
{
   import §"$+§.§^$`§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%# §.§@a§;
   import §%&6§.§2$v§;
   import §%L§.§%%w§;
   import §+%S§.*;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§^"5§;
   import §2#x§.*;
   import §2B§.§#&E§;
   import §3#a§.§-#M§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §;#O§.§+%7§;
   import §<%E§.§,$2§;
   import §<%E§.§6#`§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §@!N§.§2"e§;
   import §@!i§.§<!9§;
   import §["3§.*;
   import §^#[§.§&$2§;
   import com.adobe.serialization.json.JSONEncoder;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetRating;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   
   public class GetRatingBinarySerializer implements §&"a§
   {
      
      public function GetRatingBinarySerializer()
      {
         super();
      }
      
      public function getCommandId() : uint
      {
         return 19;
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
         var _loc3_:GetRating = GetRating(param1);
         var _loc4_:§^!V§ = new §^!V§();
         _loc4_.§@&I§(this.getCommandId());
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeShort(_loc3_.ratingType);
         _loc5_.writeShort(_loc3_.battleWager);
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


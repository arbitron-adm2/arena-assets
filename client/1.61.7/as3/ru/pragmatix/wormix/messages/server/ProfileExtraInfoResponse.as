package ru.pragmatix.wormix.messages.server
{
   import §'!Z§.§2!H§;
   import §+%S§.§["4§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §65§.§`"C§;
   import §7$t§.§&!e§;
   import §7$t§.§^$E§;
   import §>%S§.§^!V§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.TextFieldType;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.client.GetMercenariesReward;
   import ru.pragmatix.wormix.messages.client.GetQuestReward;
   import ru.pragmatix.wormix.messages.structures.UnluckyCraftCount;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class ProfileExtraInfoResponse
   {
      
      public var profileId:uint;
      
      public var races:int;
      
      public var skins:Array = [];
      
      public var reagents:Vector.<int> = new Vector.<int>(0);
      
      public var unluckyCraftCounts:Vector.<UnluckyCraftCount> = new Vector.<UnluckyCraftCount>(0);
      
      public var backpackConfs:Array = [];
      
      public var activeBackpackConf:int;
      
      public function ProfileExtraInfoResponse()
      {
         super();
      }
      
      public function toString() : String
      {
         return "ProfileExtraInfoResponse{" + "profileId=" + this.profileId + ";races=" + this.races + ";skins=" + this.skins + ";reagents=" + this.reagents + ";unluckyCraftCounts=" + this.unluckyCraftCounts + ";activeBackpackConf=" + this.activeBackpackConf + ";backpackConfs=" + this.backpackConfs + "}";
      }
   }
}


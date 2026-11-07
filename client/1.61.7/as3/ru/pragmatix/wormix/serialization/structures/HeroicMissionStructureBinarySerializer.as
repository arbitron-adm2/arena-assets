package ru.pragmatix.wormix.serialization.structures
{
   import §!L§.§+"'§;
   import §"%H§.§6$3§;
   import §#k§.§-#S§;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&x§.§]&C§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §0%[§.§6!?§;
   import §0%z§.*;
   import §7"Q§.*;
   import §7$t§.*;
   import §=$#§.*;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.errors.IllegalOperationError;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetQuestProgress;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.BundleStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§>!n§;
   
   public class HeroicMissionStructureBinarySerializer implements §@#&§
   {
      
      public function HeroicMissionStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:ByteArray = param1 as ByteArray;
         var _loc4_:HeroicMissionStructure = new HeroicMissionStructure();
         §!!"§.§[L§(_loc3_,_loc4_.bossIds);
         _loc4_.mapId = _loc3_.readUnsignedInt();
         return _loc4_;
      }
   }
}


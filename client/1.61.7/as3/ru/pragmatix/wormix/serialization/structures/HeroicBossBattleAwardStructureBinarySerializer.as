package ru.pragmatix.wormix.serialization.structures
{
   import §"$+§.§@C§;
   import §"%H§.§`"w§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §+$=§.§+&§;
   import §+$=§.§6#A§;
   import §,"v§.§@#&§;
   import §-G§.*;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §6_§.§&$6§;
   import §<%E§.§=$u§;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §?$L§.§&$9§;
   import §@!N§.§&#Z§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.server.MercenariesStateResponse;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicBossBattleAwardStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class HeroicBossBattleAwardStructureBinarySerializer implements §@#&§
   {
      
      public function HeroicBossBattleAwardStructureBinarySerializer()
      {
         super();
      }
      
      public function serializeStructure(param1:Object, param2:IDataOutput, param3:Object) : void
      {
      }
      
      public function deserializeStructure(param1:IDataInput, param2:Object) : Object
      {
         var _loc3_:ByteArray = param1 as ByteArray;
         var _loc4_:HeroicBossBattleAwardStructure = new HeroicBossBattleAwardStructure();
         _loc4_.level = _loc3_.readInt();
         _loc3_.readShort();
         _loc4_.winAward = BossBattleWinAwardStructure(§<!h§.§@%$§(BossBattleWinAwardStructure).deserializeStructure(_loc3_,null));
         §!!"§.§#'§(_loc3_,_loc4_.winReagentsAward);
         return _loc4_;
      }
   }
}


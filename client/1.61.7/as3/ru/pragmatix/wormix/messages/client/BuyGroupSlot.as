package ru.pragmatix.wormix.messages.client
{
   import §%"1§.§=#?§;
   import §%"Z§.§+$A§;
   import §&#E§.§4##§;
   import §'$j§.QuestGiftItem;
   import §2"L§.§^$y§;
   import §=$#§.*;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §^"y§.§]#i§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0$c§;
   
   public class BuyGroupSlot
   {
      
      public static const REAL_MONEY:int = 0;
      
      public static const MONEY:int = 1;
      
      public var moneyType:int;
      
      public var newSlotIndex:int;
      
      public function BuyGroupSlot(param1:int = 0, param2:int = 0)
      {
         super();
         this.newSlotIndex = param1;
         this.moneyType = param2;
      }
   }
}


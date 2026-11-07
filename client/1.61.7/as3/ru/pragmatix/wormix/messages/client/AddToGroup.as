package ru.pragmatix.wormix.messages.client
{
   import § m§.§9!^§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §#P§.§`o§;
   import §&"c§.§5$n§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §1#o§.§-#d§;
   import §1%H§.§!"=§;
   import §2#V§.§-#U§;
   import §7"Q§.§0$L§;
   import §9"-§.§?!s§;
   import §?"[§.*;
   import §@<§.§+%]§;
   import §^#[§.§?"&§;
   import §`#x§.*;
   import §`v§.§2&H§;
   import config.achievements.§^t§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getQualifiedClassName;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.structures.BackpackConfStructure;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class AddToGroup
   {
      
      public static const REAL_MONEY:int = 0;
      
      public static const MONEY:int = 1;
      
      public var profileId:int;
      
      public var moneyType:int;
      
      public var teamMemberType:int;
      
      public var replaceableId:int;
      
      public var active:Boolean;
      
      public function AddToGroup(param1:uint = 0, param2:int = 0, param3:int = 1, param4:int = 0, param5:Boolean = true)
      {
         super();
         this.profileId = param1;
         this.moneyType = param2;
         this.teamMemberType = param3;
         this.replaceableId = param4;
         this.active = param5;
      }
      
      public function toString() : String
      {
         return "AddToGroup{" + "result=" + this.profileId + ",moneyType=" + this.moneyType + ",teamMemberType=" + this.teamMemberType + ",replaceableId=" + this.replaceableId + ",active=" + this.active + "}";
      }
   }
}


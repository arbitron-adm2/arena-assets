package §<"L§
{
   import § !P§.§9%Z§;
   import §!L§.§+"'§;
   import §"%H§.§1! §;
   import §##y§.CollisionEvent;
   import §+$=§.§6#A§;
   import §+%o§.*;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §1#p§.§"Z§;
   import §1#p§.Team;
   import §2o§.§4§;
   import §2o§.§]#@§;
   import §4!!§.§76§;
   import §4'§.§`"q§;
   import §8#a§.ShopMenu;
   import §<$q§.§?!d§;
   import §@!N§.§2"e§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import config.achievements.§!$L§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanEmblemRequest;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanJoinRatingRequest;
   import ru.pragmatix.wormix.messages.clans.request.edit.CloseExitClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.edit.IncreaseLevelClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.edit.RenameClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanJoinRatingResponse;
   import ru.pragmatix.wormix.messages.clans.response.edit.CloseExitClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.edit.IncreaseLevelClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.edit.RenameClanResponse;
   import ru.pragmatix.wormix.social.Social;
   
   public class §>A§
   {
      
      private var mainController:§##-§;
      
      public function §>A§(param1:§##-§)
      {
         super();
         this.mainController = param1;
      }
      
      public function §;#U§(param1:int, param2:§`"q§, param3:Function, param4:Boolean = false) : void
      {
         this.mainController.§=$t§(new IncreaseLevelClanRequest(param1,param4),IncreaseLevelClanResponse,this.§["b§,param3,true,param2);
      }
      
      private function §["b§(param1:Object, param2:Function) : void
      {
         var _loc3_:IncreaseLevelClanResponse = IncreaseLevelClanResponse(param1);
         if(_loc3_.serviceResult == ClanServiceResult.ERR_INVALID_ARGUMENT.code)
         {
            §,#W§.§'!+§(§0$N§.TITLE_ERROR,§0$N§.§%! §("REPEATED_REQUEST_ON_NEW_LEVEL"),§,#W§.§6!m§).show();
         }
         else
         {
            §]#i§.userClan.level = _loc3_.level;
            param2(_loc3_.serviceResult == ClanServiceResult.OK.code);
            Social.§!g§.§`#`§();
         }
      }
      
      public function §8#S§(param1:String, param2:§`"q§, param3:Function, param4:Boolean = false) : void
      {
         var _loc5_:Function = §1%"§.§]$<§(this.§4<§,this,[param1,param4],true);
         this.mainController.§=$t§(new RenameClanRequest(param1,param4),RenameClanResponse,_loc5_,param3,true,param2);
      }
      
      private function §4<§(param1:Object, param2:Function, param3:String, param4:Boolean = false) : void
      {
         var _loc6_:String = null;
         var _loc5_:RenameClanResponse = RenameClanResponse(param1);
         switch(_loc5_.serviceResult)
         {
            case ClanServiceResult.OK.code:
               §]#i§.userClan.name = param3;
               break;
            case ClanServiceResult.ERR_CLAN_NAME_EXISTS.code:
               _loc6_ = §0$N§.ERR_CLAN_NAME_EXISTS;
               break;
            case ClanServiceResult.ERR_INVALID_ARGUMENT.code:
               _loc6_ = §0$N§.ERR_INVALID_ARGUMENT;
               break;
            default:
               _loc6_ = ClanServiceResult.getResultByCode(_loc5_.serviceResult).name;
         }
         if(_loc6_)
         {
            §,#W§.§'!+§(§0$N§.TITLE_ERROR,_loc6_).show();
         }
         param2(_loc5_.serviceResult == ClanServiceResult.OK.code);
      }
      
      public function §2%f§(param1:String, param2:§`"q§, param3:Function, param4:Boolean = false) : void
      {
         var _loc5_:Function = §1%"§.§]$<§(this.§^$;§,this,[param1,param4],true);
         this.mainController.§=$t§(new ChangeClanDescriptionRequest(param1,param4),ChangeClanDescriptionResponse,_loc5_,param3,true,param2);
      }
      
      private function §^$;§(param1:Object, param2:Function, param3:String, param4:Boolean = false) : void
      {
         var _loc5_:ChangeClanDescriptionResponse = ChangeClanDescriptionResponse(param1);
         if(_loc5_.serviceResult == ClanServiceResult.OK.code)
         {
            §]#i§.userClan.clanDescription = param3;
         }
         param2(_loc5_.serviceResult == ClanServiceResult.OK.code);
      }
      
      public function §,"d§(param1:Vector.<uint>, param2:§`"q§, param3:Function, param4:Boolean = false) : void
      {
         var _loc5_:Function = §1%"§.§]$<§(this.§-"]§,this,[param1,param4],true);
         this.mainController.§=$t§(new ChangeClanEmblemRequest(param1,param4),ChangeClanEmblemResponse,_loc5_,param3,true,param2);
      }
      
      private function §-"]§(param1:Object, param2:Function, param3:Vector.<uint>, param4:Boolean = false) : void
      {
         var _loc5_:ChangeClanEmblemResponse = ChangeClanEmblemResponse(param1);
         if(_loc5_.serviceResult == ClanServiceResult.OK.code)
         {
            §]#i§.userClan.emblem = param3;
         }
         param2(_loc5_.serviceResult == ClanServiceResult.OK.code);
      }
      
      public function §9$"§(param1:int, param2:Function) : void
      {
         var _loc3_:Function = §1%"§.§]$<§(this.§[$r§,this,[param1],true);
         this.mainController.§=$t§(new ChangeClanJoinRatingRequest(param1),ChangeClanJoinRatingResponse,_loc3_,param2,true);
      }
      
      private function §[$r§(param1:Object, param2:Function, param3:int) : void
      {
         var _loc4_:ChangeClanJoinRatingResponse = ChangeClanJoinRatingResponse(param1);
         if(_loc4_.serviceResult == ClanServiceResult.OK.code)
         {
            §]#i§.userClan.joinRating = param3;
            if(param3 == 0 && param2 != null)
            {
               Social.§!g§.§,t§();
            }
         }
      }
      
      public function §=!M§(param1:Boolean, param2:Function) : void
      {
         var _loc3_:Function = §1%"§.§]$<§(this.§1"o§,this);
         this.mainController.§=$t§(new CloseExitClanRequest(param1),CloseExitClanResponse,_loc3_,param2,true);
      }
      
      private function §1"o§(param1:Object, param2:Function) : void
      {
         var _loc3_:CloseExitClanResponse = CloseExitClanResponse(param1);
         if(_loc3_.serviceResult == ClanServiceResult.OK.code)
         {
            §]#i§.userClan.isExitClosed = !§]#i§.userClan.isExitClosed;
            param2();
         }
      }
   }
}


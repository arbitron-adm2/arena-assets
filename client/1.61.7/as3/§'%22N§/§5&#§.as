package §'"N§
{
   import §!$D§.§2$^§;
   import §#k§.§9$v§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §0%[§.§""n§;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §2"L§.§!!<§;
   import §4'§.§`"q§;
   import §@!i§.§5&4§;
   import §[%'§.§<"G§;
   import avmplus.getQualifiedClassName;
   import config.achievements.§!$L§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.AddToGroup;
   import ru.pragmatix.wormix.messages.client.BuyBattle;
   import ru.pragmatix.wormix.messages.client.BuyColiseumTicket;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.messages.client.BuyRenameChar;
   import ru.pragmatix.wormix.messages.client.RegenerateCandidates;
   import ru.pragmatix.wormix.messages.client.ResetParameters;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.server.BuyRenameCharResult;
   import ru.pragmatix.wormix.messages.server.ColiseumError;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.messages.server.ResetParametersResult;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §5&#§
   {
      
      private var §[!-§:§`"q§;
      
      private var §-"8§:Function;
      
      public function §5&#§()
      {
         super();
         §%%w§.§##$§(BuyBattleResult,this.§"!d§);
         §%%w§.§##$§(ResetParametersResult,this.§^"Z§);
      }
      
      private function buy(param1:§`"q§, param2:Object, param3:Function) : Boolean
      {
         if(§4! §.§!%i§(param1))
         {
            this.§[!-§ = param1;
            this.§-"8§ = param3;
            §[&G§.§3$5§.show();
            §%%w§.§,U§(param2);
            return true;
         }
         param3(false);
         return false;
      }
      
      private function §,e§(param1:int, param2:uint, param3:uint, param4:Boolean = true) : void
      {
         var _loc5_:Object = null;
         §[&G§.§3$5§.hide();
         if(this.§-"8§ != null)
         {
            this.§-"8§(param1 == param2);
            this.§-"8§ = null;
         }
         if(param1 == param2)
         {
            if(this.§[!-§ != null)
            {
               Application.userProfile.§2Z§(-this.§[!-§.getValue(),this.§[!-§.moneyType);
               Application.§5!>§.§8$w§();
               if(this.§[!-§.moneyType == §+$A§.REAL && this.§[!-§.price.realPrice > 0)
               {
                  §8"%§.§@1§.increase([§!$L§.§`&0§],[this.§[!-§.price.realPrice]);
               }
               else if(this.§[!-§.moneyType == §+$A§.INGAME && this.§[!-§.price.ingamePrice > 0)
               {
                  §8"%§.§@1§.increase([§!$L§.§0"K§],[this.§[!-§.price.ingamePrice]);
               }
               this.§[!-§ = null;
            }
         }
         else if(param4)
         {
            _loc5_ = {};
            _loc5_[param3] = §0$N§.ERROR_NOT_ENOUGH_MONEY;
            §!!<§.§1#3§(§0$N§.TITLE_BUY,param1,_loc5_,§0$N§.ERROR_SAVING);
         }
      }
      
      public function §5%&§(param1:§+$A§, param2:Function) : void
      {
         this.buy(new §`"q§(param1,§5&4§.§-!l§),new BuyBattle(param1.value,false),param2);
      }
      
      public function buyFiveBattles(param1:§+$A§, param2:Function) : void
      {
         this.buy(new §`"q§(param1,§5&4§.§#%A§),new BuyBattle(param1.value,true),param2);
      }
      
      private function §"!d§(param1:§9$v§) : void
      {
         this.§,e§(BuyBattleResult(param1.message).result,BuyBattleResult.SUCCESS,BuyBattleResult.NOT_ENOUGH_MONEY);
      }
      
      public function §7"T§(param1:§+$A§, param2:Function) : void
      {
         this.buy(new §`"q§(param1,§5&4§.§%"#§()),new ResetParameters(param1.value),param2);
      }
      
      private function §^"Z§(param1:§9$v§) : void
      {
         this.§,e§(ResetParametersResult(param1.message).result,ResetParametersResult.SUCCESS,ResetParametersResult.NOT_ENOUGH_MONEY);
      }
      
      public function §4L§(param1:UserProfile, param2:§+$A§, param3:uint, param4:uint, param5:int, param6:Boolean, param7:Function) : void
      {
         this.buy(new §`"q§(param2,new §'$2§(param3,param3)),new AddToGroup(param1.getId(),param2.value,param4,param5,param6),param7);
         §""n§.single(§%%w§.§7F§,getQualifiedClassName(AddToGroupResult),this.§1#U§,this,[param4],true);
      }
      
      public function §;#,§(param1:UserProfile, param2:§+$A§, param3:uint, param4:uint, param5:Boolean, param6:Function) : void
      {
         if(this.buy(new §`"q§(param2,new §'$2§(param3,param3)),new AddToGroup(param1.getId(),param2.value,param4,0,param5),param6))
         {
            §""n§.single(§%%w§.§7F§,getQualifiedClassName(AddToGroupResult),this.§1#U§,this,[param4],true);
         }
      }
      
      private function §1#U§(param1:§9$v§, param2:int) : void
      {
         var _loc4_:String = null;
         var _loc3_:int = AddToGroupResult(param1.message).result;
         if(param2 == §2=§.§"!$§ && _loc3_ != AddToGroupResult.SUCCESS)
         {
            this.§,e§(_loc3_,AddToGroupResult.SUCCESS,AddToGroupResult.NOT_ENOUGH_MONEY,false);
            _loc4_ = §0$N§.ERROR_SAVING + " " + §<"G§.§%! §("CLAN_MATE_ADD_ERROR");
            §!!<§.§1#3§(§0$N§.TITLE_BUY,_loc3_,{},_loc4_);
         }
         else
         {
            this.§,e§(_loc3_,AddToGroupResult.SUCCESS,AddToGroupResult.NOT_ENOUGH_MONEY);
         }
      }
      
      public function §6$_§(param1:§+$A§, param2:§'$2§, param3:Function) : void
      {
         if(this.buy(new §`"q§(param1,param2),new BuyColiseumTicket(),param3))
         {
            if(!§%%w§.§`$8§(ColiseumStateResponse))
            {
               §%%w§.§##$§(ColiseumStateResponse,this.§>#;§);
            }
         }
      }
      
      private function §>#;§(param1:§9$v§) : void
      {
         §%%w§.§-"j§(ColiseumStateResponse,this.§>#;§);
         this.§,e§(ColiseumStateResponse(param1.message).error,ColiseumError.NONE,BuyBattleResult.NOT_ENOUGH_MONEY);
         §8"%§.§%$r§.§<"`§(param1);
      }
      
      public function §?%!§(param1:Boolean, param2:§'$2§, param3:Function) : void
      {
         if(this.buy(new §`"q§(§+$A§.INGAME,param2),new RegenerateCandidates(param1),param3))
         {
            if(!§%%w§.§`$8§(ColiseumStateResponse))
            {
               §%%w§.§##$§(ColiseumStateResponse,this.§6$l§);
            }
         }
      }
      
      private function §6$l§(param1:§9$v§) : void
      {
         §%%w§.§-"j§(ColiseumStateResponse,this.§6$l§);
         this.§,e§(ColiseumStateResponse(param1.message).error,ColiseumError.NONE,BuyBattleResult.NOT_ENOUGH_MONEY);
         §8"%§.§%$r§.§<"`§(param1);
      }
      
      public function §@!x§(param1:int, param2:String, param3:§+$A§, param4:Function) : void
      {
         var _loc5_:§'$2§ = §2$^§.isVipExist() ? §5&4§.§">§ : §5&4§.§'%1§;
         if(this.buy(new §`"q§(param3,_loc5_),new BuyRenameChar(param1,param2,param3.value),param4))
         {
            §""n§.single(§%%w§.§7F§,getQualifiedClassName(BuyRenameCharResult),this.§4$I§,this);
         }
      }
      
      private function §4$I§(param1:§9$v§) : void
      {
         var _loc2_:BuyRenameCharResult = null;
         var _loc4_:String = null;
         var _loc5_:Vector.<UserProfile> = null;
         var _loc6_:UserProfile = null;
         _loc2_ = BuyRenameCharResult(param1.message);
         var _loc3_:int = _loc2_.result;
         if(_loc3_ != BuyRenameCharResult.SUCCESS)
         {
            this.§,e§(_loc3_,BuyRenameCharResult.SUCCESS,BuyRenameCharResult.NOT_ENOUGH_MONEY,false);
            _loc4_ = §0$N§.ERROR_SAVING + " " + §0$N§.ERROR_SERVER;
            §!!<§.§1#3§(§0$N§.TITLE_BUY,_loc3_,{},_loc4_);
         }
         else
         {
            this.§,e§(_loc3_,BuyRenameCharResult.SUCCESS,BuyRenameCharResult.NOT_ENOUGH_MONEY);
            if(Application.userProfile.getId() == _loc2_.teamMemberId)
            {
               Application.userProfile.§-"§(_loc2_.name,true);
               Application.userProfile.§2!§(_loc2_.name,true);
            }
            _loc5_ = Application.userProfile.§"]§();
            for each(_loc6_ in _loc5_)
            {
               if(_loc6_.getId() == _loc2_.teamMemberId)
               {
                  _loc6_.§-"§(_loc2_.name,true);
                  _loc6_.§2!§(_loc2_.name,true);
                  break;
               }
            }
         }
      }
      
      public function §%&-§(param1:int, param2:§+$A§, param3:Function) : void
      {
         if(this.buy(new §`"q§(param2,§5&4§.§;"T§[int(param1 - 1)]),new BuyGroupSlot(param1,param2.value),param3))
         {
            §""n§.single(§%%w§.§7F§,getQualifiedClassName(BuyGroupSlotResult),this.§`$^§,this);
         }
      }
      
      private function §`$^§(param1:§9$v§) : void
      {
         var _loc2_:BuyGroupSlotResult = null;
         var _loc3_:int = 0;
         var _loc5_:String = null;
         _loc2_ = BuyGroupSlotResult(param1.message);
         _loc3_ = _loc2_.result;
         var _loc4_:Boolean = _loc3_ == BuyGroupSlotResult.SUCCESS;
         this.§,e§(_loc3_,BuyGroupSlotResult.SUCCESS,BuyGroupSlotResult.NOT_ENOUGH_MONEY,false);
         if(!_loc4_)
         {
            _loc5_ = §0$N§.ERROR_SAVING + " " + §0$N§.ERROR_SERVER;
            §!!<§.§1#3§(§0$N§.TITLE_BUY,_loc3_,{},_loc5_);
         }
         else
         {
            Application.userProfile.§,$7§(_loc2_.newSlotsIndex);
            Application.§5!>§.§^P§.§6X§();
         }
      }
   }
}


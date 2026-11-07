package ru.pragmatix.wormix.controller
{
   import § !P§.§<#q§;
   import §#k§.§9$v§;
   import §%# §.§##U§;
   import §%L§.§%%w§;
   import §&%X§.§5F§;
   import §-"N§.§+#R§;
   import §-@§.§0"e§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0&F§.§0$_§;
   import §6",§.§[%w§;
   import §@!N§.§2"e§;
   import config.achievements.§!$L§;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.server.IncreaseAchievementResult;
   import ru.pragmatix.wormix.messages.server.ShowSystemMessage;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.social.Social;
   
   public class §2!7§
   {
      
      private static const §!#Q§:String = "SystemMessage";
      
      private static const log:§&`§ = new §&`§(§2!7§);
      
      private var §?#N§:Vector.<AwardGranted> = new Vector.<AwardGranted>(0);
      
      public function §2!7§()
      {
         super();
         §%%w§.§##$§(ShowSystemMessage,this.§+%W§);
         §%%w§.§##$§(AwardGranted,this.§<!"§);
         §%%w§.§##$§(IncreaseAchievementResult,this.§!!u§);
      }
      
      public static function §-"B§(param1:§]+§) : void
      {
         Social.§!g§.§!x§(param1);
      }
      
      private static function §3%I§(param1:AwardGranted) : void
      {
         param1.bonus = §5F§.§'f§(param1.awards);
         §2"e§.§5%A§(param1.bonus,param1.attach);
         if(§8"%§.§?!W§.inBattle)
         {
            §8"%§.§?!W§.§!#S§(param1.bonus.§8%T§);
         }
         else
         {
            §##U§.§"X§(param1.bonus,null,false).show();
         }
      }
      
      private function §+%W§(param1:§9$v§) : void
      {
         var _loc3_:§,#W§ = null;
         var _loc2_:ShowSystemMessage = ShowSystemMessage(param1.message);
         if(_loc2_.msg.indexOf("serverTime") == -1)
         {
            _loc3_ = new §,#W§(§0$N§.TITLE_SERVER_MSG,_loc2_.msg,§,#W§.§6!m§);
            _loc3_.show();
         }
         else
         {
            §8"%§.§!"F§ = uint(_loc2_.msg.split(" ")[1]);
         }
      }
      
      public function §<!"§(param1:§9$v§) : void
      {
         var _loc2_:AwardGranted = null;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         _loc2_ = AwardGranted(param1.message);
         switch(_loc2_.awardType)
         {
            case §8"_§.§;!'§.getId():
               this.§?#N§.push(_loc2_);
               if(this.§?#N§.length == 1)
               {
                  this.§7%3§();
               }
               break;
            case §8"_§.ACHIEVE.getId():
               _loc3_ = _loc2_.attach == "";
               _loc4_ = _loc2_.attach == "1";
               if(_loc3_)
               {
               }
               break;
            case §8"_§.§`#T§.getId():
               §3%I§(_loc2_);
               break;
            case §8"_§.§%$M§.getId():
               if(Boolean(_loc2_.attach) && §8"%§.§1#e§.§+'§(_loc2_.attach))
               {
                  if(§8"%§.§?!W§.inBattle)
                  {
                     §8"%§.§?!W§.§!#S§(§0$N§.REFER_BONUS_AVAILABLE);
                  }
                  Application.§5!>§.§1$i§.mainInterface.update();
               }
         }
      }
      
      public function §7%3§() : void
      {
         var _loc1_:AwardGranted = null;
         var _loc3_:Function = null;
         _loc1_ = this.§?#N§[0];
         var _loc2_:int = GenericAwardStructure(_loc1_.awards[0]).itemId;
         _loc1_.bonus = new §]+§();
         _loc1_.bonus.items[_loc2_] = 1;
         §2"e§.§>%K§(_loc1_.bonus,_loc1_.attach);
         if(§8"%§.§?!W§.inBattle)
         {
            §8"%§.§?!W§.§!#S§(_loc1_.bonus.§8%T§);
            _loc3_ = §1%"§.§]$<§(this.§>%u§,this,[_loc1_]);
            §""n§.single(§8"%§.§?!W§,§+#R§.§7%^§,_loc3_);
         }
         else
         {
            this.§>%u§(_loc1_);
         }
      }
      
      private function §>%u§(param1:AwardGranted) : void
      {
         var message:AwardGranted = param1;
         var window:§##U§ = §##U§.§"X§(message.bonus,§-"B§);
         window.addEventListener(§[%w§.WINDOW_CLOSE,function(param1:Event):void
         {
            §0"e§.§`"T§(message.bonus.items,message.bonus.§2&4§);
            §?#N§.splice(0,1);
            if(§?#N§.length > 0)
            {
               §7%3§();
            }
         });
         window.show();
      }
      
      private function §!!u§(param1:§9$v§) : void
      {
         var recs:§<#q§;
         var cmd:IncreaseAchievementResult = null;
         var newValues:Array = null;
         var threshAchievId:uint = 0;
         var i:int = 0;
         var n:int = 0;
         var j:int = 0;
         var m:int = 0;
         var newValueIndex:int = 0;
         var h:int = 0;
         var o:int = 0;
         var event:§9$v§ = param1;
         cmd = IncreaseAchievementResult(event.message);
         var isSeasonal:Boolean = cmd.timeSequence == 0;
         var isServerCounted:Boolean = cmd.timeSequence == 1;
         if(!isSeasonal && !isServerCounted)
         {
            return;
         }
         recs = §8"%§.§@1§.§]#a§();
         if(isSeasonal)
         {
            i = 0;
            n = int(cmd.achievementsIndex.length);
            while(i < n)
            {
               recs.§?l§(§!$L§.§`x§ + cmd.achievementsIndex[i],cmd.achievementsValues[i]);
               i++;
            }
         }
         else
         {
            j = 0;
            m = int(cmd.achievementsIndex.length);
            while(j < m)
            {
               if(§!$L§.§@"u§(cmd.achievementsIndex[j]))
               {
                  recs.§?l§(cmd.achievementsIndex[j],cmd.achievementsValues[j]);
               }
               j++;
            }
         }
         §8"%§.§@1§.dispatchEvent(new §0$_§(recs));
         if(cmd.thresholdAchievmensIndex.length == 0)
         {
            return;
         }
         newValues = [];
         for each(threshAchievId in cmd.thresholdAchievmensIndex)
         {
            newValueIndex = cmd.achievementsIndex.indexOf(threshAchievId);
            if(isSeasonal || §!$L§.§@"u§(threshAchievId))
            {
               newValues.push(newValueIndex != -1 ? cmd.achievementsValues[newValueIndex] : 0);
            }
         }
         if(isSeasonal)
         {
            h = 0;
            o = int(cmd.thresholdAchievmensIndex.length);
            while(h < o)
            {
               cmd.thresholdAchievmensIndex[h] += §!$L§.§`x§;
               h++;
            }
         }
         §1%"§.delay(function delayOnIncreaseAchievementResult():void
         {
            §8"%§.§@1§.§4%`§(cmd.thresholdAchievmensIndex,cmd.thresholdAchievmensOldValues,newValues);
         },this,500);
      }
   }
}


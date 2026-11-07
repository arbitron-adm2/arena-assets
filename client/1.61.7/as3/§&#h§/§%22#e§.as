package §&#h§
{
   import §"!C§.§"#T§;
   import §"!C§.§3#n§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$2§.§;#T§;
   import §+$=§.§6#A§;
   import §0!Y§.§#!Z§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §0&F§.§4$T§;
   import §2#W§.PvpChestBox;
   import §6"'§.§>"V§;
   import §6",§.§[%w§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §9%W§.§`"i§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§<$t§;
   import §=&!§.§]$d§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@<§.§+%]§;
   import §[$<§.§;%S§;
   import §^#[§.§&$2§;
   import §`%&§.§`§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.OperationDailyQuest;
   import ru.pragmatix.wormix.messages.client.PutQuestTaskProgress;
   import ru.pragmatix.wormix.messages.client.ReplaceQuestTask;
   import ru.pragmatix.wormix.messages.server.ReplaceQuestTaskResponse;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §"#e§
   {
      
      private static const IDLE:String = "IDLE";
      
      private static const PARSE:String = "PARSE";
      
      private static const DAY_GOES_ON:String = "DAY_GOES_ON";
      
      private static const DAY_OUT:String = "DAY_OUT";
      
      private static const REWARD:String = "REWARD";
      
      private var state:String = "IDLE";
      
      private var §`#J§:§;#T§;
      
      private var §@b§:§&N§;
      
      private var §%!Y§:Timer;
      
      private var §!y§:int;
      
      private var §-#Z§:Boolean;
      
      public function §"#e§()
      {
         super();
      }
      
      public function §=!;§() : void
      {
         if(this.§@b§)
         {
            this.§^%o§().show();
         }
         else
         {
            §,#W§.§[#r§(§0$N§.TITLE_ERROR,§0$N§.DAILY_TASKS_ERROR_LOAD);
         }
      }
      
      public function §^%o§() : §;#T§
      {
         if(!this.§`#J§)
         {
            this.§`#J§ = new §;#T§();
         }
         return this.§`#J§;
      }
      
      private function § #V§() : void
      {
         if(this.§`#J§)
         {
            if(this.§`#J§.isShown())
            {
               this.§`#J§.hide();
            }
            this.§`#J§.§4&E§();
            this.§`#J§.destroy();
            this.§`#J§ = null;
         }
      }
      
      public function progressParse(param1:String) : void
      {
         var isNewQuestWeek:Boolean;
         var data:Object = null;
         var newRec:§&N§ = null;
         var isChangeDay:Boolean = false;
         var isQuestRestarted:Boolean = false;
         var activeTasksCountBefore:int = 0;
         var taskValues:Object = null;
         var progress:String = param1;
         if(!§,! §.§+!I§())
         {
            return;
         }
         this.setState(PARSE,"progressParse");
         try
         {
            data = JSON.parse(progress);
         }
         catch(e:Error)
         {
            data = {};
         }
         if(data)
         {
            newRec = new §&N§(data);
            isChangeDay = !this.§@b§ || this.§@b§.day != newRec.day;
            isQuestRestarted = !this.§@b§ || this.§@b§.start != newRec.start;
            activeTasksCountBefore = this.§@b§ ? int(this.§@b§.§4$7§().length) : 0;
            if(!this.§%!Y§)
            {
               this.§%!Y§ = new Timer(§0#2§.§9$f§);
               this.§%!Y§.addEventListener(TimerEvent.TIMER,this.§<"1§);
            }
            if(isChangeDay || isQuestRestarted)
            {
               if(Boolean(this.§@b§) && this.§@b§.tasks.length > 0)
               {
                  this.§@b§.§2%`§();
               }
            }
            for each(taskValues in data.dayTasks)
            {
               newRec.§ U§(taskValues);
            }
            if(activeTasksCountBefore > 0 && newRec.§4$7§().length == 0)
            {
               if(Application.instance.§#&7§())
               {
                  §,#W§.§[#r§("[Тестовое сообщение]","Получен пустой список заданий");
               }
               if(Boolean(this.§`#J§) && this.§`#J§.isShown())
               {
                  this.§`#J§.§4&E§();
               }
            }
         }
         isNewQuestWeek = this.§@b§ && newRec && newRec.day == 1 && this.§@b§.start != newRec.start;
         this.§@b§ = newRec;
         if(newRec)
         {
            if(newRec.§"$Q§ > 0)
            {
               this.§!y§ = newRec.§"$Q§;
               if(!this.§%!Y§.running)
               {
                  this.§%!Y§.start();
               }
               this.setState(DAY_GOES_ON,"progressParse");
            }
            else
            {
               if(this.§%!Y§.running)
               {
                  this.setState(IDLE,"progressParse");
                  this.§%!Y§.stop();
               }
               this.checkDayOut();
            }
         }
         if(Boolean(this.§`#J§) && this.§`#J§.isShown())
         {
            if(Boolean(newRec) && Boolean(newRec.§"$Q§))
            {
               if(isQuestRestarted)
               {
                  this.§ #V§();
                  this.§=!;§();
               }
               else
               {
                  this.§`#J§.update();
               }
            }
            else
            {
               this.§`#J§.hide();
            }
         }
         if(isNewQuestWeek)
         {
            if(§8"%§.§?!W§.inBattle)
            {
               §8"%§.§?!W§.§!#S§(§0$N§.TITLE_CONGRATULATE + " " + §0$N§.DAILY_TASKS_STARTED);
               §""n§.single(Application.§5!>§,§4$T§.SHOW_MAIN_MENU,this.§&#0§);
            }
            else
            {
               this.§&#0§();
            }
         }
      }
      
      private function setState(param1:String, param2:String = "") : void
      {
         this.state = param1;
      }
      
      private function §&#0§(param1:Event = null) : void
      {
         var e:Event = param1;
         if(this.§-#Z§)
         {
            return;
         }
         this.§-#Z§ = true;
         §,#W§.§[#r§(§0$N§.TITLE_CONGRATULATE,§0$N§.DAILY_TASKS_STARTED,0,function onDailyTasksStartedOk():void
         {
            §-#Z§ = false;
         });
      }
      
      private function §<"1§(param1:TimerEvent) : void
      {
         if(!this.§@b§)
         {
            return;
         }
         if(this.§!y§ > 0)
         {
            --this.§!y§;
         }
         this.checkDayOut();
      }
      
      private function checkDayOut() : void
      {
         if(!this.§@b§)
         {
            return;
         }
         if(this.§!y§ <= 0 || this.§@b§.§"$Q§ <= 0)
         {
            this.setState(DAY_OUT,"checkDayOut");
            if(!this.checkRewards())
            {
               this.§3%"§();
            }
         }
      }
      
      public function checkRewards() : Boolean
      {
         if(!this.§@b§)
         {
            return false;
         }
         if(this.§@b§.§%&A§() || this.§@b§.§6!U§() && this.§@b§.§?!S§())
         {
            this.setState(REWARD,"checkRewards");
            this.§`"K§();
            return true;
         }
         return false;
      }
      
      private function §`"K§() : void
      {
         var _loc1_:String = null;
         var _loc2_:Function = null;
         if(this.§@b§.§%&A§())
         {
            _loc1_ = §0$N§.DAILY_TASKS_TAKE_REWARD;
         }
         else if(this.§@b§.§6!U§() && this.§@b§.§?!S§())
         {
            _loc1_ = §0$N§.DAILY_TASKS_TAKE_CHEST_REWARD;
         }
         if(!_loc1_)
         {
            return;
         }
         this.§%!Y§.stop();
         if(§8"%§.§?!W§.inBattle)
         {
            §8"%§.§?!W§.§!#S§(_loc1_);
            _loc2_ = §1%"§.§]$<§(this.§8!l§,this,[_loc1_]);
            §""n§.single(Application.§5!>§,§4$T§.SHOW_MAIN_MENU,_loc2_);
         }
         else
         {
            this.§8!l§(_loc1_);
         }
      }
      
      private function §8!l§(param1:String) : void
      {
         §,#W§.§[#r§(§0$N§.TITLE_CONGRATULATE,param1,§,#W§.§6!m§,this.§@$0§);
      }
      
      public function §@$0§() : void
      {
         var tasks:Vector.<§-"F§> = null;
         var task:§-"F§ = null;
         var slots:Vector.<int> = null;
         var slotId:int = 0;
         if(this.§@b§.§%&A§())
         {
            tasks = this.§@b§.§<7§();
            task = tasks[0];
            var _temp_7:* = this;
            var _temp_6:* = task.id;
            var _temp_5:* = task.award;
            var _temp_4:* = false;
            var _temp_3:* = false;
            with({})
            {
               
               var _temp_2:* = onGetRewardsTaskChestBoxClosed = function():void
               {
                  task.rewarded = true;
                  §@b§.§3$c§(task.id).rewarded = true;
                  if(§`#J§)
                  {
                     §`#J§.update();
                  }
                  §@$0§();
               };
            }
            _temp_7.§5"q§(_temp_6,_temp_5,_temp_4,_temp_3,_temp_2,false);
         }
         else if(this.§@b§.§6!U§())
         {
            if(this.§@b§.§?!S§())
            {
               slots = this.§@b§.§[&'§();
               slotId = slots[0];
               this.§5"q§(slotId,slotId + §>"V§.§>"]§,true,true,function onGetRewardsSlotChestBoxClosed():void
               {
                  §@b§.§>"Y§[slotId] = true;
                  if(§`#J§)
                  {
                     §`#J§.update();
                  }
                  §@$0§();
               },false);
            }
            else
            {
               this.checkDayOut();
            }
         }
         else
         {
            this.checkDayOut();
         }
      }
      
      public function §5"q§(param1:int, param2:int, param3:Boolean, param4:Boolean, param5:Function, param6:Boolean = true) : void
      {
         var rewardId:int = param1;
         var awardType:int = param2;
         var expire:Boolean = param3;
         var includeOwnedWeapons:Boolean = param4;
         var callback:Function = param5;
         var requestProgress:Boolean = param6;
         §8"%§.§2!d§.§#!l§(rewardId,function(param1:Array):void
         {
            var pack:§1%z§ = null;
            var rewards:Array = param1;
            pack = §1%z§.§!!Z§(rewards,expire);
            var pvpChestBox:PvpChestBox = new PvpChestBox(pack,awardType,includeOwnedWeapons);
            pvpChestBox.show();
            §""n§.single(pvpChestBox,§[%w§.WINDOW_CLOSE,function onChestBoxClosed():void
            {
               §8"%§.§?!W§.§8%-§().§?!I§(pack);
               callback();
               if(requestProgress && !checkDayOut())
               {
                  §5f§.§8#&§(§`#J§ ? §`#J§.update : null);
               }
            });
         });
      }
      
      public function §`!3§(param1:§!#x§) : void
      {
         if(param1.ids.length > 0 && param1.ids.length == param1.values.length)
         {
            §%%w§.§,U§(new PutQuestTaskProgress(param1.ids,param1.values));
         }
      }
      
      public function §1&9§(param1:int, param2:Function, param3:§+$A§ = null) : void
      {
         var replaceMoneyPrice:int = 0;
         var taskId:int = param1;
         var callback:Function = param2;
         var moneyType:§+$A§ = param3;
         replaceMoneyPrice = §8"%§.§8!E§.rec.replaceMoneyPrice;
         §%%w§.§##$§(ReplaceQuestTaskResponse,function onReplaceQuestTaskResponse(param1:§9$v§):void
         {
            var response:ReplaceQuestTaskResponse;
            var indexOf:int;
            var newTask:§-"F§;
            var oldTask:§-"F§ = null;
            var taskValues:Object = null;
            var msg:String = null;
            var replaceRealPrice:Number = NaN;
            var event:§9$v§ = param1;
            §%%w§.§-"j§(ReplaceQuestTaskResponse,onReplaceQuestTaskResponse);
            response = ReplaceQuestTaskResponse(event.message);
            §[&G§.§8"&§.hide();
            §`#J§.§&#F§(false);
            if(response.error != ShopResult.SUCCESS)
            {
               oldTask = §"#T§.§3$c§(taskId);
               msg = §2"e§.§;"e§(§0%§.format(§0$N§.DAILY_TASK_REPLACE_FAIL,{"task":oldTask.name}),"{br}","\n");
               §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,msg);
               §@%;§.play(§`!v§.§2$e§);
               return;
            }
            if(replaceMoneyPrice)
            {
               if(moneyType == §+$A§.REAL)
               {
                  replaceRealPrice = replaceMoneyPrice / 100;
                  Application.userProfile.§9%D§(-replaceRealPrice);
                  §8"%§.§@1§.increase([§!$L§.§`&0§],[replaceRealPrice]);
               }
               else
               {
                  Application.userProfile.§1%'§(-replaceMoneyPrice);
                  §8"%§.§@1§.increase([§!$L§.§0"K§],[replaceMoneyPrice]);
               }
               Application.§5!>§.§8$w§();
               §@%;§.play(§`!v§.§=#2§);
            }
            §8"%§.§8!E§.rec.replaceMoneyPrice = response.replaceMoneyPrice;
            try
            {
               taskValues = JSON.parse(response.taskValues);
            }
            catch(e:Error)
            {
            }
            indexOf = §@b§.§#o§(taskId);
            newTask = §@b§.§<&5§(response.newTaskId,taskValues,indexOf);
            if(newTask.§?$i§(oldTask))
            {
               throw new Error("onReplaceQuestTaskResponse: tasks iq equals ERROR! (" + newTask.id + "/" + newTask.params + ")");
            }
            callback(newTask);
            if(§@b§.replaceMoneyPrice == -1)
            {
               §`#J§.update();
            }
         });
         this.§`#J§.§&#F§(true);
         §[&G§.§8"&§.show();
         §%%w§.§,U§(new ReplaceQuestTask(taskId,!moneyType ? -1 : moneyType.value));
      }
      
      private function §3%"§() : void
      {
         if(Boolean(this.§%!Y§) && this.§%!Y§.running)
         {
            this.§%!Y§.stop();
         }
         if(Boolean(this.§`#J§) && this.§`#J§.isShown())
         {
            this.§`#J§.§&#F§(true);
            §[&G§.§8"&§.show();
         }
         §%%w§.§,U§(new OperationDailyQuest(§3#n§.§@$s§));
      }
      
      public function §#$8§() : void
      {
         if(this.§%!Y§)
         {
            this.§%!Y§.stop();
         }
         §[&G§.§8"&§.show();
      }
      
      public function §`! §() : void
      {
         if(this.§%!Y§)
         {
            this.§%!Y§.stop();
         }
         §[&G§.§8"&§.show();
      }
      
      public function §2"7§() : void
      {
         if(this.§%!Y§)
         {
            this.§%!Y§.stop();
         }
         §[&G§.§8"&§.show();
      }
      
      public function §2$b§() : void
      {
         if(this.§%!Y§)
         {
            this.§%!Y§.stop();
         }
         §[&G§.§8"&§.show();
      }
      
      public function §^!l§() : void
      {
         var _loc2_:§-"F§ = null;
         var _loc1_:Vector.<§-"F§> = this.§>$s§();
         if(!_loc1_ || _loc1_.length == 0)
         {
            return;
         }
         §8"%§.§?!W§.§!#S§(§0$N§.PROMPT_AVAILABLE_TASKS);
         for each(_loc2_ in _loc1_)
         {
            §8"%§.§?!W§.§!#S§("(" + _loc2_.score + "/" + _loc2_.goal + ") " + _loc2_.name + ".");
         }
      }
      
      private function §>$s§() : Vector.<§-"F§>
      {
         var _loc3_:§-"F§ = null;
         if(!this.§@b§)
         {
            return null;
         }
         var _loc1_:§]$d§ = §8"%§.§?!W§.§^!U§();
         var _loc2_:Vector.<§-"F§> = new Vector.<§-"F§>(0);
         for each(_loc3_ in this.§@b§.tasks)
         {
            if(!(_loc3_.§9$s§ || _loc3_.goal < 0))
            {
               if(this.§2!K§(_loc1_,_loc3_) || this.§#";§(_loc1_,_loc3_))
               {
                  _loc2_.push(_loc3_);
               }
            }
         }
         return _loc2_;
      }
      
      private function §2!K§(param1:§]$d§, param2:§-"F§) : Boolean
      {
         switch(param2.id)
         {
            case §3#n§.§4D§:
               return param1.§]_§() && param2.§=$q§(param1.§^"g§.getId());
            case §3#n§.§^%J§:
               return param1.§6!L§();
            case §3#n§.§!%k§:
               return param1.§<",§(true);
            case §3#n§.§]#A§:
               return Boolean(param1.wager) && param2.§=$q§(param1.wager.id);
            case §3#n§.§6$%§:
               return param1.§8y§() && param2.§=$q§(param1.missionIds[0]);
            default:
               return false;
         }
      }
      
      private function §#";§(param1:§]$d§, param2:§-"F§) : Boolean
      {
         switch(param2.id)
         {
            case §3#n§.§%"x§:
            case §3#n§.§@#1§:
            case §3#n§.§>a§:
            case §3#n§.§7"e§:
               return param1.§+#<§();
            case §3#n§.§2A§:
            case §3#n§.§^%^§:
            case §3#n§.§]!z§:
               return param1.§<",§(true);
            default:
               return false;
         }
      }
      
      public function get rec() : §&N§
      {
         return this.§@b§;
      }
      
      public function §,!Q§() : String
      {
         var _loc3_:§-"F§ = null;
         var _loc1_:String = "day " + this.§@b§.day + " / " + this.§@b§.daysInQuest;
         _loc1_ += ", progress " + this.§@b§.questScore + " / " + this.§@b§.questGoal + ", next replace " + this.§@b§.replaceMoneyPrice + (this.§@b§.§>"Y§ ? ", rewards [" + this.§@b§.§1]§() + "]" : "") + (this.§@b§.rewarded ? ", rewarded" : (this.§@b§.questScore >= this.§@b§.questGoal ? ", completed" : "")) + "\n";
         var _loc2_:int = 1;
         for each(_loc3_ in this.§@b§.tasks)
         {
            if(_loc3_.goal >= 0)
            {
               _loc1_ += "\n" + _loc2_ + ". task " + _loc3_.id + ", score " + _loc3_.score + " / " + _loc3_.goal + ", award " + _loc3_.award + (_loc3_.rewarded ? ", rewarded" : (_loc3_.score >= _loc3_.goal ? ", completed" : ""));
               _loc1_ += " - " + _loc3_.name;
               _loc2_++;
            }
         }
         return _loc1_;
      }
      
      public function get §%p§() : int
      {
         return this.§!y§;
      }
   }
}


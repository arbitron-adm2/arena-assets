package §&#h§
{
   import § &5§.§=#P§;
   import §"!C§.§"#T§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §+%o§.*;
   import §0&F§.§0$_§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §4!!§.§!$j§;
   import §5%S§.§>&-§;
   import §6"'§.§>"V§;
   import §7$t§.§&!e§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §?$K§.§@$J§;
   import §@!i§.§5%8§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%§.Boar;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.§=%A§;
   import flash.display.MovieClip;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.getQualifiedClassName;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §&N§
   {
      
      §§push(§§findproperty(fields));
      var _temp_5:* = new <String>["current","start","finishDay","finishQuest","day","daysInQuest","questScore","questGoal","hoursInDay","replaceMoneyPrice","rewarded","awardSlots","dayTasks"];
      
      private static const fields:Vector.<String> = new <String>["current","start","finishDay","finishQuest","day","daysInQuest","questScore","questGoal","hoursInDay","replaceMoneyPrice","rewarded","awardSlots","dayTasks"];
      
      public var current:int;
      
      public var start:int;
      
      public var finishDay:int;
      
      public var finishQuest:int;
      
      public var day:int;
      
      public var daysInQuest:int;
      
      public var questScore:int;
      
      public var questGoal:int;
      
      public var replaceMoneyPrice:int;
      
      public var rewarded:Boolean;
      
      public var §>"Y§:Object = {};
      
      public var tasks:Vector.<§-"F§> = new Vector.<§-"F§>(0);
      
      public var minutesInDay:int;
      
      public var §"$Q§:int;
      
      public function §&N§(param1:Object = null)
      {
         super();
         this.§2%3§(param1);
      }
      
      public function toString() : String
      {
         return "DailyTasksQuestRecord{" + "current=" + this.current + ",start=" + this.start + ",finishDay=" + this.finishDay + ",finishQuest=" + this.finishQuest + ",day=" + this.day + ",daysInQuest=" + this.daysInQuest + ",questScore=" + this.questScore + ",questGoal=" + this.questGoal + ",minutesInDay=" + this.minutesInDay + ",replaceMoneyPrice=" + this.replaceMoneyPrice + ",rewarded=" + this.rewarded + ",rewardSlots=" + this.§1]§() + ",task=" + this.tasks + "}";
      }
      
      public function reset() : void
      {
      }
      
      public function restart() : void
      {
      }
      
      public function §2%3§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         if(!param1)
         {
            return;
         }
         if(this.start != param1.start)
         {
            _loc2_ = true;
         }
         if(this.finishDay != param1.finishDay)
         {
            _loc2_ = true;
         }
         if(this.finishQuest != param1.finishQuest)
         {
            _loc2_ = true;
         }
         if(this.day != param1.day)
         {
            _loc2_ = true;
         }
         if(this.daysInQuest != param1.daysInQuest)
         {
            _loc2_ = true;
         }
         if(this.questScore != param1.questScore)
         {
            _loc2_ = true;
         }
         if(this.questGoal != param1.questGoal)
         {
            _loc2_ = true;
         }
         if(this.minutesInDay != param1.minutesInDay)
         {
            _loc2_ = true;
         }
         if(this.replaceMoneyPrice != param1.replaceMoneyPrice)
         {
            _loc2_ = true;
         }
         if(this.rewarded != param1.rewarded)
         {
            _loc2_ = true;
         }
         if(!_loc2_)
         {
            return;
         }
         this.current = param1.current;
         this.start = param1.start;
         this.finishDay = param1.finishDay;
         this.finishQuest = param1.finishQuest;
         this.day = param1.day;
         this.daysInQuest = param1.daysInQuest;
         this.questScore = param1.questScore;
         this.questGoal = param1.questGoal;
         this.minutesInDay = param1.minutesInDay;
         this.replaceMoneyPrice = param1.replaceMoneyPrice;
         this.rewarded = param1.rewarded;
         var _loc3_:int = this.current - this.start;
         this.§"$Q§ = this.finishDay - this.current;
         var _loc4_:int = this.finishQuest - this.current;
         var _loc5_:int = this.finishQuest - this.start;
         var _loc6_:int = _loc5_ / this.daysInQuest;
         this.§>"Y§ = param1.awardSlots || {};
      }
      
      public function §2%`§() : void
      {
         var _loc1_:§-"F§ = null;
         for each(_loc1_ in this.tasks)
         {
            _loc1_.reset();
         }
         this.tasks.length = 0;
      }
      
      public function § U§(param1:Object) : §-"F§
      {
         var _loc3_:§-"F§ = null;
         var _loc4_:§-"F§ = null;
         var _loc5_:§-"F§ = null;
         var _loc2_:int = parseInt(param1.id);
         for each(_loc3_ in this.tasks)
         {
            if(_loc3_.id == _loc2_ && !_loc3_.§ D§)
            {
               _loc3_.§2%3§(param1);
               return _loc3_;
            }
         }
         _loc4_ = §"#T§.§3$c§(_loc2_);
         if(_loc4_)
         {
            _loc5_ = _loc4_.clone();
            _loc5_.§2%3§(param1);
            this.tasks.push(_loc5_);
            return _loc5_;
         }
         return null;
      }
      
      public function §=$3§() : Array
      {
         return this.§4$7§(false);
      }
      
      public function §4$7§(param1:Boolean = true) : Array
      {
         var _loc3_:§-"F§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in this.tasks)
         {
            if(!param1 || _loc3_.goal > 0)
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public function §'!w§() : Array
      {
         var _loc2_:§-"F§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.tasks)
         {
            if(_loc2_.goal < 0)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function §3$c§(param1:int) : §-"F§
      {
         var _loc2_:§-"F§ = null;
         for each(_loc2_ in this.tasks)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §3c§(param1:int) : §-"F§
      {
         var _loc2_:§-"F§ = null;
         for each(_loc2_ in this.tasks)
         {
            if(_loc2_.id == param1 && _loc2_.goal > 0 && _loc2_.score < _loc2_.goal)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function §#o§(param1:int) : int
      {
         var _loc2_:§-"F§ = null;
         _loc2_ = this.§3$c§(param1);
         var _loc3_:int = this.tasks.indexOf(_loc2_);
         if(_loc3_ > -1)
         {
            this.tasks.splice(_loc3_,1);
         }
         return _loc3_;
      }
      
      public function §<&5§(param1:int, param2:Object, param3:int) : §-"F§
      {
         var _loc5_:§-"F§ = null;
         var _loc4_:§-"F§ = §"#T§.§3$c§(param1);
         if(_loc4_)
         {
            _loc5_ = _loc4_.clone();
            _loc5_.§2%3§(param2);
            this.tasks.push(_loc5_);
            return _loc5_;
         }
         return null;
      }
      
      public function isActive(param1:int) : Boolean
      {
         var _loc2_:§-"F§ = null;
         for each(_loc2_ in this.tasks)
         {
            if(_loc2_.id == param1 && _loc2_.goal > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §>%g§(param1:int) : Boolean
      {
         var _loc2_:§-"F§ = null;
         for each(_loc2_ in this.tasks)
         {
            if(_loc2_.id == param1 && _loc2_.goal < 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §%#q§(param1:int) : Boolean
      {
         var _loc2_:§-"F§ = null;
         for each(_loc2_ in this.tasks)
         {
            if(_loc2_.id == param1 && _loc2_.score > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §#"=§() : Boolean
      {
         var _loc1_:§-"F§ = null;
         for each(_loc1_ in this.tasks)
         {
            if(_loc1_.score > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §-#P§() : Boolean
      {
         return this.§`$C§() && !this.§%&A§();
      }
      
      public function §!&2§() : Boolean
      {
         var _loc1_:§-"F§ = null;
         if(this.tasks.length == 0)
         {
            return false;
         }
         for each(_loc1_ in this.tasks)
         {
            if(!_loc1_.§9$s§)
            {
               return false;
            }
         }
         return true;
      }
      
      public function §`$C§() : Boolean
      {
         var _loc1_:§-"F§ = null;
         for each(_loc1_ in this.tasks)
         {
            if(_loc1_.rewarded)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §%&A§() : Boolean
      {
         var _loc1_:§-"F§ = null;
         for each(_loc1_ in this.tasks)
         {
            if(_loc1_.§3#§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §<7§() : Vector.<§-"F§>
      {
         var _loc2_:§-"F§ = null;
         var _loc1_:Vector.<§-"F§> = new Vector.<§-"F§>(0);
         for each(_loc2_ in this.tasks)
         {
            if(_loc2_.§3#§)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function §[B§() : Vector.<int>
      {
         var _loc2_:§-"F§ = null;
         var _loc1_:Vector.<int> = new Vector.<int>(0);
         for each(_loc2_ in this.tasks)
         {
            _loc1_.push(_loc2_.id);
         }
         return _loc1_;
      }
      
      public function §;"4§() : Boolean
      {
         return this.§]!t§() && !this.§?!S§();
      }
      
      public function §]!t§() : Boolean
      {
         var _loc1_:String = null;
         for(_loc1_ in this.§>"Y§)
         {
            if(this.§>"Y§[_loc1_] == true)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §?!S§() : Boolean
      {
         var _loc1_:String = null;
         for(_loc1_ in this.§>"Y§)
         {
            if(this.§>"Y§[_loc1_] == false)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §&#<§(param1:int) : Boolean
      {
         var _loc2_:Vector.<int> = this.§[&'§();
         return _loc2_.indexOf(param1) > -1;
      }
      
      public function §,%Q§() : Boolean
      {
         var _loc1_:String = null;
         for(_loc1_ in this.§>"Y§)
         {
            if(this.§>"Y§[_loc1_] != undefined)
            {
               return false;
            }
         }
         return true;
      }
      
      public function §0$Y§() : int
      {
         var _loc2_:String = null;
         var _loc1_:* = §>"V§.§>"]§;
         for(_loc2_ in this.§>"Y§)
         {
            if(this.§>"Y§[_loc2_] == true)
            {
               _loc1_--;
            }
         }
         return _loc1_;
      }
      
      public function §[&'§() : Vector.<int>
      {
         var _loc3_:int = 0;
         var _loc1_:Vector.<int> = new Vector.<int>(0);
         var _loc2_:int = 0;
         while(_loc2_ < §>"V§.§>"]§)
         {
            _loc3_ = _loc2_ + 1;
            if(this.§>"Y§[_loc3_] == false)
            {
               _loc1_.push(_loc3_);
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §1]§() : Array
      {
         var _loc3_:String = null;
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < §>"V§.§>"]§)
         {
            _loc3_ = (_loc2_ + 1).toString();
            switch(this.§>"Y§[_loc3_])
            {
               case true:
                  _loc1_[_loc2_] = _loc3_ + "+";
                  break;
               case false:
                  _loc1_[_loc2_] = _loc3_ + "!";
                  break;
               default:
                  _loc1_[_loc2_] = _loc3_ + "-";
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §!$U§() : Boolean
      {
         return this.day == this.daysInQuest;
      }
      
      public function §^$1§() : Boolean
      {
         return §0#2§.§@&6§() > this.finishDay;
      }
      
      public function §6!U§() : Boolean
      {
         return §0#2§.§@&6§() > this.finishQuest;
      }
   }
}


package §+$2§
{
   import § #m§.§;#^§;
   import § #m§.§?A§;
   import § #m§.§[&H§;
   import §!$D§.§2$^§;
   import §!L§.*;
   import §"!C§.§3#n§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.§9§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&#E§.§4##§;
   import §&#h§.§-"F§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§2!x§;
   import §,"v§.§9%d§;
   import §-!U§.§&%j§;
   import §-%B§.*;
   import §-@§.*;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.Cookie;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2"L§.§^$y§;
   import §3#a§.§-#M§;
   import §4'§.§^"p§;
   import §4'§.§`"q§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§"&=§;
   import §7$t§.§??§;
   import §7$t§.§^%%§;
   import §9%W§.§!7§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §="z§.§<$t§;
   import §=&!§.§&$a§;
   import §=&!§.§4$z§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§5&4§;
   import §@!i§.§8%6§;
   import §@!i§.§;%v§;
   import §@!i§.§<!9§;
   import §@!i§.§<#&§;
   import §@$v§.§%3§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §]$v§.§+%n§;
   import §^!]§.WeaponShootEvent;
   import §`%&§.§2z§;
   import config.achievements.§^t§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.rules.§6#H§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.client.BuyColiseumTicket;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.*;
   import ru.pragmatix.wormix.utils.*;
   
   public class DailyTaskItem extends §"&=§ implements §?A§
   {
      
      private const §,v§:String = "HintProgressAchiev";
      
      private var menu:DailyTasksMenu;
      
      private var hint:MovieClip = null;
      
      private var §;$4§:§[&H§;
      
      private var desc:TextField;
      
      private var progressBar:§%3§;
      
      private var §]%T§:§-"F§;
      
      private var §#$v§:Vector.<§[#9§>;
      
      private var replaceBtn:§?%>§;
      
      private var §?%v§:MovieClip;
      
      private var §2,§:MovieClip;
      
      private var §7[§:Boolean;
      
      public function DailyTaskItem(param1:MovieClip, param2:DailyTasksMenu, param3:Boolean = true)
      {
         var _loc5_:§[#9§ = null;
         super(param1);
         this.menu = param2;
         if(param3)
         {
         }
         this.§?%v§ = §'$a§("exclamation");
         this.§2,§ = §'$a§("check");
         this.desc = §'%s§("desc");
         this.desc.mouseWheelEnabled = false;
         this.desc.mouseEnabled = false;
         this.progressBar = new §%3§(MovieClip(getChildByName("progress")),null,true);
         this.progressBar.separator = §%3§.§5">§;
         this.progressBar.§]"M§(0);
         this.progressBar.setValue(0);
         this.§#$v§ = new Vector.<§[#9§>(0);
         var _loc4_:int = 1;
         while(_loc4_ < 4)
         {
            _loc5_ = §0$5§(§'$a§("rewardButton" + _loc4_));
            _loc5_.§]%$§(§`!v§.§;$u§);
            _loc5_.§00§(§`!v§.§4#7§);
            _loc5_.§[!u§(this.§[#V§);
            _loc5_.§-!A§ = true;
            this.§#$v§.push(_loc5_);
            _loc4_++;
         }
         this.replaceBtn = §!&5§.§7#[§(getChildByName("replaceBtn"));
         this.replaceBtn.setQtip(§0$N§.DAILY_TASKS_REPLACE_QTIP,null,§+"'§.§9%>§);
         this.replaceBtn.§[!u§(this.§""P§);
         §00§(null);
      }
      
      public static function §0$5§(param1:MovieClip) : §[#9§
      {
         return new §[#9§(param1);
      }
      
      public function update(param1:§-"F§, param2:Boolean = true) : void
      {
         var _loc5_:§[#9§ = null;
         var _loc7_:int = 0;
         var _loc8_:Boolean = false;
         var _loc3_:String = "";
         if(param1)
         {
            if(Application.instance.§#&7§())
            {
            }
            _loc3_ += param1.name;
         }
         var _loc4_:Boolean = !this.§]%T§ && Boolean(param1) || this.§]%T§ && param1 && (param1.id != this.§]%T§.id || param1.goal != this.§]%T§.goal || param1.award != this.§]%T§.award || !param1.§?$i§(this.§]%T§)) || _loc3_ != this.desc.text;
         this.§]%T§ = param1;
         var _loc6_:int = 0;
         while(_loc6_ < this.§#$v§.length)
         {
            this.§#$v§[_loc6_].setVisible(false);
            _loc6_++;
         }
         if(param1)
         {
            if(_loc4_)
            {
               this.progressBar.§]"M§(param1.goal);
               this.desc.text = _loc3_;
            }
            if(_loc4_ || this.progressBar.getValue() != param1.score)
            {
               this.progressBar.setValue(param1.score);
            }
            _loc6_ = 0;
            while(_loc6_ < this.§#$v§.length)
            {
               _loc5_ = this.§#$v§[_loc6_];
               _loc8_ = param1.award == _loc6_ + 1;
               if(_loc8_)
               {
                  _loc5_.setVisible(true);
                  _loc5_.setDisabled(!param1.§3#§);
                  _loc5_.§1"L§(param1.rewarded);
                  _loc5_.setQtip(param1.§3#§ && !param1.rewarded ? §0$N§.DAILY_TASKS_REWARD_READY_QTIP : "",§;#^§.§[!K§);
                  _loc5_.§<$>§(param1.rewarded ? §0$N§.DAILY_TASKS_CHEST_EMPTY_QTIP : (!param1.§3#§ ? §0$N§.DAILY_TASKS_REWARD_UNLOCK_QTIP : ""));
                  _loc5_.§-"v§(param1.rewarded ? §0$N§.DAILY_TASKS_REWARD_EMPTY_QTIP : "");
                  break;
               }
               _loc6_++;
            }
            _loc7_ = §8"%§.§8!E§.rec.replaceMoneyPrice;
            this.replaceBtn.setVisible(_loc7_ > -1 && param1.score < param1.goal);
            this.replaceBtn.setDisabled(false);
            if(Application.instance.§#&7§())
            {
            }
            this.§?%v§.visible = param1.§3#§;
            if(this.§?%v§.visible)
            {
               this.§?%v§.play();
            }
            else
            {
               this.§?%v§.stop();
            }
            this.§2,§.visible = param1.rewarded;
         }
         else
         {
            this.progressBar.§%%M§(false);
            this.progressBar.setValue(0);
            this.progressBar.§]"M§(0);
            _loc6_ = 0;
            while(_loc6_ < this.§#$v§.length)
            {
               this.§#$v§[_loc6_].setVisible(false);
               _loc6_++;
            }
            this.replaceBtn.setVisible(false);
            this.§?%v§.visible = false;
            this.§?%v§.stop();
            this.§2,§.visible = false;
            this.desc.text = "-";
         }
         this.§7[§ = false;
      }
      
      private function §[#V§(param1:Event) : void
      {
         var event:Event = param1;
         var i:int = 0;
         while(i < this.§#$v§.length)
         {
            if(this.§#$v§[i].isVisible())
            {
               this.§#$v§[i].§1"L§(true);
               this.§#$v§[i].setQtip("");
               break;
            }
            i++;
         }
         this.§?%v§.stop();
         §8"%§.§8!E§.§5"q§(this.§]%T§.id,this.§]%T§.award,false,false,function onTaskItemChestBoxClosedCallback():void
         {
            §]%T§.rewarded = true;
            §2,§.visible = true;
            §?%v§.visible = false;
         });
      }
      
      public function §&#M§(param1:Boolean) : void
      {
         this.replaceBtn.setDisabled(param1);
      }
      
      private function §""P§(param1:MouseEvent) : void
      {
         var _loc2_:int = §8"%§.§8!E§.rec.replaceMoneyPrice;
         if(_loc2_ == 0)
         {
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0$N§.BUY_TASK_REPLACE_QUESTION,§,#W§.§`$x§,this.§#"?§);
         }
         else if(_loc2_ > 0)
         {
            new §^"!§(this.§#"?§).show();
         }
      }
      
      private function §#"?§(param1:§+$A§ = null) : void
      {
         var _loc2_:§`"q§ = null;
         if(param1)
         {
            _loc2_ = new §`"q§(param1,§5&4§.§@#4§(),§0$N§.BUY_TASK_REPLACE_TEXT);
            if(!§4! §.§!%i§(_loc2_))
            {
               return;
            }
         }
         this.§7[§ = true;
         this.replaceBtn.setDisabled(true);
         §8"%§.§8!E§.§1&9§(this.§]%T§.id,this.§;&@§,param1);
      }
      
      private function §;&@§(param1:§-"F§) : void
      {
         if(!param1 || this.§]%T§.§?$i§(param1))
         {
            if(this.§]%T§.§?$i§(param1))
            {
               throw new Error("onReplaceQuestTaskResponse: tasks iq equals ERROR! (" + param1.id + "/" + param1.params + ")");
            }
            return;
         }
         var _loc2_:String = §0%§.format(§0$N§.DAILY_TASK_REPLACE_SUCCESS,{
            "task1":this.§]%T§.name,
            "task2":param1.name
         });
         _loc2_ = §2"e§.§;"e§(_loc2_,"{br}","\n");
         §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,_loc2_);
         this.update(param1,false);
      }
      
      override public function destroy() : void
      {
         this.§]%T§ = null;
         this.progressBar.destroy();
         var _loc1_:int = 0;
         while(_loc1_ < this.§#$v§.length)
         {
            this.§#$v§[_loc1_].removeHandler(this.§[#V§);
            _loc1_++;
         }
         this.replaceBtn.removeHandler(this.§""P§);
         super.destroy();
         if(Boolean(container) && Boolean(container.parent))
         {
            container.parent.removeChild(container);
         }
      }
      
      public function §&k§() : DisplayObject
      {
         return this.hint;
      }
      
      public function get taskRec() : §-"F§
      {
         return this.§]%T§;
      }
   }
}


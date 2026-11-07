package §0%z§
{
   import § !P§.§9%Z§;
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §"%H§.§1! §;
   import §"%H§.§`"w§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§-$s§;
   import §,$J§.§,$O§;
   import §0"L§.§+# §;
   import §1#p§.§"Z§;
   import §1#p§.Team;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §5!,§.§9$h§;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §>%S§.§^!V§;
   import §@!N§.§2"e§;
   import §@!i§.§!m§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@$v§.§%3§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §]$J§.§#"s§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.edit.CloseExitClanResponse;
   import ru.pragmatix.wormix.messages.server.WhoPumpedReactionResult;
   import ru.pragmatix.wormix.messages.structures.ProfileDoubleKeyStructure;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §?#b§ extends §"&=§
   {
      
      private var awardSlot:MovieClip;
      
      private var wIcon:§4#_§;
      
      private var awardIcon:MovieClip;
      
      private var awardCount:TextField;
      
      private var pointsCount:TextField;
      
      private var plus:MovieClip;
      
      private var achievIcon:§<$]§;
      
      private var §]"a§:TextField;
      
      private var descrField:TextField;
      
      private var progressBar:§%3§;
      
      private var value:uint = 0;
      
      private var §"!h§:§1! §;
      
      private var maxLevel:int;
      
      private var §9$?§:Array = [];
      
      private var §6"7§:Array = [];
      
      private var §7$6§:§,$h§;
      
      public function §?#b§(param1:MovieClip, param2:§,$h§)
      {
         super(param1);
         this.§7$6§ = param2;
         this.§]"a§ = §'%s§("title");
         this.descrField = §'%s§("descrField");
         this.descrField.autoSize = TextFieldAutoSize.CENTER;
         this.awardSlot = §'$a§("awardSlot");
         this.awardIcon = §'$a§("awardIcon");
         this.awardCount = §'%s§("awardSlot.awardCount");
         this.awardCount.autoSize = TextFieldAutoSize.RIGHT;
         this.plus = §'$a§("plus");
         this.pointsCount = §'%s§("achievPointsCount");
         this.pointsCount.text = "0";
         this.pointsCount.autoSize = TextFieldAutoSize.RIGHT;
         this.progressBar = new §%3§(MovieClip(getChildByName("achievProgressBar")),null,true);
         §3#1§("progressLabel",§0$N§.ACHIEV_PROGRESS_LABEL);
         this.wIcon = new §4#_§(getChildByName("wIcon"));
         this.wIcon.setQtip(§0$N§.ACHIEV_QTIP,§;#^§.§[!K§,§+"'§.§]!H§);
      }
      
      public function setData(param1:§1! §) : void
      {
         var _loc3_:AchievHint = null;
         this.§"!h§ = param1;
         this.§-!W§(this.§"!h§.id);
         this.maxLevel = this.§"!h§.levels.length - 1;
         if(!this.achievIcon)
         {
            this.achievIcon = new §<$]§(§'$a§("achievIcon"),this.maxLevel,this.§7$6§);
            _loc3_ = new AchievHint(this.§"!h§,this.§7$6§);
            this.achievIcon.setQtipPanel(_loc3_,§;#^§.DEFAULT);
         }
         this.§;%C§(this.§"!h§,0);
         var _loc2_:§`"w§ = this.§"!h§.levels[0];
         this.§7&1§(_loc2_);
         this.progressBar.§]"M§(_loc2_.maxValue ? _loc2_.maxValue : 0);
         this.§,%&§(this.value);
      }
      
      private function §-!W§(param1:int) : void
      {
         this.id = param1.toString();
      }
      
      private function §?"2§(param1:String = "?") : void
      {
         this.§]"a§.text = param1;
      }
      
      private function §;%C§(param1:§1! §, param2:uint) : void
      {
         this.descrField.text = param1.§]G§(param2);
         §`o§.§8#y§(this.descrField,getChildByName("alignHeight"));
      }
      
      private function §,"<§(param1:int) : void
      {
         if(param1)
         {
            this.pointsCount.text = param1.toString();
            §`o§.§@"n§(this.plus,this.pointsCount);
         }
         else
         {
            this.§]"a§.width = 315;
            this.wIcon.setVisible(false);
            this.pointsCount.visible = false;
            this.plus.visible = false;
         }
      }
      
      private function §7&1§(param1:§`"w§) : void
      {
         var _loc2_:DisplayObject = null;
         for each(_loc2_ in this.awardSlot)
         {
            _loc2_.visible = false;
         }
         if(Boolean(param1.reward.type) && param1.reward.type != "")
         {
            this.awardCount.visible = true;
            this.awardSlot.getChildByName(param1.reward.type).visible = true;
            this.awardCount.text = param1.reward.count ? param1.reward.count : "";
         }
         else
         {
            this.awardSlot.visible = false;
         }
      }
      
      private function §@$o§(param1:int) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.maxLevel + 1)
         {
            if(this.§9$?§[_loc2_] == undefined && this.§6"7§[_loc2_] == undefined)
            {
               this.§9$?§.push(§'$a§("bg.level" + _loc2_));
            }
            this.§9$?§[_loc2_].visible = false;
            _loc2_++;
         }
         this.§9$?§[param1].visible = true;
         this.achievIcon.setIconLevel(param1);
      }
      
      public function §,%&§(param1:int = 0) : void
      {
         var _loc2_:int = §9%Z§.§]![§(this.§"!h§,param1);
         this.achievIcon.setAchievIcon(this.§"!h§.levels[_loc2_].icon,this.§7$6§ == §,$h§.§#E§);
         this.§<"5§(_loc2_);
         this.§7&1§(this.§"!h§.levels[_loc2_]);
         this.progressBar.§]"M§(this.§"!h§.levels[_loc2_].maxValue ? this.§"!h§.levels[_loc2_].maxValue : 0);
         if(_loc2_ == this.§"!h§.levels.length - 1 && param1 > this.§"!h§.levels[_loc2_].maxValue)
         {
            param1 = int(this.§"!h§.levels[_loc2_].maxValue);
         }
         this.value = param1;
         this.progressBar.setValue(param1);
      }
      
      private function §<"5§(param1:int) : void
      {
         this.§@$o§(param1);
         this.§?"2§(this.§"!h§.levels[param1].name);
         this.§;%C§(this.§"!h§,param1);
         this.§,"<§(this.§"!h§.levels[param1].points);
      }
      
      private function §'$t§(param1:int) : Object
      {
         var _loc2_:Vector.<§`"w§> = this.§"!h§.levels;
         var _loc3_:int = 0;
         while(_loc3_ < this.§"!h§.levels.length)
         {
            if(_loc2_[_loc3_].maxValue - param1 == 0)
            {
               return {
                  "level":_loc3_,
                  "stateFinal":true
               };
            }
            if(_loc2_[_loc3_].maxValue - param1 > 0)
            {
               return {
                  "level":_loc3_,
                  "stateFinal":false
               };
            }
            _loc3_++;
         }
         return {};
      }
   }
}


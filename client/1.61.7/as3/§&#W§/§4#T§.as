package §&#W§
{
   import § !8§.§`!d§;
   import § &5§.§=#P§;
   import § &5§.Water;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §&&6§.§8"O§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§-$s§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.§-"o§;
   import §-@§.*;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4$b§.§2m§;
   import §4$b§.§6!G§;
   import §4'§.§^"p§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§^%%§;
   import §8#<§.§!#^§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §<$q§.§,%3§;
   import §<%E§.§6$=§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=#g§.§&%5§;
   import §=1§.*;
   import §?#g§.Race;
   import §?$K§.§@$J§;
   import §?$L§.§&$9§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5%8§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §]$J§.§#"s§;
   import §]$v§.§]%_§;
   import §]^§.§3$f§;
   import §]^§.§4&+§;
   import §^!"§.§"$k§;
   import §^!"§.§0^§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`"x§.§-#z§;
   import §`"x§.SearchFriendMenu;
   import §`%&§.§`§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.LeaveFromChat;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §4#T§ extends §4#_§
   {
      
      private const SHIFT:uint = 24;
      
      public var nextHelpTextBtn:§?%>§;
      
      private var §+#E§:Array;
      
      private var §3%[§:uint;
      
      private var tutorialBg:MovieClip;
      
      private var §<&8§:Sprite;
      
      public function §4#T§()
      {
         super(§6#A§.§!&6§("TutorialPanel_mc"));
         this.tutorialBg = MovieClip((container as MovieClip).getChildByName("tutorialBg"));
         this.nextHelpTextBtn = §!&5§.§7#[§((container as MovieClip).getChildByName("nextHelpTextBtn"));
         this.nextHelpTextBtn.§[!u§(this.§[!L§);
         this.nextHelpTextBtn.setText(§?#]§.NEXT_HELP_TEXT_BTN,§"-§.§+$m§);
         this.§+#E§ = [];
      }
      
      public function §2%s§() : void
      {
         var _loc1_:§&%5§ = §8"%§.§^%W§.§"$=§();
         var _loc2_:Point = getContainer().parent.globalToLocal(new Point(147,_loc1_.§'$#§() - 5));
         getContainer().x = _loc2_.x;
         getContainer().y = _loc2_.y;
      }
      
      private function moveTo(param1:Number, param2:Number) : void
      {
         this.y = param2;
         this.x = param1;
      }
      
      public function §&#Y§(param1:Number, param2:Number) : void
      {
         this.y += param2;
         this.x += param1;
      }
      
      public function §+!N§() : void
      {
         this.moveTo(((getContainer() as MovieClip).width >> 1) + 5,Application.instance.§[^§ - 5);
      }
      
      override public function destroy() : void
      {
         this.nextHelpTextBtn.removeHandler(this.§[!L§);
         this.nextHelpTextBtn = null;
         this.tutorialBg = null;
         this.§[!A§();
         super.destroy();
      }
      
      private function §[!L§(param1:MouseEvent) : void
      {
         this.§6#F§();
         if(this.§3%[§ >= this.§+#E§.length)
         {
            this.actions(false);
         }
      }
      
      private function actions(param1:Boolean) : void
      {
         this.nextHelpTextBtn.setVisible(param1);
      }
      
      public function setTutorialRecords(param1:Array, param2:Boolean = false) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:Object = null;
         if(param1.length != 0)
         {
            if(!isVisible())
            {
               setVisible(true);
            }
            this.§+#E§.length = 0;
            _loc3_ = 0;
            for each(_loc4_ in param1)
            {
               if(!(_loc4_ is Array))
               {
                  this.§+#E§[_loc3_] = [_loc4_];
               }
               else
               {
                  this.§+#E§[_loc3_] = _loc4_ as Array;
               }
               _loc3_++;
            }
            this.§3%[§ = 0;
            this.actions(!param2 ? param1.length != 1 : true);
            this.§6#F§();
         }
      }
      
      public function §`!"§(param1:Function) : void
      {
         var callback:Function = param1;
         §8$a§.§&!#§(this.nextHelpTextBtn,MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            callback();
         });
      }
      
      private function §6#F§() : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:Object = null;
         var _loc4_:TextField = null;
         this.§[!A§();
         var _loc1_:int = 8;
         this.§<&8§ = new Sprite();
         for each(_loc3_ in this.§+#E§[this.§3%[§])
         {
            _loc2_ = null;
            if(_loc3_ is String)
            {
               _loc4_ = new TextField();
               _loc4_.width = 260;
               _loc4_.x = 12;
               _loc4_.textColor = 8804422;
               _loc4_.selectable = false;
               _loc4_.wordWrap = true;
               §&$9§.§>&F§(_loc4_,§"-§.§+$m§,_loc3_ as String);
               _loc4_.autoSize = TextFieldAutoSize.CENTER;
               _loc2_ = _loc4_;
            }
            else if(_loc3_ is MovieClip)
            {
               _loc2_ = _loc3_ as MovieClip;
               _loc2_.x = this.tutorialBg.width - _loc2_.width >> 1;
            }
            _loc2_.y = _loc1_;
            this.§<&8§.addChild(_loc2_);
            _loc1_ += _loc2_.height + 8;
         }
         this.tutorialBg.height = this.SHIFT + this.§<&8§.height;
         (getContainer() as MovieClip).addChild(this.§<&8§);
         this.§<&8§.x = this.tutorialBg.x;
         this.§<&8§.y = this.tutorialBg.y - this.tutorialBg.height;
         ++this.§3%[§;
      }
      
      private function §[!A§() : void
      {
         var _loc1_:* = 0;
         if(this.§<&8§)
         {
            _loc1_ = int(this.§<&8§.numChildren - 1);
            while(_loc1_ >= 0)
            {
               this.§<&8§.removeChildAt(_loc1_);
               _loc1_--;
            }
            if((getContainer() as MovieClip).contains(this.§<&8§))
            {
               (getContainer() as MovieClip).removeChild(this.§<&8§);
            }
            this.§<&8§ = null;
         }
      }
      
      public function show() : void
      {
         setVisible(true);
      }
      
      public function hide() : void
      {
         setVisible(false);
      }
   }
}


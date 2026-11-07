package §=$#§
{
   import § !8§.§`!d§;
   import § #m§.§;#^§;
   import § &5§.§%$O§;
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!K§.§"%$§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.§9§;
   import §#%!§.§[N§;
   import §#k§.§-#S§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §%&3§.§'C§;
   import §%L§.§%%w§;
   import §&#W§.§4#T§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$2§.§;#T§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§2&>§;
   import §,"v§.§9%d§;
   import §0!§.§9"u§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §02§.§<!v§;
   import §1#p§.*;
   import §2"L§.§^$y§;
   import §2#H§.§+N§;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §2#i§.§+%z§;
   import §3#T§.*;
   import §4!!§.§#Z§;
   import §4#`§.§+!l§;
   import §4#`§.BattleInterface;
   import §4f§.§-&§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §8$V§.§^#§;
   import §8$Z§.§9"t§;
   import §9%W§.§!7§;
   import §;!J§.§8!a§;
   import §<$q§.§6%b§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=#g§.§%!x§;
   import §=&!§.§&$a§;
   import §?!E§.*;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§2"e§;
   import §@!i§.§5%8§;
   import §@!i§.§<!9§;
   import §@!i§.§=$,§;
   import §@$§.*;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§8U§;
   import com.greensock.TweenLite;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import org.gestouch.events.GestureEvent;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§3!f§;
   import ru.pragmatix.wormix.gui.house.team.§3$B§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.BuyShopItems;
   import ru.pragmatix.wormix.messages.client.GetQuestProgress;
   import ru.pragmatix.wormix.messages.server.AchieveLoginError;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.messages.server.BuyRenameCharResult;
   import ru.pragmatix.wormix.messages.server.DistributePointsResult;
   import ru.pragmatix.wormix.messages.server.DowngradeWeaponResult;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §[#-§ extends §`&-§
   {
      
      private static var § $T§:Boolean;
      
      public static const §'$[§:uint = 128;
      
      private static const § $9§:uint = 2000;
      
      private var input:TextField;
      
      private var sendBtn:§?%>§;
      
      private var §@#o§:§?%>§;
      
      private var §@A§:§?%>§;
      
      private var §6$?§:§?%>§;
      
      private var panel:MovieClip;
      
      private var §"$,§:Dictionary = new Dictionary();
      
      private var inputBg:MovieClip;
      
      private var visible:Boolean;
      
      private var §1J§:Boolean;
      
      private var §&$O§:Boolean;
      
      private var §#&=§:Timer;
      
      private var §&%=§:Boolean;
      
      private var §2!i§:Boolean;
      
      private var isSendingDelay:Boolean;
      
      private const §<!w§:int = 500;
      
      private var §-$f§:int;
      
      private var hideTimer:Timer;
      
      public function §[#-§(param1:§6%b§)
      {
         var _loc2_:MovieClip = null;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc11_:§ "V§ = null;
         var _loc12_:§ "V§ = null;
         var _loc13_:Number = NaN;
         _loc2_ = §6#A§.§!&6§(§+"'§.§`%K§);
         super(_loc2_);
         this.panel = §'$a§("panel");
         this.inputBg = §'$a§("inputBg");
         this.input = §&$9§.§>%5§(§#!`§(),"input",false);
         this.input.addEventListener(KeyboardEvent.KEY_DOWN,this.§8"5§);
         this.input.maxChars = §'$[§;
         var _loc3_:§&$a§ = §8"%§.§?!W§.§^!U§().battleType;
         _loc4_ = !§8"%§.§?!W§.isLearning();
         this.§2!i§ = param1.§[%R§(§ b§.§9$@§) && _loc3_ != §&$a§.§^!p§ && _loc3_ != §&$a§.§9&A§;
         _loc5_ = param1.§[%R§(§ b§.§ $3§);
         this.§&%=§ = param1.§[%R§(§ b§.§"#g§) && Application.userProfile.§!#E§();
         var _loc6_:§ "V§ = this.§#%T§(_loc2_,§0$N§.EVENTS_CHAT_BTN,§ b§.§?!X§,param1,_loc4_);
         var _loc7_:§ "V§ = this.§#%T§(_loc2_,§0$N§.COMMON_CHAT_BTN,§ b§.§9$@§,param1,this.§2!i§);
         var _loc8_:§ "V§ = this.§#%T§(_loc2_,§0$N§.TEAM_CHAT_BTN,§ b§.§ $3§,param1,_loc5_);
         var _loc9_:§ "V§ = this.§#%T§(_loc2_,§0$N§.CLAN_CHAT_BTN,§ b§.§"#g§,param1,this.§&%=§);
         this.sendBtn = §!&5§.§7#[§(getChildByName("send"));
         this.sendBtn.§[!u§(this.§<%Q§);
         this.§@#o§ = §!&5§.§7#[§(getChildByName("showHideBtn"));
         this.§@#o§.§[!u§(this.§,$L§);
         this.§@#o§.setQtip(§0$N§.CHAT_QTIP);
         this.§@A§ = §!&5§.§7#[§(getChildByName("disable"));
         this.§@A§.§[!u§(this.§4!;§);
         this.§@A§.setQtip(§0$N§.DISABLE_CHAT);
         this.§6$?§ = §!&5§.§7#[§(getChildByName("enable"));
         this.§6$?§.§[!u§(this.§4%o§);
         this.§6$?§.setQtip(§0$N§.ENABLE_CHAT);
         this.§"#^§([_loc7_,_loc8_,_loc9_,_loc6_]);
         var _loc10_:Number = 999999;
         for each(_loc12_ in this.§"$,§)
         {
            _loc13_ = _loc12_.getHeaderBtn().x;
            if(_loc13_ < _loc10_ && _loc12_.getHeaderBtn().isVisible())
            {
               _loc10_ = _loc13_;
               _loc11_ = _loc12_;
            }
         }
         if(_loc11_)
         {
            _loc11_.setActive(true);
         }
         else
         {
            _loc7_.setActive(true);
         }
         this.setVisible(§ $T§);
         if(param1.§ 1§())
         {
            this.§#&=§ = new Timer(§ $9§);
            this.§#&=§.addEventListener(TimerEvent.TIMER,this.§3R§);
            this.§#&=§.start();
         }
         this.hideTimer = new Timer(500);
         this.hideTimer.addEventListener(TimerEvent.TIMER,this.onFrame);
      }
      
      private function §#%T§(param1:MovieClip, param2:String, param3:String, param4:§6%b§, param5:Boolean) : § "V§
      {
         var _loc6_:§ "V§ = new § "V§(param1);
         _loc6_.§#"j§(param2);
         _loc6_.§!]§(param3);
         _loc6_.§]!#§(param4.§&@§(param3));
         _loc6_.§ $E§(param5);
         this.§"$,§[param3] = _loc6_;
         return _loc6_;
      }
      
      private function §4%h§(param1:Boolean) : void
      {
         var _loc2_:§ "V§ = null;
         for each(_loc2_ in this.§"$,§)
         {
            _loc2_.getHeaderBtn().setVisible(param1 && _loc2_.§-!T§());
         }
      }
      
      private function §"#^§(param1:Array) : void
      {
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc9_:§ "V§ = null;
         _loc2_ = § "V§(param1[0]).getHeaderBtn().width;
         var _loc3_:int = § "V§(param1[0]).getHeaderBtn().height;
         _loc4_ = this.panel.width;
         _loc5_ = _loc4_ / _loc2_;
         var _loc6_:int = Math.max(Math.ceil(param1.length / _loc5_),1);
         this.§-$f§ = _loc3_ * _loc6_;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         for each(_loc9_ in param1)
         {
            _loc9_.getContainer().x = this.panel.x;
            if(_loc9_.§-!T§())
            {
               _loc9_.§#$3§(this.§-$f§ + 2);
               _loc9_.getHeaderBtn().y = this.§-$f§ - (_loc8_ + 1) * _loc3_;
               _loc9_.getHeaderBtn().x = _loc2_ * _loc7_;
               if(++_loc7_ >= _loc5_)
               {
                  _loc8_++;
                  _loc7_ = 0;
               }
            }
         }
         this.§"P§(this.§-$f§ - 0);
      }
      
      private function §"P§(param1:int) : void
      {
         this.panel.y = param1;
         this.inputBg.y = this.panel.y + this.panel.height + 2;
         this.input.y = this.inputBg.y + 3;
         this.sendBtn.y = this.inputBg.y;
         this.§6$?§.y = this.inputBg.y;
         this.§@A§.y = this.inputBg.y;
         this.§@#o§.y = this.inputBg.y;
      }
      
      private function §3R§(param1:TimerEvent) : void
      {
         var _loc2_:String = null;
         var _loc3_:§ "V§ = null;
         var _loc4_:String = null;
         for(_loc2_ in this.§"$,§)
         {
            _loc3_ = this.§"$,§[_loc2_];
            _loc4_ = _loc3_.§ $u§();
            if(_loc4_ != "")
            {
               §8"%§.§[#6§.§ $1§(_loc4_,_loc2_);
            }
         }
      }
      
      private function §8"5§(param1:KeyboardEvent) : void
      {
         var event:KeyboardEvent = param1;
         if(event.ctrlKey && event.keyCode == §3!f§.§`%K§)
         {
            this.§!#9§();
            event.stopImmediatePropagation();
            return;
         }
         if(this.visible)
         {
            event.stopPropagation();
            if(!this.isSendingDelay && event.keyCode == Keyboard.ENTER)
            {
               this.isSendingDelay = true;
               this.§<%Q§(event);
               §1%"§.delay(function():void
               {
                  isSendingDelay = false;
               },this,this.§<!w§);
            }
         }
      }
      
      private function §,$L§(param1:Event) : void
      {
         this.setVisible(!this.visible);
         §8"%§.§&S§.§]%R§(this.isVisible());
      }
      
      private function §4%o§(param1:Event) : void
      {
         this.§`$Z§(true);
      }
      
      private function §4!;§(param1:Event) : void
      {
         this.§`$Z§(false);
      }
      
      public function §`$Z§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc3_:String = null;
         var _loc4_:§ "V§ = null;
         this.§1J§ = !param1;
         if(param1)
         {
            this.§5!U§();
         }
         else
         {
            this.setVisible(false);
         }
         this.§@A§.setVisible(param1);
         this.§6$?§.setVisible(!param1);
         for(_loc3_ in this.§"$,§)
         {
            _loc4_ = this.§"$,§[_loc3_];
            if(param2 && _loc3_ == § b§.§?!X§)
            {
               _loc4_.§8%q§(param1 ? §0$N§.CHAT_ENABLED : §0$N§.CHAT_DISABLED);
            }
            _loc4_.setEnabled(param1);
         }
      }
      
      private function §<%Q§(param1:Event) : void
      {
         var _loc3_:§ "V§ = null;
         var _loc7_:String = null;
         if(this.§1J§)
         {
            return;
         }
         this.input.text = §2"e§.§=#$§(§2"e§.§"%i§(this.input.text));
         this.input.text = this.input.text.replace(§7&5§.§%$u§);
         if(!this.input.text || this.input.text == "")
         {
            return;
         }
         var _loc2_:String = this.input.text;
         _loc3_ = this.§5!F§();
         var _loc4_:Boolean = §8"%§.restrictions.§9#]§(§^#§.§2%I§);
         var _loc5_:Boolean = §8"%§.restrictions.§9#]§(§^#§.§+#r§);
         var _loc6_:Boolean = _loc3_.getType() == § b§.§9$@§;
         if(_loc4_ && _loc6_ || _loc5_ && _loc3_.getType() == § b§.§ $3§)
         {
            _loc7_ = §0$N§.CHAT_RESTRICTED + " " + §8"%§.restrictions.§9$#§(_loc6_ ? §^#§.§2%I§ : §^#§.§+#r§);
            this.§>"Q§(_loc7_,0,Application.userProfile,false,_loc3_.getType());
         }
         else
         {
            _loc3_.§+%$§(_loc2_);
            this.§>"Q§(_loc2_,0,Application.userProfile,true,_loc3_.getType());
            if(this.input.text == "/log")
            {
               §=#P§.§="m§();
            }
         }
         this.input.text = "";
      }
      
      public function §>"Q§(param1:String, param2:int = 0, param3:UserProfile = null, param4:Boolean = true, param5:String = "general", param6:Boolean = true, param7:Boolean = true) : void
      {
         var _loc8_:String = null;
         var _loc10_:uint = 0;
         if(param7 && param1.length > §'$[§)
         {
            param1 = param1.substring(0,§'$[§);
         }
         if(param4)
         {
            param1 = param1.replace(§7&5§.§%$u§,"");
         }
         if(param3 != null)
         {
            param1 = §8"%§.§2#<§.§'#X§(param1);
         }
         if(!§4! §.isMe(param3))
         {
            if(!this.§1J§ && param5 != § b§.§"#g§ && param6)
            {
               §@%;§.play(§`!v§.§'%o§);
            }
         }
         param1 = param1.split("&#13;").join("");
         if(param3 != null)
         {
            _loc10_ = §5%8§.§75§(§8"%§.§?!W§.§8T§(param3)).textColor;
            _loc8_ = §2"e§.§6#R§(§4! §.§0!L§(param3) + ":",_loc10_) + §2"e§.§#"I§(param1,"#FFFFFF");
         }
         else
         {
            _loc8_ = §2"e§.§#"I§(param1,"#CDCDCD");
         }
         var _loc9_:§ "V§ = this.§"$,§[param5];
         _loc9_.§8%q§(_loc8_);
         if(Boolean(param3) || param5 == § b§.§"#g§)
         {
            this.§#!s§(_loc9_);
         }
      }
      
      private function §#!s§(param1:§ "V§) : void
      {
         if(!param1.isVisible() && !this.§1J§)
         {
            param1.§@%B§();
         }
      }
      
      public function §>!S§(param1:Boolean) : void
      {
         this.§@#o§.setVisible(param1);
         this.§@A§.setVisible(param1);
         this.§6$?§.setVisible(param1);
      }
      
      public function §#%6§() : void
      {
         if(this.§&$O§)
         {
            return;
         }
         this.§@#o§.setVisible(true);
         this.§&$O§ = true;
         this.setVisible(true);
         this.panel.stage.focus = null;
      }
      
      override public function setVisible(param1:Boolean) : void
      {
         var _loc2_:§ "V§ = null;
         var _loc3_:Boolean = false;
         var _loc4_:§ "V§ = null;
         § $T§ = param1;
         this.visible = param1;
         this.§4%h§(param1);
         if(this.§&$O§ && !this.§&%=§ && !this.§2!i§)
         {
            this.panel.visible = param1;
            § "V§(this.§"$,§[§ b§.§?!X§]).setVisible(param1);
            this.update();
            return;
         }
         if(param1)
         {
            _loc3_ = this.§1J§;
            this.§`$Z§(true,_loc3_);
         }
         this.panel.visible = param1 && !this.§1J§;
         this.input.visible = param1 && !this.§1J§;
         if(param1)
         {
            if(!this.§1J§)
            {
               this.§ "G§();
               _loc4_ = this.§5!F§();
               _loc4_.setVisible(param1);
               for each(_loc2_ in this.§"$,§)
               {
                  if(_loc2_ != _loc4_)
                  {
                     _loc2_.setVisible(!param1);
                  }
               }
            }
         }
         else
         {
            for each(_loc2_ in this.§"$,§)
            {
               _loc2_.setVisible(param1);
            }
            if(!this.§1J§)
            {
               this.§5!U§();
            }
         }
         if(!param1 && this.panel != null && this.panel.stage != null)
         {
            this.panel.stage.focus = § "N§.scene;
         }
         this.inputBg.visible = param1 && !this.§1J§;
         this.sendBtn.setVisible(param1 && !this.§1J§);
         this.update();
      }
      
      public function §5!F§() : § "V§
      {
         var _loc1_:§ "V§ = null;
         for each(_loc1_ in this.§"$,§)
         {
            if(_loc1_.isActive())
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function §5!U§() : void
      {
         this.§5!F§().§5!U§();
         if(Boolean(this.hideTimer) && !this.hideTimer.running)
         {
            this.hideTimer.start();
         }
      }
      
      private function onFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         if(!this.panel.visible)
         {
            _loc2_ = getContainer().x + getContainer().width > Application.instance.mouseX && getContainer().y + this.§-$f§ < Application.instance.mouseY && getContainer().y + getContainer().height - this.§6$?§.height > Application.instance.mouseY;
            this.§5!F§().§4$]§().visible = !_loc2_;
         }
      }
      
      override public function isVisible() : Boolean
      {
         return this.visible;
      }
      
      public function § "G§() : void
      {
         if(this.input.stage != null)
         {
            this.input.stage.focus = this.input;
         }
      }
      
      public function update() : void
      {
         var _loc1_:Boolean = this.§5!F§().§?&2§() == §1!$§.§%%-§;
         if(_loc1_)
         {
            this.§ "G§();
            this.input.type = TextFieldType.INPUT;
         }
         else
         {
            this.input.type = TextFieldType.DYNAMIC;
         }
         this.sendBtn.setDisabled(!_loc1_);
         this.input.selectable = _loc1_;
         this.input.text = "";
         if(Boolean(this.hideTimer) && Boolean(this.hideTimer.running) && !this.§5!F§().§7y§)
         {
            this.hideTimer.stop();
         }
      }
      
      public function §&L§() : TextField
      {
         return this.input;
      }
      
      override public function destroy() : void
      {
         var _loc1_:§ "V§ = null;
         if(this.hideTimer.running)
         {
            this.hideTimer.stop();
         }
         this.hideTimer.removeEventListener(TimerEvent.TIMER,this.onFrame);
         this.input.removeEventListener(KeyboardEvent.KEY_DOWN,this.§8"5§);
         if(this.§#&=§)
         {
            this.§#&=§.stop();
            this.§#&=§.removeEventListener(TimerEvent.TIMER,this.§3R§);
            this.§#&=§ = null;
         }
         for each(_loc1_ in this.§"$,§)
         {
            _loc1_.destroy();
         }
         this.sendBtn.destroy();
         this.§@#o§.destroy();
         this.§@A§.destroy();
         this.§6$?§.destroy();
         super.destroy();
      }
      
      public function §!#9§() : void
      {
         if(!this.§1J§)
         {
            if(this.visible)
            {
               this.setVisible(false);
            }
            else
            {
               this.§`$Z§(false);
            }
         }
         else
         {
            this.setVisible(true);
         }
      }
   }
}


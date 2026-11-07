package §#5§
{
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#%!§.§[N§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§"$7§;
   import §+%S§.§;!4§;
   import §0"L§.§+# §;
   import §0%[§.*;
   import §0%z§.BossAchieveHint;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1#p§.Team;
   import §5"J§.*;
   import §6"'§.§&"3§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §8#o§.§1@§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§<$t§;
   import §?"j§.§]!<§;
   import §?#g§.*;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@!i§.§<#&§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`%&§.§5$1§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.ColiseumError;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.objects.mutators.§'"<§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.facebook.controller.bank.CountryCodeNames;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §9%$§ extends §`&-§
   {
      
      private var §@p§:§8"@§;
      
      private var scrollPanel:§>S§;
      
      private var §8_§:Dictionary = new Dictionary();
      
      private var §<"k§:Array = [];
      
      public function §9%$§(param1:DisplayObjectContainer)
      {
         super(param1);
         this.§@p§ = §!&5§.§;#z§(getChildByName("btn"));
         this.§@p§.addEventListener(§8"@§.EVENT_TOGGLE,this.§#"k§);
         this.scrollPanel = new §>S§(§'$a§("scrollPanel"));
         this.scrollPanel.setVisible(false);
         Application.instance.addEventListener(MouseEvent.MOUSE_DOWN,this.§4$4§);
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §<"b§ = true;
      }
      
      private function §#"k§(param1:Event) : void
      {
         this.scrollPanel.setVisible(this.§@p§.isPressed());
      }
      
      public function §1%Q§(param1:Dictionary) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:uint = 0;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:* = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:§8"@§ = null;
         _loc2_ = this.scrollPanel.§'$a§("content");
         if(_loc2_.numChildren)
         {
            _loc6_ = int(_loc2_.numChildren - 1);
            while(_loc6_ > -1)
            {
               if(_loc2_.getChildAt(_loc6_) is SimpleButton)
               {
                  _loc2_.removeChildAt(_loc6_);
               }
               _loc6_--;
            }
         }
         _loc3_ = 0;
         for(_loc4_ in param1)
         {
            _loc7_ = CountryCodeNames.getCountryNameByCode(_loc4_);
            this.§<"k§.push({
               "code":_loc4_,
               "name":_loc7_
            });
         }
         this.§<"k§.sortOn("name");
         for each(_loc5_ in this.§<"k§)
         {
            _loc8_ = _loc5_.name;
            _loc9_ = §!&5§.§;#z§(§6#A§.§]#$§("CountryBtn"));
            _loc9_.setText(_loc8_,§"-§.§+$m§);
            _loc9_.x = 1;
            _loc9_.y = 31 * _loc3_;
            _loc9_.§[!u§(this.§3$$§);
            _loc2_.addChild(_loc9_.simpleButton);
            if(_loc3_ == 0)
            {
               this.§@p§.setText(_loc8_,§"-§.§+$m§);
               _loc9_.setPressed(true);
            }
            this.§8_§[_loc5_.code] = _loc9_;
            _loc3_++;
         }
         this.scrollPanel.update();
      }
      
      public function §5&%§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:§8"@§ = null;
         var _loc2_:String = CountryCodeNames.getCountryNameByCode(param1);
         this.§@p§.setText(_loc2_,§"-§.§+$m§);
         for(_loc3_ in this.§8_§)
         {
            _loc4_ = this.§8_§[_loc3_];
            _loc4_.setPressed(_loc3_ == param1);
         }
      }
      
      private function §3$$§(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:§8"@§ = null;
         var _loc2_:§8"@§ = §8"@§(param1.target);
         this.§@p§.setPressed(false);
         for(_loc3_ in this.§8_§)
         {
            var _temp_1:* = this.§8_§[_loc3_];
            _loc4_ = this.§8_§[_loc3_];
            if(_loc4_ == _loc2_)
            {
               this.§+#J§(_loc3_);
               _loc4_.setPressed(true);
            }
            else
            {
               _loc4_.setPressed(false);
            }
         }
      }
      
      private function §4$4§(param1:MouseEvent) : void
      {
         if(!this.scrollPanel.getContainer().hitTestPoint(param1.stageX,param1.stageY,true))
         {
            this.scrollPanel.setVisible(false);
            this.§@p§.setPressed(false);
         }
      }
      
      private function §+#J§(param1:String) : void
      {
         var _loc2_:String = CountryCodeNames.getCountryNameByCode(param1);
         this.§@p§.setText(_loc2_,§"-§.§+$m§);
         dispatchEvent(new §!&"§(param1));
      }
      
      public function §5!2§() : String
      {
         return this.§<"k§.length ? this.§<"k§[0].code : "";
      }
      
      override public function destroy() : void
      {
         var _loc1_:§8"@§ = null;
         super.destroy();
         for each(_loc1_ in this.§8_§)
         {
            _loc1_.destroy();
            this.§@p§.destroy();
         }
         Application.instance.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4$4§);
      }
   }
}


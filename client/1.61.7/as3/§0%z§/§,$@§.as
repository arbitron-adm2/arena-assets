package §0%z§
{
   import § m§.§9!^§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#%!§.§%&F§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §-@§.§5"4§;
   import §-G§.*;
   import §0%[§.§0%§;
   import §1#p§.*;
   import §2!-§.§'5§;
   import §2"L§.§,'§;
   import §4!x§.§@& §;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §9![§.§^§;
   import §9"-§.§?!s§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[!O§.§1#i§;
   import §]$v§.*;
   import §^#[§.§?"&§;
   import com.inreflected.forks.spark.effects.animation.MotionPath;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.server.PvpStartTurn;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §,$@§ extends §@& § implements §^c§
   {
      
      private var §-i§:§<$]§;
      
      private var awardLabel:TextField;
      
      protected var §9#S§:TextField;
      
      protected var § %S§:TextField;
      
      private var §8§:MovieClip;
      
      private var §-$r§:§?%>§;
      
      protected var back:Array = [];
      
      protected var §-"O§:§6$3§;
      
      private var level:int;
      
      private var §!#R§:Vector.<MovieClip>;
      
      public function §,$@§(param1:§6$3§, param2:int)
      {
         super(§6#A§.§!&6§("AchievLevelUpMessage"));
         this.§-"O§ = param1;
         this.level = param2;
         this.§5!h§(this.§-"O§);
         this.awardLabel = §'%s§("awardLabel");
         this.awardLabel.text = " ";
         this.§9#S§ = §'%s§("nameAchiev");
         this.§ %S§ = §'%s§("descrAchiev");
         this.§8§ = §'$a§("priceContainer");
         this.§-$r§ = §!&5§.§7#[§(getChildByName("shareAchiev_btn"));
         this.§-$r§.setText(§0$N§.BTN_SHARE_NAME,§"-§.§+$m§);
         if(param1 is §'%u§)
         {
            this.§-$r§.setDisabled(param1.id == BossAchieves.ADD_IN_MENU);
         }
         var _loc3_:int = 0;
         while(_loc3_ < 3)
         {
            this.back.push(§'$a§("backLevel" + _loc3_));
            this.back[_loc3_].visible = false;
            _loc3_++;
         }
         this.§9%C§(this.§-"O§);
         this.§7&1§(param1.levels[param2]);
         this.back[param2].visible = true;
         y = Application.instance.§[^§ - height - height * 0.7;
         var _loc4_:MovieClip = §'$a§("animCont");
         if(_loc4_)
         {
            this.§!#R§ = §3!3§.§#"R§(_loc4_);
         }
      }
      
      protected function §5!h§(param1:§6$3§) : void
      {
         var _loc2_:§,$h§ = §%#c§.§"",§(param1.id);
         this.§-i§ = new §<$]§(§'$a§("achievIcon"),this.level,_loc2_);
         this.§-i§.setIconLevel(this.level);
         this.§-i§.setAchievIcon(param1.levels[this.level].icon);
      }
      
      protected function §9%C§(param1:§6$3§) : void
      {
         var _loc2_:String = param1.levels[this.level].name;
         this.§9#S§.text = _loc2_.indexOf(":") == -1 ? §0%§.format(§0$N§.ACHIEV_LEVELUP_TITLE,{"name":_loc2_}) : _loc2_;
         this.§ %S§.text = param1.§]G§(this.level);
      }
      
      protected function §>!M§(param1:MouseEvent = null) : void
      {
         Social.§!g§.§3!S§(this.§-"O§,this.level,this.§-i§.§`#f§());
         this.§0!j§(param1);
      }
      
      private function §7&1§(param1:§`"w§) : void
      {
         var _loc2_:§`&-§ = null;
         var _loc4_:§`&-§ = null;
         var _loc6_:MovieClip = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:Number = NaN;
         this.§'#h§(param1);
         this.§`$u§();
         _loc2_ = new §`&-§(§'$a§("priceContainer." + param1.reward.type));
         _loc2_.setVisible(true);
         var _loc3_:TextField = _loc2_.§'%s§("value");
         _loc3_.autoSize = TextFieldAutoSize.LEFT;
         _loc3_.text = String(param1.reward.count);
         _loc2_.x = 0;
         §`o§.§4%4§(this.§8§,this.§ %S§);
         _loc4_ = new §`&-§(§'$a§("points"));
         _loc4_.setVisible(param1.points > 0);
         var _loc5_:TextField = _loc4_.§'%s§("value");
         _loc5_.autoSize = TextFieldAutoSize.LEFT;
         _loc5_.text = String(param1.points);
         if(param1.points == 0)
         {
            _loc6_ = MovieClip(this.back[this.level]);
            _loc7_ = _loc6_.getChildByName("roundBack");
            _loc8_ = _loc7_.x;
            _loc7_.x = _loc4_.x - _loc6_.x;
            this.§8§.x += _loc7_.x - _loc8_;
            this.§ %S§.width = 250;
         }
      }
      
      private function §'#h§(param1:§`"w§) : void
      {
         var _loc2_:UserProfile = Application.userProfile;
         switch(param1.reward.type)
         {
            case §1&6§.FUZY.value:
               _loc2_.§2Z§(param1.reward.count,§+$A§.INGAME);
               break;
            case §1&6§.RUBY.value:
               _loc2_.§2Z§(param1.reward.count,§+$A§.REAL);
               break;
            case §1&6§.REACTION.value:
               _loc2_.§%`§(param1.reward.count);
         }
         Application.§5!>§.§8$w§();
      }
      
      private function §`$u§() : void
      {
         var _loc1_:MovieClip = null;
         for each(_loc1_ in this.§8§)
         {
            _loc1_.visible = false;
         }
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §0#P§ = true;
         §=%1§ = §5!r§.§7!$§;
         §%%R§ = §`!v§.§^""§;
         §<"b§ = true;
      }
      
      override protected function §0!j§(param1:MouseEvent) : void
      {
         this.§-$r§.removeHandler(this.§>!M§);
         super.§0!j§(param1);
         dispatchEvent(new Event(Event.CLOSE));
      }
      
      override public function show(param1:Boolean = true) : void
      {
         this.§-$r§.§[!u§(this.§>!M§);
         super.show(false);
         this.playAnimations();
      }
      
      override public function destroy() : void
      {
         if(this.§-i§)
         {
            this.§-i§.destroy();
         }
         super.destroy();
      }
      
      override public function hide() : void
      {
         if(this.§-i§)
         {
            this.§-i§.stopAnimations();
         }
         this.stopAnimations();
         super.hide();
      }
      
      public function playAnimations() : void
      {
         if(isShown())
         {
            §3!3§.§<%W§(this.§!#R§);
            if(this.§-i§)
            {
               this.§-i§.playAnimations();
            }
         }
      }
      
      public function stopAnimations() : void
      {
         if(this.§-i§)
         {
            this.§-i§.stopAnimations();
         }
         §3!3§.§>!j§(this.§!#R§);
      }
   }
}


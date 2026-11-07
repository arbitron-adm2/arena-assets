package §@"x§
{
   import § #m§.§;#^§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §!L§.§7%0§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §,$J§.§,$O§;
   import §0%z§.*;
   import §2"L§.§,'§;
   import §2#i§.§+%z§;
   import §2o§.§]#@§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4!x§.§@& §;
   import §5!,§.§9$h§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §8#<§.§!#^§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=#g§.§&%5§;
   import §=$#§.§1!$§;
   import §>%I§.§`!g§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@$v§.§%3§;
   import §@<§.§+%]§;
   import §[$<§.§>!u§;
   import §]$J§.§#"s§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.TweenMax;
   import config.achievements.§"!&§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.ArenaLocked;
   import ru.pragmatix.wormix.messages.server.EnterAccount;
   import ru.pragmatix.wormix.messages.server.StartBattleResult;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §2#E§ extends §@& §
   {
      
      private static const §5$h§:int = 6;
      
      private var buttons:Vector.<§?%>§> = new Vector.<§?%>§>(0);
      
      private var §2&B§:Vector.<§&%5§> = new Vector.<§&%5§>(0);
      
      private var §>"0§:int;
      
      private var §="D§:int;
      
      private var §'"P§:int;
      
      private var callback:Function;
      
      public function §2#E§(param1:DisplayObjectContainer, param2:Function)
      {
         var _loc5_:DisplayObject = null;
         var _loc6_:§?%>§ = null;
         var _loc3_:Sprite = §3!3§.§-"9§(param1.getChildByName("resolutionBtn1"),null,false,false,false,false,false,true,false);
         super(_loc3_);
         this.callback = param2;
         var _loc4_:int = 1;
         while(_loc4_ < §5$h§ + 1)
         {
            if(_loc4_ == 1)
            {
               _loc5_ = _loc3_.getChildByName("resolutionBtn" + _loc4_);
            }
            else
            {
               _loc5_ = param1.getChildByName("resolutionBtn" + _loc4_);
               §3!3§.§-"9§(_loc5_,_loc3_,false,false,false,false,false,true,false);
            }
            var _temp_1:* = §!&5§.§7#[§(_loc5_);
            _loc6_ = §!&5§.§7#[§(_loc5_);
            _loc6_.removeAllWhenDisabled = true;
            _loc6_.§[!u§(this.§,$i§);
            this.buttons.push(_loc6_);
            _loc4_++;
         }
      }
      
      public function update() : void
      {
         var _loc6_:Boolean = false;
         var _loc1_:int = 0;
         var _loc2_:uint = this.buttons.length;
         while(_loc1_ < _loc2_)
         {
            this.buttons[_loc1_].setVisible(false);
            _loc1_++;
         }
         this.§2&B§.length = 0;
         var _loc3_:§&%5§ = §8"%§.§^%W§.§%%q§();
         var _loc4_:§&%5§ = §8"%§.§^%W§.§0s§();
         var _loc5_:Vector.<§&%5§> = §8"%§.§^%W§.§=%!§();
         this.§'"P§ = _loc5_.length;
         this.§>"0§ = -1;
         _loc1_ = 0;
         while(_loc1_ < this.§'"P§ && _loc1_ < _loc2_)
         {
            if(_loc3_.§[!d§(_loc5_[_loc1_]))
            {
               _loc6_ = true;
               this.§>"0§ = _loc1_;
            }
            this.§^!-§(_loc1_,_loc5_[_loc1_],_loc6_ && this.§>"0§ == _loc1_);
            if(_loc6_)
            {
            }
            _loc1_++;
         }
         if(_loc6_)
         {
            return;
         }
         this.§^!-§(this.§2&B§.length,_loc3_,true);
      }
      
      private function §^!-§(param1:uint, param2:§&%5§, param3:Boolean) : void
      {
         this.buttons[param1].setVisible(true);
         this.buttons[param1].setText((param3 ? "*** " : "") + param2.§@%<§() + " x " + param2.§'$#§() + (param3 ? " ***" : ""));
         this.§2&B§[param1] = param2;
         if(§8"%§.§^%W§.§0s§().§[!d§(param2))
         {
            this.buttons[param1].setDisabled(true);
            this.§="D§ = param1;
         }
         if(param3 && this.§>"0§ == -1)
         {
            this.§>"0§ = param1;
         }
      }
      
      private function §,$i§(param1:MouseEvent) : void
      {
         var _loc4_:§?%>§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = int(this.buttons.length);
         while(_loc2_ < _loc3_)
         {
            _loc4_ = this.buttons[_loc2_];
            if(_loc4_.§8,§())
            {
               _loc4_.setDisabled(false);
               break;
            }
            _loc2_++;
         }
         §?%>§(param1.currentTarget).setDisabled(true);
         _loc2_ = this.buttons.indexOf(param1.currentTarget);
         §8"%§.§^%W§.changeResolution(this.§2&B§[_loc2_]);
         this.§="D§ = _loc2_;
         this.callback(this.§="D§);
      }
      
      public function reset() : void
      {
         var _loc1_:§?%>§ = null;
         this.§="D§ = this.§>"0§;
         for each(_loc1_ in this.buttons)
         {
            if(_loc1_.§8,§())
            {
               _loc1_.setDisabled(false);
            }
         }
         this.buttons[this.§>"0§].setDisabled(true);
         §8"%§.§^%W§.changeResolution(this.§2&B§[this.§>"0§]);
         this.callback(this.§>"0§);
      }
      
      public function getValue() : int
      {
         return this.§="D§;
      }
      
      public function get isDefault() : Boolean
      {
         return this.§="D§ == this.§>"0§;
      }
      
      override public function destroy() : void
      {
         super.destroy();
      }
   }
}


package §["3§
{
   import § #m§.§;#^§;
   import § $q§.§3U§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.*;
   import §-8§.*;
   import §0%[§.§9&#§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §2!-§.DamageEvent;
   import §2#x§.§0"`§;
   import §2B§.§#&E§;
   import §4!x§.§@& §;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§=?§;
   import §8$Z§.§9"t§;
   import §<!^§.§["l§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §@!N§.§&#Z§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@$v§.§%3§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]#[§.*;
   import §]$v§.*;
   import config.achievements.§"!&§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.messages.structures.*;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.ServerCommands;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   
   public class CraftEquipCompleteDialog extends §@& §
   {
      
      private const §8$s§:String = "#58FF00";
      
      private const §=%y§:String = "#FFFFFF";
      
      private var §"N§:§&!e§;
      
      private var §0#X§:§?%>§;
      
      private var rows:Vector.<BonusRow>;
      
      public function CraftEquipCompleteDialog(param1:CraftedEquipFamily = null, param2:int = -1)
      {
         super(§6#A§.§!&6§(§+"'§.§0#x§));
         var _loc3_:DisplayObject = §4"0§.§##W§(§#!`§(),"postBtn",§4"0§.§`a§);
         _loc3_.parent["borderDark"].visible = false;
         this.§0#X§ = §!&5§.§7#[§(_loc3_);
         this.§0#X§.§[!u§(this.§6g§);
         this.§0#X§.setText(§0$N§.BTN_SHARE_NAME,§"-§.§+$m§);
         this.init(param1,param2);
      }
      
      public function init(param1:CraftedEquipFamily, param2:int) : void
      {
         var _loc7_:TextField = null;
         var _loc8_:int = 0;
         var _loc11_:BonusRow = null;
         var _loc12_:int = 0;
         var _loc13_:§`&-§ = null;
         this.§"N§ = §<$c§.§8&E§(param2,§@&&§.getProfile().getRace()) as §=?§;
         §>!-§.setText(§<"G§.§%! §("CRAFT_COMPLETE_POPUP_BTN"),§"-§.§+$m§);
         var _loc3_:§3U§ = new §3U§(§'$a§("itemIconContainer").getChildByName("icon"),true);
         _loc3_.setItem(this.§"N§);
         this.rows = new Vector.<BonusRow>(0);
         var _loc4_:Dictionary = this.§?^§(param1);
         var _loc5_:Dictionary = this.§4`§(param1,param2);
         var _loc6_:String = this.§?&&§(_loc4_,_loc5_);
         _loc6_ = _loc6_ + this.§'!D§(_loc4_,_loc5_);
         _loc7_ = §'%s§("description");
         _loc8_ = _loc7_.height;
         _loc7_.mouseEnabled = false;
         _loc7_.htmlText = "<b>" + _loc6_ + "</b>";
         _loc7_.x += 15;
         var _loc9_:int = _loc7_.numLines * _loc7_.getLineMetrics(0).height;
         if(_loc9_ > _loc8_)
         {
            _loc12_ = Math.max(0,_loc9_ - _loc8_ - 15);
            _loc7_.height = _loc9_;
            getChildByName("bottomBG").y = getChildByName("bottomBG").y + _loc12_;
            getChildByName("stretchableBG").height = getChildByName("stretchableBG").height + _loc12_;
            §>!-§.y += _loc12_;
            this.§0#X§.y += _loc12_;
         }
         var _loc10_:int = 0;
         for each(_loc11_ in this.rows)
         {
            _loc13_ = this.§"!Y§(_loc11_.bonus,_loc11_.text);
            _loc13_.y = _loc7_.y + _loc10_;
            _loc10_ += _loc13_.height;
            _loc13_.x = _loc7_.x;
         }
         _loc7_.visible = false;
      }
      
      private function §?^§(param1:CraftedEquipFamily) : Dictionary
      {
         var _loc3_:§@"I§ = null;
         var _loc2_:Dictionary = new Dictionary();
         for each(_loc3_ in param1.§]%t§().§<%i§())
         {
            _loc2_[_loc3_.getType().§7%z§()] = _loc3_;
            this.rows.push(new BonusRow(_loc3_.getType()));
         }
         return _loc2_;
      }
      
      private function §4`§(param1:CraftedEquipFamily, param2:int) : Dictionary
      {
         var _loc4_:§5%>§ = null;
         var _loc5_:Vector.<§@"I§> = null;
         var _loc6_:§@"I§ = null;
         var _loc3_:Dictionary = new Dictionary();
         for each(_loc4_ in param1.§1#§())
         {
            if(_loc4_.§&!H§() == param2)
            {
               §1!S§.§ "4§(_loc4_,§'%s§("title"));
               _loc5_ = _loc4_.getBonusList().§<%i§();
               for each(_loc6_ in _loc5_)
               {
                  _loc3_[_loc6_.getType().§7%z§()] = _loc6_;
                  this.§7d§(_loc6_.getType());
               }
               return _loc3_;
            }
         }
         return _loc3_;
      }
      
      private function §7d§(param1:Bonus) : void
      {
         var _loc2_:* = int(this.rows.length - 1);
         while(_loc2_ > -1)
         {
            if(this.rows[_loc2_].bonus.§7%z§() == param1.§7%z§())
            {
               return;
            }
            _loc2_--;
         }
         this.rows.push(new BonusRow(param1));
      }
      
      private function §?&&§(param1:Dictionary, param2:Dictionary) : String
      {
         var _loc4_:String = null;
         var _loc5_:§@"I§ = null;
         var _loc6_:Bonus = null;
         var _loc3_:String = "";
         for each(_loc5_ in param1)
         {
            _loc6_ = _loc5_.getType();
            if(_loc5_.§17§())
            {
               _loc4_ = §2"e§.§#"I§(_loc5_.§@$+§() + ": " + _loc5_.§'$o§(),this.§=%y§) + " " + this.§6§(param2,_loc6_);
            }
            else if(!param2[_loc6_.§7%z§()])
            {
               _loc4_ = §2"e§.§#"I§(_loc5_.§@$+§(),this.§=%y§);
            }
            _loc3_ += _loc4_ + "\n";
            this.§+#]§(_loc6_,_loc4_);
         }
         return _loc3_;
      }
      
      private function §+#]§(param1:Bonus, param2:String) : void
      {
         var _loc3_:BonusRow = null;
         for each(_loc3_ in this.rows)
         {
            if(_loc3_.bonus == param1)
            {
               _loc3_.text = param2;
               break;
            }
         }
      }
      
      private function §'!D§(param1:Dictionary, param2:Dictionary) : String
      {
         var _loc4_:String = null;
         var _loc5_:§@"I§ = null;
         var _loc6_:int = 0;
         var _loc7_:§@"I§ = null;
         var _loc3_:String = "";
         for each(_loc5_ in param2)
         {
            if(_loc5_.§17§())
            {
               _loc4_ = §2"e§.§#"I§(_loc5_.§@$+§() + ": " + _loc5_.§'$o§(),this.§8$s§);
            }
            else
            {
               _loc6_ = _loc5_.getValue();
               _loc7_ = param1[_loc5_.getType().§7%z§()] as §@"I§;
               if(_loc7_)
               {
                  _loc6_ += _loc7_.getValue();
               }
               _loc4_ = §2"e§.§#"I§(_loc5_.§@$+§(_loc6_),this.§8$s§);
            }
            _loc3_ += _loc4_ + "\n";
            this.§+#]§(_loc5_.getType(),_loc4_);
         }
         return _loc3_;
      }
      
      private function §6§(param1:Dictionary, param2:Bonus) : String
      {
         var _loc4_:§@"I§ = null;
         var _loc3_:String = "";
         if(param1[param2.§7%z§()])
         {
            _loc4_ = §@"I§(param1[param2.§7%z§()]);
            _loc3_ = _loc4_.§'$o§();
            if(_loc3_.charAt(0) != "+")
            {
               _loc3_ = (_loc4_.getValue() > 0 ? "+" : "") + _loc3_;
            }
            delete param1[param2.§7%z§()];
         }
         return §2"e§.§#"I§(_loc3_,this.§8$s§);
      }
      
      private function §6g§(param1:Event) : void
      {
         Social.§!g§.§[%,§(this.§"N§);
         hide();
      }
      
      private function §"!Y§(param1:Bonus, param2:String) : §`&-§
      {
         var _loc5_:Sprite = null;
         var _loc3_:§`&-§ = new §`&-§(new Sprite());
         var _loc4_:TextField = new TextField();
         _loc4_.width = getChildByName("description").width - 10;
         _loc4_.setTextFormat(new TextFormat("Arial"));
         _loc4_.htmlText = "<b>" + param2 + "</b>";
         _loc4_.mouseEnabled = false;
         _loc4_.multiline = true;
         _loc4_.wordWrap = true;
         _loc4_.autoSize = TextFieldAutoSize.LEFT;
         addChild(_loc3_);
         _loc3_.§?!C§(_loc4_);
         if(param1.§2!q§())
         {
            _loc5_ = §&#Z§.§@"R§(param1.§2!q§(),20);
            _loc3_.§?!C§(_loc5_);
            _loc5_.y = -1;
            _loc4_.x = _loc5_.width + 5;
            _loc5_.getChildByName("back").visible = false;
            _loc4_.width = getChildByName("description").width - 30;
         }
         return _loc3_;
      }
   }
}

import ru.pragmatix.wormix.model.bonus.Bonus;

class BonusRow
{
   
   public var bonus:Bonus;
   
   public var text:String;
   
   public function BonusRow(param1:Bonus)
   {
      super();
      this.bonus = param1;
   }
}

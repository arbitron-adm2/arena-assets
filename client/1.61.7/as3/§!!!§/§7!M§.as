package §!!!§
{
   import § !8§.§`!d§;
   import § #9§.§"$t§;
   import §!%6§.§56§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §%"1§.§@%;§;
   import §%L§.§%§;
   import §%L§.§%%w§;
   import §&&6§.*;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §-&5§.§1"p§;
   import §-G§.§&"7§;
   import §0%[§.§1%"§;
   import §2#V§.§-#U§;
   import §2#i§.§+%z§;
   import §4!!§.§76§;
   import §4$b§.§6!G§;
   import §6#Z§.§&!Z§;
   import §7$t§.§??§;
   import §8$V§.§]!i§;
   import §9%W§.§&!P§;
   import §9%W§.§`"y§;
   import §<%k§.§`!v§;
   import §=&!§.§4$z§;
   import §=&!§.§<$Z§;
   import §=7§.*;
   import §?#g§.§&"P§;
   import §?#g§.Race;
   import §?$K§.§3#j§;
   import §?$L§.§&$9§;
   import §@!N§.§&#Z§;
   import §@!i§.§"-§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import config.§9+§;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§""t§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.main.server.InviteFriendToClan;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.common.post.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§6Y§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§>!n§;
   import ru.pragmatix.wormix.utils.§]V§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §7!M§ extends §1"p§
   {
      
      private var leaderAbilities:TextField;
      
      private var priceLabel:TextField;
      
      private var §3%S§:TextField;
      
      private var §;E§:§+$k§;
      
      private var §>"-§:§@!D§;
      
      private var §!#N§:Sprite;
      
      private var profile:UserProfile;
      
      public function §7!M§(param1:DisplayObject)
      {
         super(param1 as DisplayObjectContainer);
         this.priceLabel = §'%s§("priceLabel");
         this.§3%S§ = §'%s§("free");
         §7&5§.§>&<§(this.§3%S§,§0$N§.PRICE_FREE);
         §7&5§.§>&<§(this.priceLabel,§0$N§.PRICE_LABEL);
         §7&5§.§>&<§(§7%&§,§0$N§.SHOP_BUY_FOR_REAL_MONEY);
         §7&5§.§>&<§(§'%s§("abilities"),§0$N§.ABILITIES_LABEL);
         §7&5§.§>&<§(§'%s§("leaderAbilities"),§0$N§.LEADERSHIP_LABEL);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         §8l§ = "raceName";
         §>$i§ = "raceDescr";
         §;$1§ = false;
         super.§@"o§(param1);
         levelLabel.autoSize = TextFieldAutoSize.LEFT;
         §7&5§.§>&<§(levelLabel,§0$N§.SHOP_REQUIRED_LEVEL + ":");
         §^"o§.visible = false;
         §^"o§.autoSize = TextFieldAutoSize.CENTER;
         this.§;E§ = new §+$k§(§'$a§("abilitiesContainer"));
         this.§>"-§ = new §@!D§(§'$a§("skinsPanel"));
         §=!T§.y -= 10;
         levelLabel.y -= 10;
         this.§>"-§.y += 10;
      }
      
      public function initFromProfile(param1:UserProfile) : void
      {
         this.profile = param1;
         this.§>"-§.initFromProfile(param1);
      }
      
      override public function setItem(param1:§??§) : void
      {
         var _loc2_:§`!d§ = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc13_:Number = NaN;
         var _loc14_:String = null;
         var _loc15_:DisplayObject = null;
         var _loc16_:String = null;
         var _loc17_:Sprite = null;
         var _loc18_:Number = NaN;
         _loc2_ = param1 as §`!d§;
         _loc3_ = _loc2_.§4$n§();
         _loc4_ = _loc2_.getRealPrice();
         var _loc5_:Boolean = Boolean(_loc3_) || Boolean(_loc4_);
         if(_loc3_)
         {
            §7&5§.§?$k§(priceContainer.§'%s§("price.value"),_loc3_.toString());
         }
         if(_loc4_)
         {
            §7&5§.§?$k§(priceContainer.§'%s§("realPrice.value"),_loc4_.toString());
         }
         super.setItem(param1);
         if(Boolean(this.§!#N§) && Boolean(this.§!#N§.parent))
         {
            this.§!#N§.parent.removeChild(this.§!#N§);
         }
         this.§3%S§.visible = !_loc5_;
         §7&5§.§>&<§(§4&D§,_loc2_.§7%z§());
         §7&5§.§?$k§(§=!T§,param1.§,X§().toString());
         §=!T§.x = levelLabel.x + levelLabel.width;
         this.§;E§.update(_loc2_);
         var _loc6_:Boolean = _loc2_.equals(this.profile.getRace());
         var _loc7_:Boolean = _loc2_.equals(Race.ALIEN.§]!D§());
         var _loc8_:Boolean = §]V§.§ $l§(_loc2_.getId(),this.profile);
         var _loc9_:Boolean = §6Y§.§%"@§(_loc2_.getId());
         var _loc10_:Boolean = this.profile.§;$F§().length == 1;
         this.§5%0§(_loc9_,_loc2_);
         var _loc11_:DisplayObject = getChildByName("wings");
         _loc11_.visible = false;
         _loc11_.y = this.§>"-§.y + 100;
         if(_loc8_)
         {
            _loc13_ = this.§>"-§.isVisible() ? 30 : -20;
            if(_loc6_)
            {
               if(_loc10_)
               {
                  _loc14_ = §0$N§.RACES_OVERVIEW_LABEL;
               }
               else
               {
                  _loc14_ = _loc9_ ? "" : §0$N§.ALREADY_SELECTED_LABEL;
                  _loc11_.visible = true;
               }
            }
            else if(§]!i§.§2!M§)
            {
               _loc11_.visible = true;
               _loc14_ = §0$N§.CAN_SELECT_LABEL;
               _loc13_ = Number(this.§>"-§.isVisible() ? 5 : -10);
            }
            else
            {
               _loc11_.visible = !this.§>"-§.isVisible();
               _loc14_ = §0$N§.FREE_RACE_LEFT_MESSAGE + "\n" + §]!i§.§6$§;
            }
            §7&5§.§>&<§(§^"o§,_loc14_);
            §^"o§.visible = _loc10_ || !_loc6_ && (!_loc9_ || !§]!i§.§2!M§);
            _loc15_ = getChildByName("heightBlock");
            §^"o§.y = _loc15_.y + (_loc15_.height - §^"o§.height) * 0.5 + _loc13_;
            priceContainer.setVisible(false);
            levelLabel.visible = §=!T§.visible = this.priceLabel.visible = §7%&§.visible = false;
         }
         else
         {
            §^"o§.visible = false;
            priceContainer.setVisible(!_loc7_);
            levelLabel.visible = §=!T§.visible = this.priceLabel.visible = §7%&§.visible = !_loc7_;
            this.priceLabel.y = this.§>"-§.y + this.§>"-§.height + (_loc9_ ? 0 : -20);
            priceContainer.y = this.§>"-§.y + this.§>"-§.height + (_loc9_ ? 20 : 0);
            §7%&§.y = levelLabel.y + 15;
         }
         var _loc12_:TextFormat = §4&D§.getTextFormat();
         if(_loc2_.§<"Y§())
         {
            if(Boolean(this.§!#N§) && Boolean(this.§!#N§.parent))
            {
               this.§!#N§.parent.removeChild(this.§!#N§);
            }
            this.§!#N§ = new Sprite();
            §?!C§(this.§!#N§);
            for each(_loc16_ in _loc2_.§<"Y§())
            {
               _loc17_ = §&#Z§.§@"R§(_loc16_,§4&D§.height);
               _loc18_ = this.§!#N§.width;
               this.§!#N§.addChild(_loc17_);
               _loc17_.x = _loc18_;
            }
            _loc12_.align = TextFormatAlign.LEFT;
            §4&D§.x = getChildByName("rightPanel").x + 30;
            this.§!#N§.x = §4&D§.x + §4&D§.width - this.§!#N§.width - 38;
            this.§!#N§.y = §4&D§.y;
         }
         else
         {
            _loc12_.align = TextFormatAlign.CENTER;
            §4&D§.x = getChildByName("rightPanel").x + 10;
         }
         §4&D§.setTextFormat(_loc12_);
      }
      
      private function §5%0§(param1:Boolean, param2:§`!d§) : void
      {
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         var _loc6_:§&"P§ = null;
         var _loc7_:int = 0;
         this.§>"-§.setVisible(param1);
         if(param1)
         {
            _loc3_ = [];
            _loc4_ = 0;
            while(_loc4_ < §9+§.§3%7§)
            {
               _loc3_.push(param2);
               _loc4_++;
            }
            this.§>"-§.setData(_loc3_);
            this.§>"-§.update();
            _loc5_ = §]V§.§ $l§(param2.getId(),this.profile);
            _loc6_ = _loc5_ ? §6Y§.§?#`§(this.profile.§1$4§(),param2.getId()) : §&"P§.§!%4§(param2.getId());
            _loc7_ = _loc6_.§7"=§();
            this.§>"-§.§,"l§(_loc7_ - int(_loc7_ / 10) * 10);
         }
      }
      
      public function get skinsPanel() : §@!D§
      {
         return this.§>"-§;
      }
   }
}


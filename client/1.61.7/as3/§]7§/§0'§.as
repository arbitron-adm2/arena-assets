package §]7§
{
   import § !P§.§9%Z§;
   import § $q§.§3U§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#P§.§`o§;
   import §%"1§.§=#?§;
   import §%# §.§@a§;
   import §&!@§.§5"`§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!%§;
   import §'!Z§.§2!H§;
   import §+$=§.§6#A§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0&F§.§!!c§;
   import §3#a§.§-#M§;
   import §4$b§.*;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §^4§.§]"8§;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §0'§ extends §,#W§
   {
      
      private var message:WithdrawSeasonWeaponsResult;
      
      private var §<%!§:§`&-§;
      
      private var rows:uint = 0;
      
      private var callback:Function;
      
      public function §0'§(param1:String, param2:String, param3:int, param4:Function = null, param5:§=#?§ = null, param6:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,§+"'§.§+D§,param6);
      }
      
      public static function §5%#§(param1:WithdrawSeasonWeaponsResult, param2:Function) : §0'§
      {
         var _loc3_:§0'§ = null;
         var _loc5_:TextField = null;
         var _loc8_:TextField = null;
         var _loc9_:DisplayObject = null;
         var _loc10_:TextField = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:Number = NaN;
         var _loc13_:MovieClip = null;
         var _loc14_:int = 0;
         _loc3_ = new §0'§("","",§,#W§.§6!m§,null,null,true);
         _loc3_.§-#4§(param1);
         _loc3_.callback = param2;
         var _loc4_:TextFormat = new TextFormat(§"-§.§@%f§.fontName,14,8609617);
         _loc5_ = _loc3_.§'%s§("msg");
         _loc5_.setTextFormat(_loc4_);
         §&$9§.§>&F§(_loc5_,_loc4_,§0$N§.SEASON_WEAPON_COMPENSATED);
         _loc5_.width = _loc3_.width - 80;
         _loc5_.y = _loc3_.§'%s§("title").y;
         §`o§.§%&%§(_loc5_);
         _loc3_.§<%!§.y = _loc5_.y + _loc5_.height + 15;
         var _loc6_:TextField = _loc3_.§'%s§("msg2");
         var _loc7_:TextField = _loc3_.§'%s§("fuzyTotal");
         _loc8_ = _loc3_.§'%s§("keysTotal");
         _loc9_ = _loc3_.getChildByName("fuzyIcon");
         _loc10_ = _loc3_.§'%s§("subtitle");
         _loc11_ = _loc3_.§%!K§(_loc3_.§>!-§,_loc3_.§!S§);
         if(param1.compensationInMoney > 0)
         {
            §&$9§.§>&F§(_loc6_,_loc4_,§0$N§.SEASON_WEAPON_COMPENSATION);
            §`o§.§%&%§(_loc6_);
            _loc6_.width = _loc3_.width - 80;
            _loc6_.y = _loc3_.§<%!§.y + _loc3_.§<%!§.height;
            §`o§.§%&%§(_loc6_);
            §&$9§.§>&F§(_loc10_,_loc4_," ");
            _loc10_.y = _loc3_.§<%!§.y + _loc3_.§<%!§.height;
            _loc12_ = _loc3_.height - 125;
            §&$9§.§>&F§(_loc7_,§"-§.§6"j§,param1.compensationInMoney.toString());
            _loc7_.autoSize = TextFieldAutoSize.LEFT;
            _loc7_.y = _loc12_;
            _loc9_.y = _loc12_;
            §&$9§.§>&F§(_loc8_,§"-§.§6"j§,param1.compensationInKeys.toString());
            _loc8_.autoSize = TextFieldAutoSize.LEFT;
            _loc8_.y = _loc12_;
            _loc13_ = §3!3§.§&%!§();
            _loc3_.§#!`§().addChild(_loc13_);
            _loc13_.y = _loc9_.y - 5;
            _loc13_.height = 40;
            _loc13_.scaleX = _loc13_.scaleY;
            _loc14_ = _loc9_.width + _loc7_.width + _loc13_.width + _loc8_.width + 40;
            _loc9_.x = (_loc3_.width - _loc14_) * 0.5;
            _loc7_.x = _loc9_.x + _loc9_.width + 5;
            _loc13_.x = _loc7_.x + _loc7_.width + 30;
            _loc8_.x = _loc13_.x + _loc13_.width + 5;
            _loc3_.height = 90 + _loc5_.height + _loc3_.§<%!§.height + _loc6_.height + _loc8_.height + _loc11_.height;
         }
         else
         {
            _loc6_.visible = _loc7_.visible = _loc8_.visible = _loc9_.visible = _loc10_.visible = false;
            _loc3_.height = 90 + _loc5_.height + _loc3_.§<%!§.height + _loc11_.height;
         }
         §`o§.§%&%§(_loc11_);
         _loc11_.y = _loc3_.height - 80;
         return _loc3_;
      }
      
      public function §-#4§(param1:WithdrawSeasonWeaponsResult) : void
      {
         var _loc5_:§`&-§ = null;
         var _loc7_:WeaponStructure = null;
         var _loc8_:§;#_§ = null;
         var _loc9_:§3U§ = null;
         var _loc10_:DisplayObjectContainer = null;
         var _loc11_:TextField = null;
         this.message = param1;
         var _loc2_:MovieClip = new MovieClip();
         this.§<%!§ = new §`&-§(_loc2_);
         var _loc3_:int = 0;
         var _loc4_:Array = [];
         var _loc6_:int = Math.max(8,param1.withdrawnWeapons.length / 3 + 1);
         for each(_loc7_ in param1.withdrawnWeapons)
         {
            _loc8_ = §<$c§.§ !=§(_loc7_.getId());
            _loc5_ = new §`&-§(§6#A§.§!&6§(§@a§.§7P§));
            _loc9_ = new §3U§(_loc5_.getChildByName("icon"),true);
            _loc9_.setItem(_loc8_);
            this.§<%!§.addChild(_loc5_);
            _loc10_ = _loc5_.§#!`§();
            _loc11_ = _loc10_.getChildByName("count") as TextField;
            _loc11_.autoSize = TextFieldAutoSize.LEFT;
            _loc10_.swapChildren(_loc5_.getChildByName("icon"),_loc11_);
            §7&5§.§?$k§(_loc11_,"-" + _loc7_.getCount().toString());
            _loc5_.x = _loc3_ * 55;
            _loc5_.y = this.rows * 60;
            _loc11_.x = (_loc9_.width - _loc11_.width) * 0.5;
            _loc11_.y = _loc9_.height - 25;
            if(this.rows > 0)
            {
               _loc4_.push(_loc5_);
            }
            if(++_loc3_ == _loc6_)
            {
               _loc4_ = [];
               _loc3_ = 0;
               ++this.rows;
            }
         }
         if(_loc4_)
         {
            _loc3_ = 0;
            for each(_loc5_ in _loc4_)
            {
               _loc5_.x = _loc3_ * 55 + (this.§<%!§.width - _loc4_.length * 55) * 0.5;
               _loc3_++;
            }
         }
         addChild(this.§<%!§);
         width = Math.max(this.§<%!§.width + 100,width);
         §`o§.§%&%§(this.§<%!§.§#!`§());
      }
      
      override protected function onOkClick(param1:MouseEvent) : void
      {
         this.callback();
         super.onOkClick(param1);
      }
   }
}


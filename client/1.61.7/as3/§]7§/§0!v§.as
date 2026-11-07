package §]7§
{
   import § !8§.§`!d§;
   import § #m§.§;#^§;
   import § $q§.§3U§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.§'-§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,$J§.§,$O§;
   import §0%z§.§#%x§;
   import §0%z§.§,$h§;
   import §0%z§.§1"6§;
   import §0%z§.§@"q§;
   import §0%z§.§@#S§;
   import §0%z§.AchievTabPage;
   import §3#a§.*;
   import §4!x§.§@& §;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import config.achievements.§"!&§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §0!v§ extends §@& §
   {
      
      private var §<%!§:§`&-§;
      
      private var rows:uint = 0;
      
      public function §0!v§()
      {
         super(§6#A§.§!&6§(§+"'§.§&"%§));
      }
      
      public static function show(param1:Array, param2:Array) : void
      {
         var weaponIds:Array = param1;
         var equipIds:Array = param2;
         var msg:§0!v§ = new §0!v§();
         var itemIds:Array = equipIds.filter(function(param1:int, param2:int, param3:Array = null):Boolean
         {
            return §]!E§.§]%m§(param1) && §]!E§.§&%H§.indexOf(param1) == -1 || §,$O§.§&&,§(param1) && §,$O§.§&%H§.indexOf(param1) == -1;
         });
         msg.§&"#§(weaponIds.concat(itemIds));
         msg.show();
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         var _loc3_:DisplayObject = null;
         super.§@"o§(param1);
         §7&5§.§>&<§(§'%s§("title"),§0$N§.CURRENT_SEASON_ITEMS + ":");
         §7&5§.§>&<§(§'%s§("msg"),§0$N§.SEASON_ITEMS_MEANS);
         var _loc2_:int = 0;
         while(_loc2_ < 4)
         {
            §7&5§.§>&<§(§'%s§("text" + _loc2_),§0$N§.§%! §("SEASON_WEAPON_MEAN" + _loc2_));
            _loc2_++;
         }
         §4"0§.§>&F§(§>!-§.simpleButton,§"-§.§+$m§,§0"-§.BUTTON_OK);
         _loc3_ = getChildByName("key");
         var _loc4_:MovieClip = §3!3§.§&%!§();
         §#!`§().addChild(_loc4_);
         §#!`§().removeChild(_loc3_);
         _loc4_.width = _loc3_.width;
         _loc4_.height = _loc3_.height;
         _loc4_.x = _loc3_.x;
         _loc4_.y = _loc3_.y;
      }
      
      public function §&"#§(param1:Array) : void
      {
         var _loc6_:§`&-§ = null;
         var _loc8_:int = 0;
         var _loc9_:§&!e§ = null;
         var _loc10_:§;#_§ = null;
         var _loc11_:§=?§ = null;
         var _loc12_:§3U§ = null;
         var _loc13_:DisplayObjectContainer = null;
         var _loc14_:TextField = null;
         var _loc15_:int = 0;
         var _loc16_:Boolean = false;
         var _loc17_:§&!e§ = null;
         var _loc2_:MovieClip = new MovieClip();
         var _loc3_:§`!d§ = Application.userProfile.getRace();
         this.§<%!§ = new §`&-§(_loc2_);
         var _loc4_:int = 0;
         var _loc5_:Array = [];
         var _loc7_:int = Math.max(8,param1.length / 3 + 1);
         for each(_loc8_ in param1)
         {
            _loc9_ = §<$c§.§8&E§(_loc8_,_loc3_);
            _loc10_ = _loc9_ is §;#_§ ? §;#_§(_loc9_) : null;
            _loc11_ = _loc9_ is §=?§ ? §=?§(_loc9_) : null;
            _loc6_ = new §`&-§(§6#A§.§!&6§(§+"'§.§1#!§));
            _loc12_ = new §3U§(_loc6_.getChildByName("icon"),true);
            _loc12_.setItem(_loc9_);
            this.§<%!§.addChild(_loc6_);
            _loc13_ = _loc6_.§#!`§();
            _loc14_ = _loc13_.getChildByName("count") as TextField;
            _loc14_.autoSize = TextFieldAutoSize.LEFT;
            _loc13_.swapChildren(_loc6_.getChildByName("icon"),_loc14_);
            §7&5§.§?$k§(_loc14_," ");
            _loc6_.x = _loc4_ * 70;
            _loc6_.y = this.rows * 60;
            _loc14_.x = (_loc12_.width - _loc14_.width) * 0.5;
            _loc14_.y = _loc12_.height - 25;
            if(this.rows > 0)
            {
               _loc5_.push(_loc6_);
            }
            _loc4_++;
            _loc15_ = param1.indexOf(_loc8_);
            if(_loc15_ < param1.length - 1)
            {
               _loc17_ = §<$c§.§8&E§(param1[int(_loc15_ + 1)],_loc3_);
               _loc16_ = _loc17_ is §=?§;
            }
            if(_loc4_ == _loc7_ || _loc9_ is §;#_§ && _loc16_)
            {
               _loc5_ = [];
               _loc4_ = 0;
               ++this.rows;
            }
         }
         if(_loc5_)
         {
            _loc4_ = 0;
            for each(_loc6_ in _loc5_)
            {
               _loc6_.x = _loc4_ * 70 + (this.§<%!§.width - _loc5_.length * 70) * 0.5 + 8;
               _loc4_++;
            }
         }
         addChild(this.§<%!§);
         §`o§.§0#P§(this.§<%!§.getContainer(),getChildByName("weaponsBg"));
      }
   }
}


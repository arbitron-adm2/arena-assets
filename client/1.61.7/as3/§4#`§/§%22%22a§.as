package §4#`§
{
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §0%"§.§[!^§;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §1&-§.§4!s§;
   import §7$t§.§[!X§;
   import §<%k§.§`!v§;
   import §=!p§.§7#E§;
   import §=&!§.§<$Z§;
   import §>%S§.§^!V§;
   import §?$7§.§!§;
   import §?$7§.§6&'§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@$§.*;
   import §@$v§.§%!w§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §^§.*;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.SendWipeConfirmCode;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§>!n§;
   
   public class §""a§ extends §%!w§
   {
      
      private static const §[!m§:int = 14;
      
      private static const §6$o§:int = int(§[!m§ * 0.5);
      
      private static const §5B§:int = int((§[!m§ + §6$o§) * 0.5);
      
      private var §4!3§:Vector.<MovieClip>;
      
      private var §+$r§:Vector.<MovieClip>;
      
      private var bar:MovieClip;
      
      private var total:int;
      
      private var count:int;
      
      public function §""a§(param1:String, param2:String, param3:String, param4:int)
      {
         var _loc5_:MovieClip = null;
         var _loc6_:DisplayObject = null;
         var _loc9_:MovieClip = null;
         var _loc10_:MovieClip = null;
         _loc5_ = §6#A§.§!&6§(param1);
         _loc6_ = _loc5_.getChildByName("back");
         this.bar = _loc5_.getChildByName("mask_panel") as MovieClip;
         this.bar.width = _loc6_.width = 100;
         this.bar.x = _loc6_.x = §6$o§;
         this.bar.y = _loc6_.y = (§[!m§ - this.bar.height) * 0.5;
         super(_loc5_);
         this.count = this.total = param4;
         var _loc7_:int = this.bar.width / (this.total - 1);
         var _loc8_:int = this.total == 2 ? §5B§ : (this.total == 1 ? int(this.bar.width * 0.5) : 0);
         this.§4!3§ = new Vector.<MovieClip>(0);
         this.§+$r§ = new Vector.<MovieClip>(0);
         var _loc11_:int = 0;
         while(_loc11_ < this.count)
         {
            _loc9_ = §6#A§.§!&6§(§+"'§.§6"l§);
            _loc9_.width = _loc9_.height = §[!m§;
            _loc5_.addChild(_loc9_);
            _loc9_.x = _loc11_ * _loc7_ + _loc8_;
            this.§4!3§.push(_loc9_);
            _loc10_ = §6#A§.§!&6§(param3);
            _loc9_ = §6#A§.§!&6§(param2);
            _loc9_.width = _loc9_.height = §[!m§;
            _loc5_.addChild(_loc9_);
            _loc9_.x = _loc11_ * _loc7_ + _loc8_;
            _loc9_.addChild(_loc10_);
            _loc10_.x = (_loc9_.width - _loc10_.width) * 0.5 - 1;
            _loc10_.y = §6$o§;
            this.§+$r§.push(_loc9_);
            _loc11_++;
         }
      }
      
      public function §?$e§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = this.total;
         while(_loc2_ < _loc3_)
         {
            this.§+$r§[_loc2_].visible = _loc2_ < this.total - param1;
            _loc2_++;
         }
         setValue((this.total - param1 - 1) / (this.total - 1));
      }
      
      public function §]!K§(param1:uint) : void
      {
         var _loc2_:int = 0;
         var _loc3_:DisplayObject = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param1 != this.total)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§4!3§.length)
            {
               this.§4!3§[_loc2_].visible = _loc2_ < param1;
               this.§+$r§[_loc2_].visible = _loc2_ < param1;
               _loc2_++;
            }
            _loc3_ = getChildByName("back");
            this.bar.width = _loc3_.width = 100;
            this.bar.x = _loc3_.x = §6$o§;
            _loc4_ = this.bar.width / (param1 - 1);
            _loc5_ = param1 == 2 ? §5B§ : (param1 == 1 ? int(_loc3_.width * 0.5) : 0);
            _loc2_ = 0;
            while(_loc2_ < param1)
            {
               this.§4!3§[_loc2_].x = _loc2_ * _loc4_ + _loc5_;
               this.§+$r§[_loc2_].x = _loc2_ * _loc4_ + _loc5_;
               _loc2_++;
            }
            this.total = param1;
         }
      }
   }
}


package §[#q§
{
   import §#",§.*;
   import §%"Z§.§'$2§;
   import §%L§.§%%w§;
   import §&#E§.MsgBoxSocialSelect;
   import §'%[§.§#"K§;
   import §+$=§.§6#A§;
   import §+%S§.§'%V§;
   import §-&5§.*;
   import §-@§.*;
   import §0!§.§6#z§;
   import §0%[§.§0%§;
   import §1&-§.§4!s§;
   import §2!-§.HpChangeEvent;
   import §2#x§.§]s§;
   import §3"@§.§#$O§;
   import §4#2§.*;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §<!W§.§1N§;
   import §<!W§.§;#A§;
   import §<!W§.§=!6§;
   import §<%E§.§,$2§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.*;
   import §]^§.§3$f§;
   import §]^§.§4&+§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.Font;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.ReturnFriend;
   import ru.pragmatix.wormix.messages.server.GetQuestProgressResult;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§>!n§;
   
   public class §6"g§
   {
      
      private var log:§&`§ = new §&`§(§6"g§);
      
      private var § !#§:§#"K§;
      
      protected var §#%[§:BitmapData;
      
      protected var §-"_§:Rectangle;
      
      protected var §0H§:Point = new Point(0,0);
      
      protected var § "j§:BitmapData;
      
      public function §6"g§(param1:DisplayObject)
      {
         super();
      }
      
      private static function §4"'§(param1:DisplayObject) : Number
      {
         var _loc2_:uint = 200 + 5;
         var _loc3_:Number = 1;
         if(param1.width < _loc2_)
         {
            _loc3_ = _loc2_ / param1.width;
         }
         else if(param1.height < _loc2_)
         {
            _loc3_ = _loc2_ / param1.height;
         }
         return _loc3_;
      }
      
      private function §""K§() : void
      {
         this.§#%[§.dispose();
         this.§#%[§ = null;
         this.§ "j§.dispose();
         this.§ "j§ = null;
      }
      
      private function onError(param1:§,$2§) : void
      {
         §[&G§.§3$5§.hide();
         §,#W§.§6!P§(§0"-§.TITLE_ERROR,§>!n§.§'!X§(param1));
         this.§""K§();
      }
      
      public function §1$$§(param1:MovieClip) : void
      {
         this.§ !#§ = new §#"K§(§]s§(§8"%§.§[f§));
         var _loc2_:Number = §4"'§(param1);
         var _loc3_:Matrix = new Matrix();
         _loc3_.scale(_loc2_,_loc2_);
         this.§#%[§ = new BitmapData(param1.width * _loc2_,param1.height * _loc2_,true,0);
         this.§#%[§.draw(param1,_loc3_);
         var _loc4_:uint = uint(this.§#%[§.width);
         var _loc5_:uint = uint(this.§#%[§.height);
         this.§-"_§ = new Rectangle(0,0,_loc4_,_loc5_);
         this.§ "j§ = new BitmapData(_loc4_,_loc5_,true,0);
         this.§ "j§.copyPixels(this.§#%[§,this.§-"_§,this.§0H§);
         this.§9$%§();
      }
      
      private function §9$%§() : void
      {
         §[&G§.§3$5§.show();
         this.§ !#§.saveProfilePhoto(this.§ "j§,this.§%"P§);
      }
      
      private function §%"P§(param1:§,$2§) : void
      {
         §[&G§.§3$5§.hide();
         if(param1.success)
         {
            this.§""K§();
         }
         else
         {
            this.onError(param1);
         }
      }
   }
}


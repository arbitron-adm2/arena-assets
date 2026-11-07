package §2#W§
{
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §##j§.§9x§;
   import §%"1§.§@%;§;
   import §&"c§.§!!q§;
   import §+$=§.§6#A§;
   import §,$J§.§,$O§;
   import §-%B§.§-"o§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1#p§.Team;
   import §2!-§.§'5§;
   import §2!-§.DamageEvent;
   import §2#x§.*;
   import §4!!§.§76§;
   import §4!x§.§8#u§;
   import §4!x§.§@& §;
   import §7$t§.§&!e§;
   import §8#<§.§!#^§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §=!p§.§7#E§;
   import §?$7§.§6%k§;
   import §?$L§.§ "N§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import com.adobe.images.PNGEncoder;
   import com.greensock.TweenMax;
   import com.greensock.easing.Circ;
   import com.greensock.events.LoaderEvent;
   import config.§#!"§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.net.URLVariables;
   import ru.inspirit.net.MultipartURLLoader;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class PvpChestBox extends §@& §
   {
      
      private var pack:§1%z§;
      
      private var anim:MovieClip;
      
      private var type:int;
      
      private var includeOwnedWeapons:Boolean;
      
      public function PvpChestBox(param1:§1%z§, param2:int, param3:Boolean = false)
      {
         this.pack = param1;
         this.type = param2;
         this.includeOwnedWeapons = param3;
         var _loc4_:MovieClip = §6#A§.§!&6§(§+"'§.§"&4§);
         super(_loc4_);
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §<"b§ = true;
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         var _loc3_:MovieClip = null;
         var _loc5_:Array = null;
         var _loc7_:§9x§ = null;
         var _loc8_:MovieClip = null;
         var _loc9_:int = 0;
         var _loc10_:MovieClip = null;
         var _loc11_:§^%3§ = null;
         var _loc12_:int = 0;
         var _loc13_:DisplayObject = null;
         §4#Z§ = "anim.ok";
         super.§@"o§(param1);
         §>!-§.setText(§0$N§.BUTTON_OK,§"-§.§+$m§);
         this.anim = §'$a§("anim");
         §7&5§.§>&<§(§'%s§("anim.text2.text"),§0$N§.§%! §("CHEST_CONTENT"));
         §7&5§.§>&<§(§'%s§("anim.text.text"),§0$N§.§%! §("IN_THE_CHEST"));
         var _loc2_:MovieClip = new MovieClip();
         _loc3_ = §'$a§("anim.content");
         var _loc4_:int = _loc3_.width * 0.5;
         _loc3_.removeChildren();
         _loc3_.addChild(_loc2_);
         _loc5_ = this.pack.§@$0§(this.includeOwnedWeapons,true);
         var _loc6_:Number = _loc5_.length * 0.5;
         for each(_loc7_ in _loc5_)
         {
            _loc10_ = §6#A§.§!&6§(§+"'§.§1#!§);
            _loc11_ = new §^%3§(_loc10_,"",0.7);
            _loc11_.setItem(_loc7_);
            _loc12_ = _loc10_.width * 1.5;
            _loc10_.x = _loc4_ - _loc12_ * _loc6_ + _loc2_.numChildren * _loc12_ + _loc6_ + 7;
            _loc2_.addChild(_loc10_);
         }
         _loc8_ = §'$a§("anim.chest");
         _loc9_ = 0;
         while(_loc9_ < _loc8_.numChildren)
         {
            _loc13_ = _loc8_.getChildByName("chest" + _loc9_);
            _loc13_.visible = _loc9_ + 1 == this.type;
            _loc9_++;
         }
      }
      
      override protected function okAction() : void
      {
         if(this.anim.currentFrame == this.anim.totalFrames)
         {
            super.okAction();
         }
         else
         {
            this.anim.gotoAndStop(this.anim.totalFrames);
         }
      }
   }
}


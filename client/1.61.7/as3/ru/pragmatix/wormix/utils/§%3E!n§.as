package ru.pragmatix.wormix.utils
{
   import §#P§.§`o§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0&F§.§4$T§;
   import §0&F§.FrameTimerEvent;
   import §2"L§.*;
   import §3#a§.*;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §9%W§.§!7§;
   import §9&+§.§>&5§;
   import §<"L§.§##-§;
   import §<%E§.§,$2§;
   import §?$L§.§0"-§;
   import §@<§.§+%]§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§`§;
   import com.inreflected.forks.spark.effects.animation.Keyframe;
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§2%F§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§5$t§;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginClanBase;
   import ru.pragmatix.wormix.messages.server.BuySelectRaceResponse;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FacebookBankController;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.§<"e§;
   
   public class §>!n§
   {
      
      public function §>!n§()
      {
         super();
      }
      
      public static function §'!X§(param1:§,$2§) : String
      {
         var _loc2_:String = param1.§""h§ ? param1.§""h§ : param1.§3%h§;
         var _loc3_:String = param1.errorCode.msg;
         if(_loc3_.indexOf("URL") > -1)
         {
            _loc3_ = _loc3_.split("URL")[0];
         }
         return param1.errorCode ? §0%§.format(§0"-§.ERROR_SOCIAL_OP,{"error":_loc2_ + " code: " + param1.errorCode.code + " msg: " + _loc3_}) : "error";
      }
      
      public static function §4?§(param1:§,$2§) : void
      {
         §,#W§.§[#r§(§0"-§.TITLE_ERROR,§'!X§(param1),§,#W§.§6!m§);
      }
      
      public static function §-#h§(param1:String) : String
      {
         return §0%§.format(param1,{"hashtag":Social.settings.§0$3§()});
      }
      
      public static function §-l§() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:§7"n§ = §8"%§.§[f§.getType();
         if(_loc2_ == §7"n§.NONE || _loc2_ == §7"n§.VK || _loc2_ == §7"n§.OK || _loc2_ == §7"n§.MM)
         {
            _loc1_ = §0$N§.CURRENCY_PLURALS;
         }
         else if(_loc2_ == §7"n§.FB)
         {
            _loc1_ = [FacebookBankController(Social.§-%=§).getUserCurrency()];
         }
         return _loc1_;
      }
      
      public static function §8%@§(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         _loc2_ = §8"%§.§[f§.getType() == §7"n§.FB;
         return §-q§.§-&%§(_loc2_ ? FacebookBankController(Social.§-%=§).calculateCurrencyByPriceUSD(param1) : param1,2);
      }
   }
}


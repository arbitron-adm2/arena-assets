package ru.pragmatix.flox.social.controller
{
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §#!5§.§>S§;
   import §%"Z§.§2"B§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§;!4§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §3#T§.AtomBomb;
   import §7!-§.MD5;
   import §7$t§.§;#_§;
   import §8#o§.§1@§;
   import §<%E§.§'$g§;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §=!p§.§%#'§;
   import §=!p§.§1e§;
   import §>%S§.§^!V§;
   import §@!i§.§<,§;
   import §@<§.§+%]§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.client.RemoveFromGroup;
   import ru.pragmatix.wormix.messages.server.ActivatePromoKeyError;
   import ru.pragmatix.wormix.messages.server.GetRatingResult;
   import ru.pragmatix.wormix.messages.structures.RatingProfileStructure;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §]"Y§ extends §"$K§ implements §1#+§, §8"'§, §1!`§
   {
      
      private static const §<!8§:String = "user_id";
      
      private static const §%$C§:uint = 100;
      
      private static const §?!u§:uint = 2000;
      
      public function §]"Y§(param1:§>C§)
      {
         super(param1);
      }
      
      override public function getType() : §7"n§
      {
         return §7"n§.NONE;
      }
      
      override public function §""C§(param1:Array) : §2"B§
      {
         var _loc2_:§2"B§ = this.§6c§();
         if(Boolean(_loc2_) && §6!?§.contains(param1,_loc2_))
         {
            return _loc2_;
         }
         return §2"B§.RU;
      }
      
      private function §6c§() : §2"B§
      {
         if(§'D§[§18§])
         {
            return §2"B§.§8$J§(§'D§[§18§]);
         }
         return §2"B§.RU;
      }
      
      override public function getUserId() : String
      {
         return §'D§[§<!8§].toString();
      }
      
      override public function getAppFriends(param1:Function) : void
      {
         var _loc2_:§'$g§ = new §'$g§();
         _loc2_.uids = [];
         _loc2_.success = true;
         param1(_loc2_);
      }
      
      override public function §7!f§() : String
      {
         return §'D§[§@#7§];
      }
      
      override public function §7%p§() : uint
      {
         return §%$C§;
      }
      
      override public function §'!1§() : uint
      {
         return §?!u§;
      }
      
      override protected function §<&I§(param1:Timer, param2:§;!y§, param3:Array, param4:Function) : void
      {
         param1.reset();
         param1.removeEventListener(TimerEvent.TIMER,§2"Z§);
         param2.success = true;
         param4(param2);
      }
      
      override public function getActiveOffers(param1:Function) : void
      {
         var _loc2_:Object = {"response":[0]};
         param1(_loc2_);
      }
      
      public function pay(param1:§1e§, param2:Function) : void
      {
         if(!context.§]"&§().isLocal())
         {
            param2("success");
         }
      }
      
      public function subscription(param1:§%#'§, param2:Function) : void
      {
         if(!context.§]"&§().isLocal())
         {
            param2("success");
         }
      }
   }
}


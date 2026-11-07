package §8$V§
{
   import § !8§.§`!d§;
   import § &5§.§=#P§;
   import §!L§.§`#p§;
   import §#",§.ReturnFriendRequestMenu;
   import §##j§.§!%&§;
   import §##j§.§#$!§;
   import §##j§.§0m§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&#h§.§5f§;
   import §,!f§.*;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0%[§.§^"5§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6%2§.*;
   import §7$t§.§&!e§;
   import §7$t§.§=?§;
   import §9%W§.§`"i§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §?#g§.§&"P§;
   import §?#g§.Race;
   import §?o§.StuffedBouncingGrenade;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import config.achievements.*;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetAbandonedFriends;
   import ru.pragmatix.wormix.messages.client.GetFriendListPage;
   import ru.pragmatix.wormix.messages.client.ReturnFriend;
   import ru.pragmatix.wormix.messages.client.RewardReturnFriend;
   import ru.pragmatix.wormix.messages.server.AwardedFriendsComeback;
   import ru.pragmatix.wormix.messages.server.BuySkinResponse;
   import ru.pragmatix.wormix.messages.server.GetAbandonedFriendsResult;
   import ru.pragmatix.wormix.messages.server.GetFriendListPageResult;
   import ru.pragmatix.wormix.messages.server.ReturnFriendResult;
   import ru.pragmatix.wormix.messages.server.RewardReturnFriendResult;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§6Y§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §[#_§ extends EventDispatcher
   {
      
      public static const §9$`§:§1%z§ = new §1%z§([new §#$!§(§+$A§.INGAME,150),new §0m§(3),new §!%&§(0,5)]);
      
      public static const §>$J§:§1%z§ = new §1%z§([new §#$!§(§+$A§.INGAME,300),new §#$!§(§+$A§.REAL,3),new §0m§(15),new §!%&§(0,15)]);
      
      private const §-!9§:String = "returnFriends";
      
      private var §!%$§:Object = {};
      
      private var §!$+§:Array = [];
      
      private var §7&8§:Array;
      
      public function §[#_§()
      {
         super();
         §^"5§.§?%D§(§%%w§.§7F§,[AwardedFriendsComeback],this.§^%?§);
         this.§!%$§ = Cookie.getValue(this.§-!9§,{});
      }
      
      private static function §^j§(param1:Vector.<UserProfile>, param2:Function, param3:int) : void
      {
         var _loc4_:Array = null;
         var _loc5_:UserProfile = null;
         if(param1.length > 0)
         {
            _loc4_ = [];
            for each(_loc5_ in param1)
            {
               _loc4_.push(_loc5_);
            }
            param2(_loc4_,param3);
         }
         else
         {
            param2([],param3);
         }
      }
      
      private static function §%!t§(param1:Vector.<UserProfile>, param2:Function) : void
      {
         var _loc4_:UserProfile = null;
         var _loc3_:Array = [];
         for each(_loc4_ in param1)
         {
            _loc3_.push(_loc4_);
         }
         param2(_loc3_);
      }
      
      private static function §&%`§(param1:§9$v§) : Array
      {
         var _loc2_:Array = GetAbandonedFriendsResult(param1.message).abandonedFriendsPage;
         var _loc3_:Array = GetAbandonedFriendsResult(param1.message).abandonedFriendsPageString;
         if(_loc3_.length > 0)
         {
            return _loc3_;
         }
         return _loc2_;
      }
      
      public function §5!^§(param1:Array) : void
      {
         this.§7&8§ = param1;
      }
      
      public function §5z§(param1:UserProfile, param2:Function) : void
      {
         §^"5§.§?%D§(§%%w§.§7F§,[RewardReturnFriendResult],§1%"§.§]$<§(this.§+!D§,this,[param2],true));
         §%%w§.§,U§(new RewardReturnFriend(param1.getId()));
      }
      
      private function §+!D§(param1:§9$v§, param2:Function) : void
      {
         param2();
      }
      
      private function §^%?§(param1:§9$v§) : void
      {
         var _loc2_:Array = null;
         var _loc5_:* = 0;
         _loc2_ = AwardedFriendsComeback(param1.message).friendsId;
         var _loc3_:Array = AwardedFriendsComeback(param1.message).friendsIdString;
         var _loc4_:uint = _loc2_.length;
         if(_loc4_ > 0)
         {
            _loc5_ = int(_loc4_ - 1);
            while(_loc5_ >= 0)
            {
               if(this.§7&8§.indexOf(_loc3_.length <= 0 ? _loc2_[_loc5_] : _loc3_[_loc5_]) == -1)
               {
                  _loc2_.splice(_loc5_,1);
                  if(_loc3_.length > 0)
                  {
                     _loc3_.splice(_loc5_,1);
                  }
               }
               _loc5_--;
            }
            if(_loc3_.length > 0)
            {
               §`#p§.§#&2§(_loc3_,this.§#c§);
            }
            else
            {
               §`#p§.§#&2§(_loc2_,this.§#c§);
            }
         }
      }
      
      private function §#c§(param1:Vector.<UserProfile>) : void
      {
         var _loc2_:UserProfile = null;
         if(param1.length > 0)
         {
            for each(_loc2_ in param1)
            {
               this.§!$+§.push(_loc2_);
            }
            if(Application.instance.§5!L§())
            {
               this.§"%"§();
            }
         }
      }
      
      public function §"%"§() : ReturnFriendRequestMenu
      {
         var _loc1_:ReturnFriendRequestMenu = null;
         if(Boolean(this.§!$+§) && this.§!$+§.length > 0)
         {
            _loc1_ = new ReturnFriendRequestMenu();
            _loc1_.setData(this.§!$+§);
            this.§!$+§ = null;
            return _loc1_;
         }
         return null;
      }
      
      public function §5"G§(param1:UserProfile, param2:Function) : void
      {
         if(!this.§!%$§[param1.getId()])
         {
            §^"5§.§?%D§(§%%w§.§7F§,[ReturnFriendResult],§1%"§.§]$<§(this.§3%]§,this,[param2,param1],true));
            §%%w§.§,U§(new ReturnFriend(param1.getId()));
         }
         else
         {
            param2();
         }
      }
      
      private function §3%]§(param1:§9$v§, param2:Function, param3:UserProfile) : void
      {
         this.§!%$§[param3.getId()] = true;
         Cookie.setValue(this.§-!9§,this.§!%$§);
         param2();
      }
      
      public function § "E§(param1:UserProfile) : Boolean
      {
         return this.§!%$§[param1.getId()];
      }
      
      public function §=$=§(param1:Function) : void
      {
         §^"5§.§?%D§(§%%w§.§7F§,[GetAbandonedFriendsResult],§1%"§.§]$<§(this.§%!#§,this,[param1],true));
         §%%w§.§,U§(new GetAbandonedFriends(1));
      }
      
      private function §%!#§(param1:§9$v§, param2:Function) : void
      {
         var _loc3_:uint = uint(GetAbandonedFriendsResult(param1.message).totalAbandonedFriends);
         §`#p§.§#&2§(§&%`§(param1),§1%"§.§]$<§(§^j§,this,[param2,_loc3_],true));
      }
      
      public function §7"Y§(param1:int, param2:Function) : void
      {
         §^"5§.§?%D§(§%%w§.§7F§,[GetAbandonedFriendsResult],§1%"§.§]$<§(this.§="N§,this,[param2],true));
         §%%w§.§,U§(new GetAbandonedFriends(param1));
      }
      
      private function §="N§(param1:§9$v§, param2:Function) : void
      {
         §`#p§.§#&2§(§&%`§(param1),§1%"§.§]$<§(§%!t§,this,[param2],true));
      }
   }
}


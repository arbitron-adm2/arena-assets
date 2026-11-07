package §8$V§
{
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §+%S§.§2&>§;
   import §0%[§.Cookie;
   import §0%[§.§^"5§;
   import §1#0§.§;4§;
   import §1#p§.Team;
   import §2#H§.§+N§;
   import §2#H§.§,"R§;
   import §2#H§.§1%I§;
   import §^#[§.§&$2§;
   import config.achievements.§!$L§;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.SearchTheHouse;
   import ru.pragmatix.wormix.messages.server.SearchTheHouseResult;
   import ru.pragmatix.wormix.model.user.§<%6§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §@%a§
   {
      
      private static const §^#`§:String = "searchDoneFor";
      
      public static const §4>§:uint = 5;
      
      private var searchDoneFor:Object;
      
      private var keyNum:int = 0;
      
      public function §@%a§()
      {
         super();
         this.searchDoneFor = Cookie.getValue(§^#`§,{});
      }
      
      public function §<%=§(param1:UserProfile) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc2_:Boolean = !param1.equals(Application.userProfile);
         if(Boolean(_loc2_ && param1.getLevel() > 1) && Boolean(this.searchDoneFor[param1.getId()]) && this.searchDoneFor[param1.getId()] is Number)
         {
            _loc3_ = §0#2§.§8%m§(this.searchDoneFor[param1.getId()]);
            _loc2_ = _loc3_ < §0#2§.§8%m§(new Date().time);
         }
         return _loc2_;
      }
      
      public function §;?§(param1:UserProfile, param2:Function) : void
      {
         if(param1.getLevel() > 1)
         {
            §^"5§.single(§%%w§.§7F§,SearchTheHouseResult,this.§-!&§,this,[param2,param1],true);
            §%%w§.§,U§(new SearchTheHouse(§%%w§.§7F§.§?$X§(),param1.getId(),this.keyNum));
         }
         else
         {
            param2(§<%6§.EMPTY);
         }
      }
      
      private function §-!&§(param1:§9$v§, param2:Function, param3:UserProfile) : void
      {
         if(SearchTheHouseResult(param1.message).friendId != param3.getId())
         {
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0$N§.PROTOCOL_CHEATER,§,#W§.§0!V§);
            return;
         }
         this.searchDoneFor[param3.getId()] = new Date().time;
         Cookie.setValue(§^#`§,this.searchDoneFor);
         var _loc4_:§<%6§ = §<%6§.valueOf(SearchTheHouseResult(param1.message).result);
         _loc4_.value = SearchTheHouseResult(param1.message).value;
         this.keyNum = SearchTheHouseResult(param1.message).availableSearchKeys;
         if(_loc4_ == §<%6§.REAL_MONEY)
         {
            §8"%§.§@1§.increase([§!$L§.RUBIES_FOUND,§;4§.RUBIES_FOUND],[1,1]);
         }
         param2(_loc4_);
      }
      
      public function §9&!§() : void
      {
         this.searchDoneFor = {};
         Cookie.setValue(§^#`§,this.searchDoneFor);
      }
      
      public function §[#x§(param1:int) : void
      {
         this.keyNum = param1;
      }
      
      public function §1!K§() : int
      {
         return this.keyNum;
      }
   }
}


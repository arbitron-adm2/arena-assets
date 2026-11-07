package §8$V§
{
   import §!L§.§7%0§;
   import §!L§.§`#p§;
   import §"$+§.*;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §-%B§.*;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0%[§.§^"5§;
   import §1#p§.*;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7"Q§.*;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import config.achievements.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetFriendListPage;
   import ru.pragmatix.wormix.messages.server.GetFriendListPageResult;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §`"c§
   {
      
      private static const §7F§:§`"c§ = new §`"c§();
      
      private static const §=$g§:uint = 9;
      
      private static const §3%T§:uint = 27;
      
      private var §>&4§:Array = [];
      
      private var §'"s§:Array;
      
      private var §,%I§:uint;
      
      private var §@"[§:uint;
      
      private var params:Object;
      
      public function §`"c§()
      {
         super();
      }
      
      public static function §[!'§() : uint
      {
         return §7F§.§,%I§;
      }
      
      public static function §0&0§(param1:Array, param2:Array, param3:uint, param4:uint) : Array
      {
         return §7F§.§0&0§(param1,param2,param3,param4);
      }
      
      public static function §%!0§(param1:uint, param2:uint, param3:Function) : void
      {
         §7F§.§%!0§(param1,param2,param3);
      }
      
      public static function §-&A§() : uint
      {
         return §7F§.§-&A§();
      }
      
      public static function §0"z§() : uint
      {
         return §7F§.§@"[§;
      }
      
      public static function getAppFriends() : Array
      {
         return §7F§.§'"s§;
      }
      
      public static function §#$-§(param1:String) : Boolean
      {
         return §7F§.§#$-§(param1);
      }
      
      private function §0&0§(param1:Array, param2:Array, param3:uint, param4:uint) : Array
      {
         this.§,%I§ = param4;
         this.§@"[§ = Math.min(param3,param2.length);
         this.§'"s§ = param2;
         var _loc5_:Array = §4! §.§9%I§(param1,true);
         this.§%!X§(0,_loc5_);
         if(this.§>&4§.length < §=$g§)
         {
            this.§@"[§ = this.§>&4§.length;
         }
         return this.§>&4§;
      }
      
      private function §%!X§(param1:uint, param2:Array) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = int(param2.length);
         while(_loc3_ < _loc4_)
         {
            this.§>&4§[param1 + _loc3_] = param2[_loc3_];
            _loc3_++;
         }
      }
      
      private function §""3§() : void
      {
         var id:String = null;
         var idIsNotLoaded:Boolean = false;
         if(this.§>&4§.length == this.§'"s§.length)
         {
            return;
         }
         for each(id in this.§'"s§)
         {
            idIsNotLoaded = this.§>&4§.every(function(param1:UserProfile, param2:uint, param3:Array):Boolean
            {
               return param1.§"%D§() != id;
            },this);
            if(idIsNotLoaded)
            {
               this.§>&4§.push(§4! §.§0$h§(id));
            }
         }
      }
      
      private function §%!0§(param1:uint, param2:uint, param3:Function) : void
      {
         var _loc4_:uint = 0;
         this.params = {
            "firstIndex":param1,
            "pageSize":param2,
            "callback":param3
         };
         if(!this.§9%&§(param1,param2))
         {
            _loc4_ = this.§5@§(param1,param2);
            this.params.serverPage = _loc4_;
            §^"5§.single(§%%w§.§7F§,GetFriendListPageResult,this.§1%[§);
            §%%w§.§,U§(new GetFriendListPage(_loc4_));
         }
         else
         {
            param3(this.§[5§(this.params));
         }
      }
      
      private function §5@§(param1:uint, param2:uint) : uint
      {
         return uint(1 + Math.ceil(Math.max(param1 + param2 - §=$g§,0) / §3%T§));
      }
      
      private function §[!I§(param1:uint) : uint
      {
         if(param1 == 1)
         {
            return 0;
         }
         return §=$g§ + (param1 - 2) * §3%T§;
      }
      
      private function §9%&§(param1:uint, param2:uint) : Boolean
      {
         if(this.§>&4§.length == this.§@"[§)
         {
            return true;
         }
         return Boolean(this.§>&4§[param1]) && Boolean(this.§>&4§[param1 + param2]);
      }
      
      private function §[5§(param1:Object) : Array
      {
         return this.§>&4§.slice(param1.firstIndex,Math.min(param1.firstIndex + param1.pageSize,this.§>&4§.length));
      }
      
      private function §1%[§(param1:§9$v§) : void
      {
         var _loc4_:UserProfileStructure = null;
         var _loc10_:UserProfile = null;
         var _loc11_:Vector.<UserProfile> = null;
         var _loc12_:UserProfile = null;
         var _loc13_:Boolean = false;
         var _loc14_:UserProfile = null;
         var _loc2_:Array = GetFriendListPageResult(param1.message).profileStructures;
         var _loc3_:String = "";
         var _loc5_:int = 0;
         var _loc6_:int = int(_loc2_.length);
         while(_loc5_ < _loc6_)
         {
            _loc4_ = _loc2_[_loc5_];
            _loc3_ += " " + _loc4_.id;
            _loc5_++;
         }
         var _loc7_:Array = §4! §.§9%I§(_loc2_,true);
         var _loc8_:Array = [];
         var _loc9_:Array = [];
         for each(_loc10_ in _loc7_)
         {
            _loc9_.push(_loc10_.§"%D§());
         }
         _loc11_ = new Vector.<UserProfile>(0);
         §`#p§.§;",§(_loc9_,_loc11_,new Vector.<String>(0));
         for each(_loc12_ in _loc7_)
         {
            _loc13_ = false;
            for each(_loc14_ in _loc11_)
            {
               if(_loc14_.§"%D§() == _loc12_.§"%D§())
               {
                  _loc12_.§8!J§(_loc14_.getSocialData());
                  _loc13_ = true;
                  break;
               }
            }
            if(!_loc13_)
            {
               _loc8_.push(_loc12_);
            }
         }
         if(_loc8_.length > 0)
         {
            this.§%$N§(_loc8_,this.params,_loc7_);
         }
         else
         {
            this.§%!X§(this.§[!I§(this.params.serverPage),_loc7_);
            this.params.callback(this.§[5§(this.params));
         }
      }
      
      private function §%$N§(param1:Array, param2:Object, param3:Array) : void
      {
         new §7%0§().§%$N§(param1,§1%"§.§]$<§(this.§^$T§,this,[param2,param3],true));
         §`#p§.addProfilesToStore(param1);
      }
      
      private function §^$T§(param1:Array, param2:Boolean, param3:Object, param4:Array) : void
      {
         this.§%!X§(this.§[!I§(param3.serverPage),param4);
         param3.callback(this.§[5§(param3));
      }
      
      public function §-&A§() : uint
      {
         return this.§'"s§.length;
      }
      
      public function §#$-§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in this.§'"s§)
         {
            if(_loc2_ == param1)
            {
               return true;
            }
         }
         return false;
      }
   }
}


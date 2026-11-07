package §`"x§
{
   import § !P§.*;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#%!§.§%&F§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §+#m§.*;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§2=§;
   import §7!n§.§[&#§;
   import §7$t§.§??§;
   import §8$V§.§`"c§;
   import §<$q§.§,%3§;
   import §<%E§.§'$g§;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetProfiles;
   import ru.pragmatix.wormix.messages.server.ChooseBonusItemResult;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.ProfilesResult;
   import ru.pragmatix.wormix.messages.structures.UserProfileStructure;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§>!n§;
   
   public class §[a§
   {
      
      private var searchFriendMenu:SearchFriendMenu;
      
      private var §%K§:§-#z§;
      
      private var §'R§:Boolean = false;
      
      public function §[a§()
      {
         super();
         this.§%K§ = new §-#z§();
         this.searchFriendMenu = new SearchFriendMenu(this);
         this.§+%h§();
      }
      
      private function §+%h§() : void
      {
         §8"%§.§[f§.getAppFriends(this.onGetAppFriends);
      }
      
      private function onGetAppFriends(param1:§'$g§) : void
      {
         var _loc2_:Vector.<UserProfile> = null;
         var _loc3_:Vector.<String> = null;
         var _loc4_:Vector.<§'%#§> = null;
         var _loc5_:UserProfile = null;
         var _loc6_:§'%#§ = null;
         var _loc7_:Array = null;
         var _loc8_:String = null;
         if(param1.success)
         {
            _loc2_ = new Vector.<UserProfile>(0);
            _loc3_ = new Vector.<String>(0);
            _loc4_ = new Vector.<§'%#§>(0);
            §`#p§.§;",§(param1.uids,_loc2_,_loc3_);
            var _loc9_:int = 0;
            var _loc10_:* = _loc2_;
            for each(_loc9_ in _loc10_)
            {
               var _temp_1:* = _loc9_;
               _loc5_ = _loc9_;
               _loc6_ = _loc5_.getSocialData();
               if(_loc6_)
               {
                  _loc4_.push(_loc6_);
                  if(_loc5_.getCharName())
                  {
                     _loc6_.§!!h§(_loc5_.getCharName());
                  }
               }
            }
            this.§%K§.§0R§(_loc4_);
            if(_loc3_.length > 0)
            {
               _loc7_ = [];
               for each(_loc8_ in _loc3_)
               {
                  _loc7_.push(_loc8_);
               }
               §8"%§.§[f§.§^!3§(_loc7_,this.§=$9§);
            }
            else
            {
               this.§'R§ = true;
               this.searchFriendMenu.§&#F§(false);
               this.searchFriendMenu.disableInputField(false);
               this.searchFriendMenu.disableSearch(false);
            }
         }
         else
         {
            §>!n§.§4?§(param1);
         }
      }
      
      private function §=$9§(param1:§;!y§) : void
      {
         var _loc2_:Vector.<§'%#§> = null;
         var _loc3_:Object = null;
         var _loc4_:§'%#§ = null;
         if(param1.success)
         {
            _loc2_ = new Vector.<§'%#§>(0);
            _loc3_ = param1.§@#C§();
            for each(_loc4_ in _loc3_)
            {
               if(_loc4_)
               {
                  _loc2_.push(_loc4_);
               }
            }
            this.§%K§.§0R§(_loc2_);
            this.§'R§ = true;
         }
         else
         {
            §>!n§.§4?§(param1);
         }
         this.searchFriendMenu.§&#F§(false);
         this.searchFriendMenu.disableInputField(false);
         this.searchFriendMenu.disableSearch(false);
      }
      
      public function showMenu() : void
      {
         this.searchFriendMenu.show();
         this.searchFriendMenu.disableSearch(!this.§'R§);
         this.searchFriendMenu.§&#F§(!this.§'R§);
      }
      
      public function search(param1:String) : void
      {
         var _loc4_:§'%#§ = null;
         var _loc2_:Vector.<§'%#§> = this.§%K§.search(param1);
         if(_loc2_.length == 0)
         {
            this.§7! §(param1);
            return;
         }
         this.searchFriendMenu.disableInputField(true);
         this.searchFriendMenu.disableSearch(true);
         var _loc3_:Array = [];
         for each(_loc4_ in _loc2_)
         {
            _loc3_.push(_loc4_.§"%D§());
         }
         §`#p§.§#&2§(_loc3_,this.§^j§);
      }
      
      private function §7! §(param1:String) : void
      {
         var message:GetProfiles;
         var value:String = param1;
         var onGetProfile:Function = function(param1:§9$v§):void
         {
            var _loc3_:UserProfileStructure = null;
            var _loc4_:Array = null;
            var _loc5_:Boolean = false;
            var _loc6_:UserProfile = null;
            §[&G§.§8"&§.hide();
            var _loc2_:ProfilesResult = ProfilesResult(param1.message);
            for each(_loc3_ in _loc2_.userProfileStructures)
            {
            }
            _loc4_ = §4! §.§9%I§(_loc2_.userProfileStructures,true);
            for each(_loc6_ in _loc4_)
            {
               if(_loc6_)
               {
                  _loc5_ = §4! §.§`$@§(_loc6_);
               }
            }
            searchFriendMenu.showFoundFriends(_loc4_,_loc5_ && (_loc6_ ? §`"c§.§#$-§(_loc6_.§"%D§()) : false));
            searchFriendMenu.disableInputField(false);
            searchFriendMenu.disableSearch(false);
         };
         §[&G§.§8"&§.show();
         message = new GetProfiles();
         message.sessionKey = §%%w§.§7F§.§?$X§();
         message.ids = new <String>[value];
         §^"5§.single(§%%w§.§7F§,ProfilesResult,onGetProfile);
         §%%w§.§,U§(message);
      }
      
      private function §^j§(param1:Vector.<UserProfile>) : void
      {
         var _loc3_:UserProfile = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc2_.push(_loc3_);
         }
         this.searchFriendMenu.showFoundFriends(_loc2_);
         this.searchFriendMenu.disableInputField(false);
         this.searchFriendMenu.disableSearch(false);
      }
   }
}


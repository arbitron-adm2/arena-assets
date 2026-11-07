package ru.pragmatix.wormix.gui.menu.arena.boss
{
   import § $q§.§-%f§;
   import §!$d§.§<$c§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%&6§.§2$v§;
   import §%L§.§%%w§;
   import §&#E§.§;"v§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§?3§;
   import §,#c§.ChooseFriendForCoopMenu;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §1#p§.§"Z§;
   import §1#p§.§2=§;
   import §2"L§.§^$y§;
   import §2#x§.*;
   import §3#T§.§]!6§;
   import §3#a§.§-#M§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §="z§.§-O§;
   import §="z§.§9%1§;
   import §?$7§.§!§;
   import §?$7§.§6&'§;
   import §@!i§.§!m§;
   import §@$§.*;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import com.adobe.serialization.json.JSONEncoder;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.GetFriendsForMission;
   import ru.pragmatix.wormix.messages.server.GetFriendsForMissionResult;
   import ru.pragmatix.wormix.messages.structures.SimpleProfileStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §["h§ extends ChooseFriendForCoopMenu
   {
      
      private static const §+"I§:int = 5000;
      
      private var bossIds:Vector.<int>;
      
      private var § "@§:Dictionary = new Dictionary();
      
      protected var §+C§:int;
      
      public function §["h§(param1:Vector.<int>, param2:Function, param3:Function)
      {
         super(param2,param3);
         this.bossIds = param1;
         this.§+C§ = §-"P§.PVE_FRIEND;
         this.§3s§();
      }
      
      private function §3s§() : void
      {
         refreshBtn.setDisabled(true);
         §1%"§.delay(function():void
         {
            refreshBtn.setDisabled(false);
         },this,§+"I§);
      }
      
      override public function show(param1:Boolean = true) : void
      {
         super.show(param1);
         this.§<!V§();
      }
      
      override protected function §@%Y§(param1:Event) : void
      {
         super.§@%Y§(param1);
         this.§3s§();
         this.§<!V§();
      }
      
      override protected function §]%k§(param1:Event) : void
      {
         §,>§(this.bossIds);
      }
      
      private function §<!V§() : void
      {
         §`!c§ = false;
         §'!l§.visible = false;
         §>!-§.setDisabled(true);
         §&#F§(true);
         §8$a§.§&!#§(Application.instance,§`"^§.INIT,function(param1:Event):void
         {
            hide();
         });
         §%%w§.§##$§(GetFriendsForMissionResult,this.§+%#§);
         §%%w§.§,U§(new GetFriendsForMission(this.bossIds,this.§+C§));
      }
      
      private function §+%#§(param1:§9$v§) : void
      {
         var _loc4_:SimpleProfileStructure = null;
         §%%w§.§-"j§(GetFriendsForMissionResult,this.§+%#§);
         §&#F§(false);
         var _loc2_:GetFriendsForMissionResult = GetFriendsForMissionResult(param1.message);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.profiles.length)
         {
            _loc4_ = _loc2_.profiles[_loc3_];
            this.§ "@§[_loc4_.id] = _loc2_.states[_loc3_];
            _loc3_++;
         }
         _loc2_.profiles.sort(this.§27§);
         if(_loc2_.profiles.length > 0)
         {
            setData(§4! §.§9%I§(_loc2_.profiles,true));
            §4#B§.visible = true;
            update();
         }
         else
         {
            §4#B§.visible = false;
            §'!l§.text = §0$N§.NO_FRIENDS_FOR_COOP_MISSION;
            §'!l§.visible = true;
            §>!-§.setDisabled(true);
            §'$a§("emptyCellsLayer").visible = false;
         }
      }
      
      private function §27§(param1:SimpleProfileStructure, param2:SimpleProfileStructure) : int
      {
         var _loc3_:uint = uint(this.§ "@§[param1.id]);
         var _loc4_:uint = uint(this.§ "@§[param2.id]);
         if(_loc3_ == 0 && _loc4_ != 0)
         {
            return -1;
         }
         if(_loc3_ != 0 && _loc4_ == 0)
         {
            return 1;
         }
         return 0;
      }
      
      override protected function §3u§(param1:§0$L§, param2:Object, param3:uint) : void
      {
         var _loc4_:int = 0;
         var _loc5_:uint = 0;
         if(param2)
         {
            _loc4_ = UserProfile(param2).getId();
            _loc5_ = uint(this.§ "@§[_loc4_]);
            if(_loc5_ == GetFriendsForMissionResult.STATE_SUCCESS)
            {
               §`!c§ = true;
               param1.setDisabled(false);
            }
            else
            {
               §-%f§(param1).removeHint();
               param1.setDisabled(true);
               if(_loc5_ == GetFriendsForMissionResult.STATE_EXCEED_BATTLES)
               {
                  param1.setQtip(§0$N§.FRIEND_EXCEED_BATTLES);
               }
               else if(_loc5_ == GetFriendsForMissionResult.STATE_MISSION_LOCKED)
               {
                  param1.setQtip(§0$N§.FRIEND_MISSION_LOCKED);
               }
            }
         }
         super.§3u§(param1,param2,param3);
      }
      
      override public function destroy() : void
      {
         super.destroy();
         §%%w§.§-"j§(GetFriendsForMissionResult,this.§+%#§);
         searchBtn.removeHandler(this.§]%k§);
      }
   }
}


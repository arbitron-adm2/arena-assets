package §#",§
{
   import § "d§.§,!c§;
   import § #m§.§;#^§;
   import § $q§.*;
   import § &5§.§%$O§;
   import § &5§.§=#P§;
   import § &5§.§@N§;
   import § K§.§2!!§;
   import §!!i§.§@&&§;
   import §!K§.§"%$§;
   import §!K§.§&#Q§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §"%H§.§6$3§;
   import §##j§.§!%&§;
   import §##j§.§#$!§;
   import §##j§.§0m§;
   import §##y§.CollisionEvent;
   import §#$e§.§!a§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&#h§.§?B§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.§4&5§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§=t§;
   import §+%S§.§[&;§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0%[§.*;
   import §0%j§.§0$+§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §2#i§.§!$A§;
   import §2#i§.§+%z§;
   import §2#x§.§]s§;
   import §3"_§.§?#w§;
   import §3#T§.§+&F§;
   import §3#a§.§-!`§;
   import §3%J§.SpecialDealWindow;
   import §4!x§.§@& §;
   import §4#`§.§]$c§;
   import §4u§.§!!o§;
   import §5!9§.§6$,§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7!n§.§'#n§;
   import §7!n§.§-!!§;
   import §7!n§.§2!j§;
   import §7!n§.§>!k§;
   import §7!n§.§@!g§;
   import §7!n§.§[&#§;
   import §7!n§.§`$m§;
   import §7"Q§.*;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §8$V§.*;
   import §9%k§.*;
   import §<!^§.§9"§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §<K§.*;
   import §=#g§.*;
   import §=&!§.§&$a§;
   import §=&!§.§]$d§;
   import §=&6§.*;
   import §>!_§.§4$x§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§+l§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@$§.*;
   import §@<§.§+%]§;
   import §[#q§.§,"m§;
   import §]$v§.*;
   import §]^§.§-$T§;
   import §^!]§.WeaponShootEvent;
   import §^"y§.*;
   import com.adobe.images.PNGEncoder;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.StageQuality;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.gui.menu.rating.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.BuyReactionRate;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.structures.ProfileDoubleKeyStructure;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.§4$g§;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.*;
   
   public class §=&G§ extends §0-§
   {
      
      private var oneFriendRewardPanel:§&"A§;
      
      private var allFriendComebackRewardPanel:§&"A§;
      
      public function §=&G§()
      {
         super(§6#A§.§!&6§(§+"'§.§?1§));
         §&$9§.§>&F§(container["title"],§"-§.§+$m§,§0$N§.RETURN_FRIENDS_MENU_TITLE);
         container["msg"]["text"].text = §0$N§.RETURN_FRIENDS_MENU_MSG;
         container["msg"].visible = false;
         §>!-§.setText(§0$N§.RETURN_FRIENDS_MENU_BTN,§"-§.§+$m§);
         prev.removeAllWhenDisabled = true;
         next.removeAllWhenDisabled = true;
         §&$9§.§>&F§(container["descr1"],§"-§.§+$m§,§0$N§.RETURN_FRIENDS_MENU_DESCR_1);
         §&$9§.§>&F§(container["descr2"],§"-§.§+$m§,§0$N§.RETURN_FRIENDS_MENU_DESCR_2);
         container["label1"].text = §0$N§.RETURN_FRIENDS_MENU_LABEL_1;
         container["label2"].text = §0$N§.RETURN_FRIENDS_MENU_LABEL_2;
         §&$9§.§>&F§(container["oneFriendCount"],§"-§.§+$m§,"x" + 1);
         §&$9§.§>&F§(§'%s§("allFriendsCount"),§"-§.§+$m§,"x" + 0);
         this.oneFriendRewardPanel = new §&"A§(container["oneFriendRewardPanel"]);
         this.oneFriendRewardPanel.§=&8§(§[#_§.§9$`§);
         this.allFriendComebackRewardPanel = new §&"A§(container["allFriendComebackRewardPanel"]);
         this.allFriendComebackRewardPanel.§=&8§(new §1%z§([]));
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §,!n§ = false;
         §<"b§ = false;
         §-!^§ = §0$N§.BUTTON_CLOSE;
         §[%T§ = true;
         §7%c§ = true;
      }
      
      override protected function okAction() : void
      {
         var _loc1_:UserProfile = null;
         if(§1&5§().length)
         {
            _loc1_ = UserProfile(§1&5§()[0]);
            Social.§!g§.§&&'§(_loc1_,this.§<#+§);
         }
      }
      
      private function §<#+§(param1:§,$2§) : void
      {
         var _loc2_:UserProfile = null;
         if(param1.success)
         {
            this.§&#F§(true);
            _loc2_ = UserProfile(§1&5§()[0]);
            §8"%§.§?#H§.§5"G§(_loc2_,this.§3%]§);
         }
         else
         {
            §,#W§.§6!P§(§0"-§.TITLE_ERROR,§>!n§.§'!X§(param1));
         }
      }
      
      private function §3%]§() : void
      {
         this.§&#F§(false);
         this.update();
      }
      
      override public function show(param1:Boolean = true) : void
      {
         this.§&#F§(true);
         if(Boolean(store) && !store.§[5§().length == 0)
         {
            this.§&#F§(false);
         }
         else
         {
            §8"%§.§?#H§.§=$=§(this.§ $+§);
         }
         super.show(param1);
         if(getSelected() == null)
         {
            §>!-§.setDisabled(true);
         }
      }
      
      override protected function §,B§(param1:Event) : void
      {
         super.§,B§(param1);
         if(getSelected() != null)
         {
            §>!-§.setDisabled(false);
         }
      }
      
      override public function §&#F§(param1:Boolean) : void
      {
         super.§&#F§(param1);
         §4#B§.visible = !param1;
      }
      
      private function § $+§(param1:Array, param2:uint) : void
      {
         var _loc3_:§1%z§ = null;
         store = new §,4§(param1,§4#B§.numChildren,param2);
         if(param2 > 0)
         {
            _loc3_ = new §1%z§([new §#$!§(§+$A§.INGAME,§[#_§.§9$`§.§#!G§() * param2),new §0m§(§[#_§.§9$`§.§=u§() * param2),new §!%&§(0,§[#_§.§9$`§.§2"Y§() * param2)]);
            this.allFriendComebackRewardPanel.§=&8§(_loc3_);
            §&$9§.§>&F§(container["allFriendsCount"],§"-§.§+$m§,"x" + param2);
         }
         this.update();
         this.§&#F§(false);
         container["msg"].visible = param2 <= 0;
         §>!-§.setDisabled(getSelected() == null);
      }
      
      override public function update() : void
      {
         this.§&#F§(true);
         super.update();
      }
      
      override protected function §;""§(param1:Array) : void
      {
         super.§;""§(param1);
         this.§&#F§(false);
         if(getSelected() == null)
         {
            §>!-§.setDisabled(true);
         }
      }
      
      override public function setData(param1:Array) : void
      {
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         §&$9§.§>&F§(param1["disabled"]["text"],§"-§.§+$m§,§0$N§.RETURN_FRIENDS_MENU_DISABLE_TEXT_BTN);
         return new §-%f§(param1 as MovieClip,null,false,false);
      }
      
      override protected function §3u§(param1:§0$L§, param2:Object, param3:uint) : void
      {
         var _loc5_:String = null;
         var _loc4_:UserProfile = UserProfile(param2);
         if(_loc4_)
         {
            param1.setDisabled(§8"%§.§?#H§.§ "E§(_loc4_));
            _loc5_ = §4! §.§<&-§(_loc4_);
            §`&-§(param1).setQtipPanel(new §!!o§(_loc5_),§;#^§.§[!K§);
            §`&-§(param1).setQtip(_loc5_);
         }
         super.§3u§(param1,param2,param3);
      }
   }
}


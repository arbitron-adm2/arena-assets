package §#",§
{
   import § !8§.§`!d§;
   import § "L§.*;
   import § "d§.§,!c§;
   import § %f§.*;
   import §!%6§.§56§;
   import §"#x§.§'"$§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §#$e§.§!a§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%# §.*;
   import §&!?§.§@&@§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'%[§.§ i§;
   import §'%[§.§3%5§;
   import §'%[§.§4!C§;
   import §'%[§.§@"4§;
   import §'%[§.§]$5§;
   import §+$=§.*;
   import §+%S§.§'%V§;
   import §+%S§.§?3§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §-@§.*;
   import §0%j§.§0$+§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1#p§.§2=§;
   import §1&-§.§4!s§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §2#s§.*;
   import §2#x§.§]s§;
   import §3"_§.§?#w§;
   import §3#a§.§-!`§;
   import §3#a§.§<#_§;
   import §4'§.§`"q§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7"Q§.§0&'§;
   import §7$t§.§??§;
   import §8$V§.§[#_§;
   import §8$V§.§]!i§;
   import §9%W§.§&!P§;
   import §;$%§.§0%%§;
   import §<!W§.§#&#§;
   import §<"L§.*;
   import §<%k§.§`!v§;
   import §=&!§.§<$!§;
   import §=&!§.§]$d§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$7§.§6%k§;
   import §?$7§.§6J§;
   import §?$K§.§3#j§;
   import §?$K§.§=z§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§&#Z§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@<§.§+%]§;
   import §]#[§.§2%o§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^!"§.§0^§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import config.achievements.§!$L§;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§""t§;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.PostToChat;
   import ru.pragmatix.wormix.messages.server.OpenChestResult;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§6Y§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.utils.§]V§;
   
   public class ReturnFriendRequestMenu extends §0&'§
   {
      
      private var scrollPane:§>S§;
      
      private var rewardPanel:§&"A§;
      
      public function ReturnFriendRequestMenu()
      {
         super(§6#A§.§!&6§("ReturnFriendRequestMenu"));
         §=%1§ = §5!r§.§<![§;
         container.scrollRect = new Rectangle(0,0,§ "N§.stageWidth,§ "N§.stageHeight);
         this.scrollPane.update();
         §&$9§.§>&F§(container["title"],§"-§.§+$m§,§0$N§.RETURN_FRIEND_REQUEST_MENU_TITLE);
         §&$9§.§>&F§(container["description"],§"-§.§+$m§,§0$N§.RETURN_FRIEND_REQUEST_MENU_DESCR);
         this.rewardPanel = new §&"A§(container["rewardPanel"]);
         this.rewardPanel.§=&8§(§[#_§.§9$`§);
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §<"b§ = false;
         §[%T§ = true;
         §,!n§ = true;
         §]!I§ = false;
      }
      
      override protected function §,B§(param1:Event) : void
      {
         super.§,B§(param1);
         §,#W§.§'!+§(§0$N§.TITLE_CONFIRMATION,§0$N§.RETURN_FRIEND_REQUEST_MENU_MSG,§,#W§.§7"d§,this.§3#s§,this.§^$u§).show();
      }
      
      private function §3#s§() : void
      {
         §[&G§.§8"&§.show();
         §8"%§.§?#H§.§5z§(UserProfile(getSelected()),this.§@#`§);
      }
      
      private function §@#`§() : void
      {
         this.hide();
         §[&G§.§8"&§.hide();
      }
      
      private function §^$u§() : void
      {
         cells[§#%q§()].setSelected(false);
      }
      
      override protected function §&%p§() : DisplayObjectContainer
      {
         this.scrollPane = new §>S§(getChildByName("scrollPane") as MovieClip);
         var _loc1_:Sprite = new Sprite();
         DisplayObjectContainer(this.scrollPane.getChildByName("content")).addChild(_loc1_);
         return _loc1_;
      }
      
      override public function show(param1:Boolean = true) : void
      {
         removeChild(this.scrollPane);
         super.show(param1);
         §0$L§(cells[0]).setSelected(false);
         addChild(this.scrollPane);
         this.scrollPane.§]%E§();
      }
      
      override public function hide() : void
      {
         this.scrollPane.§@%i§();
         super.hide();
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         var _loc2_:ReturnFriendRequestMenuCell = new ReturnFriendRequestMenuCell(param1 as MovieClip);
         §4"0§.§^%T§(_loc2_,3);
         return _loc2_;
      }
      
      override public function setData(param1:Array) : void
      {
         store = new §<#D§(param1,param1.length);
         this.§="3§(param1);
      }
      
      private function §="3§(param1:Array) : void
      {
         var _loc3_:int = 0;
         var _loc4_:MovieClip = null;
         var _loc2_:int = int(param1.length);
         if(cells.length != param1.length)
         {
            §2&5§();
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               _loc4_ = §6#A§.§!&6§("ReturnFriendRequestMenuCell");
               _loc4_["dummy"].buttonMode = true;
               §4#B§.addChild(_loc4_);
               if(_loc3_ > 0)
               {
                  §`o§.§1$T§(_loc4_,§4#B§,0);
               }
               _loc3_++;
            }
            §<#X§();
            this.scrollPane.update();
         }
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this.scrollPane.destroy();
         this.scrollPane = null;
         this.rewardPanel.destroy();
         this.rewardPanel = null;
      }
   }
}


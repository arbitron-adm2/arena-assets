package §`"x§
{
   import § !8§.§`!d§;
   import § $q§.§-%f§;
   import § $q§.§1$Y§;
   import § &5§.§=#P§;
   import § &5§.Water;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§`&$§;
   import §"% §.*;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.§9§;
   import §#%!§.§%&F§;
   import §#%!§.§^%c§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%$!§.§@!o§;
   import §%&3§.§'C§;
   import §&"c§.§5$n§;
   import §&&6§.§'%"§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §'$Z§.§2#f§;
   import §+$2§.§;#T§;
   import §+$=§.§6#A§;
   import §,#c§.ArenaMenu;
   import §-%B§.§-"o§;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#T§.§;#Q§;
   import §3#a§.*;
   import §4f§.§-&§;
   import §5!,§.§?!P§;
   import §5"J§.*;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7!B§.§`"d§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §7$t§.§[!X§;
   import §7$t§.§^%%§;
   import §9%W§.§ !@§;
   import §9%W§.§&!P§;
   import §<"L§.*;
   import §<%k§.§`!v§;
   import §=1§.*;
   import §?$7§.§+#N§;
   import §?$K§.§=z§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@#K§.§-§;
   import §@$§.§&%z§;
   import §@$§.§+%>§;
   import §@$§.§6$[§;
   import §@<§.§+%]§;
   import §]$&§.§2&2§;
   import §^"y§.§]#i§;
   import §^4§.§@#J§;
   import §`"p§.*;
   import §`%&§.§5$1§;
   import com.inreflected.forks.spark.effects.animation.Keyframe;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.ui.Keyboard;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§2%F§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.IncomingClanMessage;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§,$n§;
   
   public class SearchFriendMenu extends §1$Y§
   {
      
      private static const §^$i§:uint = 12;
      
      public static const §1$R§:uint = 35;
      
      private var §'!l§:TextField;
      
      private var §2#>§:§[a§;
      
      private var inputField:TextField;
      
      private var searchBtn:§?%>§;
      
      private var copyIdBtn:§?%>§;
      
      private var §-!u§:UserProfile;
      
      private var §;%V§:String;
      
      private var §1!H§:Boolean;
      
      private var §2#!§:Array = [];
      
      private var §%!]§:Boolean = true;
      
      public function SearchFriendMenu(param1:§[a§)
      {
         this.§2#>§ = param1;
         super(§6#A§.§!&6§(§+"'§.§-D§));
         §7&5§.§>&<§(§'%s§("title"),§0$N§.SEARCH_FRIEND_MENU_TITLE);
         §7&5§.§>&<§(§'%s§("searchLabel"),§0$N§.SEARCH_FRIEND_LABEL);
         var _loc2_:TextField = §'%s§("msgId");
         var _loc3_:TextField = §'%s§("textId");
         §7&5§.§>&<§(_loc2_,§0%§.format(§0$N§.USER_ID,{"id":":"}));
         §7&5§.§>&<§(_loc3_,Application.userProfile.getId().toString());
         _loc2_.autoSize = _loc3_.autoSize = TextFieldAutoSize.CENTER;
         _loc3_.mouseEnabled = true;
         _loc3_.selectable = true;
         _loc2_.x = (width - _loc2_.width - _loc3_.width) * 0.5;
         _loc3_.x = _loc2_.x + _loc2_.width;
         this.§'!l§ = §'%s§("msg");
         this.§>%1§();
         this.§,]§();
         this.§'Q§();
         this.disableSearch(true);
         §<"b§ = false;
      }
      
      override public function §&#F§(param1:Boolean) : void
      {
         super.§&#F§(param1);
         loading.y = 144.35;
      }
      
      override public function show(param1:Boolean = true) : void
      {
         super.show(param1);
         this.§'!l§.visible = false;
         §'$a§("emptyCellsLayer").visible = true;
         Application.instance.stage.focus = this.inputField;
         if(this.§2#!§.length > 0)
         {
            this.showFoundFriends(this.§2#!§,this.§%!]§);
         }
      }
      
      override public function hide() : void
      {
         super.hide();
         this.§;%V§ = "";
      }
      
      private function §,]§() : void
      {
         this.searchBtn = §!&5§.§7#[§(getChildByName("searchBtn"));
         this.searchBtn.§[!u§(this.§]%k§);
      }
      
      private function §'Q§() : void
      {
         this.copyIdBtn = §!&5§.§7#[§(getChildByName("copyIdBtn"));
         this.copyIdBtn.§[!u§(this.§[""§);
         this.copyIdBtn.setQtip(§0$N§.COPY_ID);
      }
      
      private function §>%1§() : void
      {
         this.inputField = §'%s§("inputField");
         this.inputField.maxChars = §1$R§;
         this.inputField.addEventListener(KeyboardEvent.KEY_DOWN,this.§[,§);
         this.inputField.addEventListener(Event.CHANGE,this.§,P§);
      }
      
      private function §[,§(param1:KeyboardEvent) : void
      {
         if(param1.charCode == Keyboard.ENTER)
         {
            this.§3&1§();
         }
      }
      
      private function §,P§(param1:Event) : void
      {
         this.disableSearch(this.inputField.text.length <= 0);
      }
      
      private function §3&1§() : void
      {
         var _loc1_:String = this.inputField.text.toLowerCase();
         if(!this.§1!H§ && _loc1_ != this.§;%V§ && _loc1_.length > 0)
         {
            this.§-!u§ = null;
            this.§1!H§ = true;
            this.disableSearch(true);
            this.§5$!§(true);
            this.§2#>§.search(_loc1_);
            this.§;%V§ = _loc1_;
         }
      }
      
      private function §]%k§(param1:MouseEvent) : void
      {
         this.§3&1§();
      }
      
      private function §[""§(param1:MouseEvent) : void
      {
         §2"e§.§^&5§(Application.userProfile.getId().toString());
      }
      
      override protected function §%&9§() : void
      {
         §7%c§ = false;
         super.§%&9§();
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         return new §-%f§(MovieClip(param1),this.§+$7§(),true);
      }
      
      override protected function §3$R§(param1:§0$L§) : void
      {
         super.§3$R§(param1);
         param1.addEventListener(§[%w§.MENU_ITEM_CLICK,this.§2$D§);
      }
      
      private function §+$7§() : §+%>§
      {
         return this.§%!]§ ? new §&%z§() : new §6$[§();
      }
      
      public function disableSearch(param1:Boolean) : void
      {
         this.searchBtn.setDisabled(param1);
      }
      
      public function disableInputField(param1:Boolean) : void
      {
         if(param1)
         {
            this.inputField.type = TextFieldType.DYNAMIC;
         }
         else
         {
            this.inputField.type = TextFieldType.INPUT;
         }
      }
      
      public function showFoundFriends(param1:Array, param2:Boolean = true) : void
      {
         this.§%!]§ = param2;
         if(param1.length > §^$i§)
         {
            param1.length = §^$i§;
         }
         this.disableSearch(false);
         this.§5$!§(false);
         setData(param1);
         update();
         this.§2#!§ = param1;
         this.§1!H§ = false;
      }
      
      private function §5$!§(param1:Boolean) : void
      {
         var _loc2_:§0$L§ = null;
         for each(_loc2_ in cells)
         {
            _loc2_.setDisabled(param1);
         }
      }
      
      override protected function §;""§(param1:Array) : void
      {
         super.§;""§(param1);
         if(param1.length > 0)
         {
            this.§'!l§.visible = false;
            this.§-!u§ = param1[0];
            §1$'§(this.§-!u§);
         }
         else
         {
            this.§'!l§.visible = true;
            this.§'!l§.text = §0$N§.FRIENDS_NOT_FOUND;
            §4#B§.visible = false;
            §'$a§("emptyCellsLayer").visible = false;
         }
      }
      
      override protected function §3u§(param1:§0$L§, param2:Object, param3:uint) : void
      {
         super.§3u§(param1,param2,param3);
         var _loc4_:§-%f§ = §-%f§(param1);
         if(param2)
         {
            if(_loc4_.§""u§().toString() != this.§+$7§().toString())
            {
               _loc4_.§?%_§(this.§+$7§());
            }
         }
      }
      
      protected function §2$D§(param1:Event) : void
      {
         var _loc2_:§0$L§ = null;
         _loc2_ = §0$L§(param1.target);
         var _loc3_:UserProfile = _loc2_.getItem() as UserProfile;
         if(!_loc2_.§8,§() && Boolean(_loc3_))
         {
            this.§-!u§ = _loc3_;
         }
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this.inputField.removeEventListener(KeyboardEvent.KEY_DOWN,this.§[,§);
         this.inputField.removeEventListener(Event.CHANGE,this.§,P§);
      }
   }
}


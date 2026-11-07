package ru.pragmatix.wormix.gui
{
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#$e§.§!a§;
   import §#k§.§9$v§;
   import §%"Z§.§'$2§;
   import §&"c§.§5$n§;
   import §&$Y§.§5%]§;
   import §&%X§.§-#N§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'%[§.§ i§;
   import §'%[§.§3%5§;
   import §'%[§.§4!C§;
   import §'%[§.§@"4§;
   import §'%[§.§]$5§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §-8§.*;
   import §-@§.*;
   import §0%[§.§%"'§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§9&#§;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §1%H§.§!"=§;
   import §2!-§.§-!6§;
   import §2!-§.DamageEvent;
   import §2#H§.§!%C§;
   import §2#V§.§-#U§;
   import §2#i§.§+%z§;
   import §2#x§.§]s§;
   import §3"_§.§?#w§;
   import §3#T§.Helicopter;
   import §3#a§.§<#_§;
   import §5!9§.§6$,§;
   import §6%2§.§#"B§;
   import §9"^§.§&"E§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §=!C§.§0#"§;
   import §=!C§.§;#M§;
   import §=#g§.*;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?"[§.*;
   import §?#g§.§"&>§;
   import §?#g§.§&"P§;
   import §?$K§.§3#j§;
   import §?$L§.§&$9§;
   import §@!N§.*;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§<!9§;
   import §@!i§.§@$&§;
   import §@$v§.§%!w§;
   import §@$v§.§%3§;
   import §@<§.§+%]§;
   import §[!`§.§8%U§;
   import §[" §.*;
   import §[%'§.§<"G§;
   import §]$v§.*;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`"p§.*;
   import §`#x§.*;
   import §`v§.§2&H§;
   import config.achievements.§^t§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.ui.Mouse;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.GetAchievementsResult;
   import ru.pragmatix.wormix.messages.server.OpenChestResult;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpDropPlayer;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class UserInfo extends §`&-§
   {
      
      private var §+##§:§%!w§;
      
      private var §<$+§:§#" §;
      
      private var §'p§:§&"E§;
      
      private var paramsContainer:§`&-§;
      
      private var moneyPanel:DisplayObjectContainer;
      
      private var §3!w§:DisplayObject;
      
      private var §=!!§:DisplayObject;
      
      private var money:TextField;
      
      private var realMoney:TextField;
      
      private var ratingPanel:§`&-§;
      
      private var ratingCount:TextField;
      
      private var reactionPanel:§`&-§;
      
      private var reactionCount:TextField;
      
      private var § H§:§>$8§;
      
      private var §2%P§:§?%>§;
      
      private var ruby:§?%>§;
      
      private var reactionBtn:§?%>§;
      
      private var ratingBtn:§?%>§;
      
      private var §]&9§:int;
      
      private var §]"S§:int;
      
      private var §,V§:int;
      
      private var §3!1§:§?%>§;
      
      private var §]$%§:MovieClip;
      
      private var version:§`&-§;
      
      private var §3#6§:§`&-§;
      
      public function UserInfo()
      {
         var _loc3_:TextField = null;
         super(§6#A§.§!&6§(§+"'§.§4#-§));
         this.§+##§ = new §%3§(MovieClip(getChildByName("expirience_panel")));
         this.§]&9§ = this.§+##§.x;
         this.paramsContainer = new §`&-§(getChildByName("paramsContainer"));
         this.§]"S§ = this.paramsContainer.x;
         this.moneyPanel = this.paramsContainer.§'$a§("moneyPanel");
         this.§=!!§ = this.paramsContainer.§'$a§("homeBg");
         this.§3!w§ = this.paramsContainer.§'$a§("bg");
         this.§,V§ = this.moneyPanel.x;
         this.§2%P§ = §!&5§.§7#[§(this.moneyPanel.getChildByName("coinIcon"));
         this.§2%P§.§[!u§(§1%"§.§]$<§(§[#u§,this,[§5%]§.§;#d§]));
         this.ruby = §!&5§.§7#[§(this.moneyPanel.getChildByName("rubyIcon"));
         this.ruby.§[!u§(§1%"§.§]$<§(§[#u§,this,[§5%]§.§?$h§]));
         this.money = TextField(this.moneyPanel.getChildByName("money"));
         this.realMoney = TextField(this.moneyPanel.getChildByName("realMoney"));
         this.ratingPanel = new §`&-§(this.paramsContainer.getChildByName("ratingPanel"));
         this.ratingCount = TextField(this.ratingPanel.getChildByName("ratingCount"));
         this.reactionPanel = new §`&-§(this.paramsContainer.getChildByName("reactionPanel"));
         this.reactionPanel.setVisible(false);
         this.reactionCount = TextField(this.reactionPanel.getChildByName("reactionCount"));
         this.ratingBtn = §!&5§.§7#[§(this.ratingPanel.getChildByName("ratingBtn"));
         this.ratingBtn.§[!u§(Application.§5!>§.§1$i§.§7"`§);
         this.reactionBtn = §!&5§.§7#[§(this.reactionPanel.getChildByName("reactionBtn"));
         this.reactionBtn.§[!u§(Application.§5!>§.§1$i§.§8!F§);
         this.§'p§ = new §&"E§(MovieClip(getChildByName("avatar")));
         this.§'p§.§4%8§(false);
         this.§<$+§ = new §#" §(getChildByName("userParamsIcon"),§0$N§.POINTS_ICON_QTIP);
         this.§ H§ = new §>$8§(getChildByName("christmassKey"));
         this.§ H§.§64§(0);
         this.§3!1§ = §!&5§.§7#[§(getChildByName("bank" + (!§0#2§.§0%Y§() ? "Dark" : "Light")));
         getChildByName("bank" + (§0#2§.§0%Y§() ? "Dark" : "Light")).visible = false;
         this.§3!1§.§[!u§(§[#u§);
         this.§3!1§.§00§(null);
         this.§3!1§.§]%$§(§`!v§.§3"[§);
         if(§8"%§.§]$s§.§%%h§() == null)
         {
            this.§+"4§(false);
         }
         else
         {
            if(!this.§]$%§)
            {
               this.§]$%§ = §6#A§.§!&6§(§0#2§.§0%Y§() ? §+"'§.§8&F§ : §+"'§.§>%p§);
               §?!C§(this.§]$%§);
            }
            _loc3_ = MovieClip(this.§]$%§.getChildAt(0)).getChildByName("text") as TextField;
            §7&5§.§>&<§(_loc3_,§0$N§.DAILY_BONUS_BALLOON);
            this.§]$%§.y = this.§3!1§.y + this.§3!1§.height;
            this.§]$%§.x = this.§3!1§.x - this.§]$%§.width * 0.5;
         }
         var _loc1_:MovieClip = §6#A§.§!&6§(§+"'§.§3%y§);
         _loc1_.getChildByName("panel").visible = false;
         _loc1_.alpha = 0.5;
         this.version = new §`&-§(_loc1_);
         addChild(this.version);
         this.version.§'%s§("text").autoSize = TextFieldAutoSize.LEFT;
         this.version.y = this.§3!1§.y;
         var _loc2_:MovieClip = §6#A§.§!&6§(§+"'§.§3%y§);
         _loc2_.alpha = 0.5;
         this.§3#6§ = new §`&-§(_loc2_);
         addChild(this.§3#6§);
         this.§3#6§.§'%s§("text").autoSize = TextFieldAutoSize.LEFT;
         this.§3#6§.y = this.version.y;
      }
      
      private static function §[#u§(param1:String) : void
      {
         if(Social.§-%=§)
         {
            Social.§-%=§.openBank(param1);
         }
         else
         {
            §,#W§.§`!U§("In development");
         }
      }
      
      public function update(param1:UserProfile, param2:Boolean = true) : void
      {
         var _loc11_:int = 0;
         var _loc12_:TextField = null;
         var _loc13_:Array = null;
         var _loc14_:Date = null;
         var _loc15_:Number = NaN;
         var _loc16_:int = 0;
         var _loc17_:String = null;
         var _loc18_:String = null;
         var _loc3_:Boolean = §4! §.isMe(param1);
         var _loc4_:Boolean = param1.getLevel() == §<!9§.getMaxLevel();
         this.§"C§(param1.§#!G§());
         this.§]!c§(param1.§@$D§());
         this.§+!C§(param1.getRating());
         this.§=#6§(param1.§=u§());
         this.§'p§.setItem(param1);
         if(param2)
         {
            _loc11_ = int(§<!9§.§"#4§(param1.getLevel()));
            _loc12_ = this.§+##§.§'%s§("text");
            §7&5§.§?$k§(_loc12_,param1.§[!s§().toString());
            this.§+##§.§]"M§(_loc11_);
            this.§+##§.setValue(param1.§[!s§());
            this.§+##§.setQtip(§0%§.format(§0$N§.EXP_CURRENT,{
               "cur":param1.§[!s§(),
               "max":_loc11_
            }),§;#^§.§[!K§,§+"'§.§3%y§);
            this.§<$+§.update();
            if(_loc4_)
            {
               this.paramsContainer.x = this.§]"S§ - this.§+##§.width + 13;
               this.reactionPanel.x = this.ratingPanel.x + this.ratingPanel.width - 5;
               this.moneyPanel.x = this.reactionPanel.x + this.reactionPanel.width - 22;
            }
            else
            {
               this.paramsContainer.x = this.§]"S§;
               this.moneyPanel.x = this.§,V§;
            }
            this.§2%P§.simpleButton.mouseEnabled = this.ruby.simpleButton.mouseEnabled = true;
            this.§ H§.§64§(Application.userProfile.§2!>§().§ %n§(§#"B§.§;#%§));
         }
         else
         {
            this.paramsContainer.x = -28;
            this.moneyPanel.x = this.§,V§;
            this.§2%P§.simpleButton.mouseEnabled = this.ruby.simpleButton.mouseEnabled = _loc3_;
         }
         this.§=!!§.visible = !param2;
         this.§3!w§.visible = param2;
         this.§3!w§.x = this.moneyPanel.x + 3;
         this.§=!!§.x = this.moneyPanel.x + 13;
         this.§'p§.getChildByName("avatarBorder").visible = param2;
         this.§'p§.getChildByName("avatarBorderHome").visible = !param2;
         this.ratingPanel.setVisible(param2);
         this.§+##§.setVisible(param2 && !_loc4_);
         this.§ H§.setVisible(param2 && Application.userProfile.getLevel() >= §,! §.§5!`§);
         this.§<$+§.setVisible(_loc3_);
         this.reactionPanel.setVisible(param2 && _loc4_);
         this.§3!1§.setVisible(_loc3_);
         this.§+"4§(_loc3_ && §8"%§.§]$s§.§%%h§() != null);
         this.§2"O§();
         var _loc5_:Array = §2"e§.§[%Q§();
         _loc5_.splice(3,1);
         var _loc6_:String = §2"e§.§'E§();
         var _loc7_:TextField = this.version.§'%s§("text");
         var _loc8_:String = Application.instance.§;"7§() ? "#" : (Application.instance.§#&7§() ? "+" : "");
         _loc7_.text = §0$N§.VERSION + " " + _loc5_.join(".") + _loc6_ + _loc8_;
         _loc7_.textColor = param2 ? (§0#2§.§0%Y§() ? 6710937 : (§0#2§.§"&,§() ? 7829418 : 5592490)) : 11184810;
         this.version.getChildByName("panel").width = _loc7_.width + _loc7_.x * 2;
         this.version.x = this.§3!1§.x + this.§3!1§.width + 15;
         var _loc9_:String = §8"%§.context.§2!k§()[§-#N§.§;!I§];
         this.§3#6§.setVisible(Boolean(_loc9_) && _loc9_.indexOf("-") > -1);
         if(_loc9_)
         {
            _loc7_ = this.§3#6§.§'%s§("text");
            _loc13_ = String(_loc9_).split("-");
            _loc14_ = new Date(_loc13_[0],int(_loc13_[1]) - 1,_loc13_[2]);
            _loc15_ = _loc14_.getTime() / 1000;
            _loc16_ = §0#2§.§0%x§(_loc15_) + 1;
            if(_loc16_ == 1)
            {
               _loc17_ = §0$N§.NEXT_RELEASE_IS_COMING + (Application.instance.§#&7§() ? " (нет)" : "");
            }
            else
            {
               _loc18_ = Social.§-%c§.§4!]§(_loc16_,§0$N§.DAY_PLURALS);
               _loc17_ = §0%§.format(§0$N§.NEXT_RELEASE_TIME_LEFT,{
                  "count":_loc16_,
                  "days":_loc18_
               }) + (Application.instance.§#&7§() ? " (но это не точно)" : "");
            }
            _loc7_.text = _loc16_.toString();
            this.§3#6§.getChildByName("panel").width = _loc7_.width + _loc7_.x * 2;
            this.§3#6§.x = this.version.x + this.version.width + 15;
            _loc7_.textColor = param2 ? (§0#2§.§0%Y§() || §0#2§.§"&,§() ? 170 : 170) : 170;
         }
         var _loc10_:String = param2 ? §+"'§.§3%y§ : §+"'§.§]!H§;
         this.§3#6§.setQtip(_loc17_,§;#^§.§[!K§,_loc10_);
         this.§2%P§.setQtip(§0$N§.FUZY_QTIP,§;#^§.§[!K§,_loc10_);
         this.ruby.setQtip(§0$N§.RUBY_QTIP,§;#^§.§[!K§,_loc10_);
         this.§3!1§.setQtip(§0$N§.BANK_BTN,§;#^§.§[!K§,_loc10_);
         this.ratingBtn.setQtip(§0$N§.RATING_QTIP_EX,§;#^§.§[!K§,_loc10_);
         this.reactionBtn.setQtip(§0$N§.REACTION_LEVEL_QTIP,§;#^§.§[!K§,_loc10_);
         this.§<$+§.§%%S§(param2);
         this.§'p§.§%%S§(param2);
      }
      
      public function §+"4§(param1:Boolean) : void
      {
         if(this.§]$%§)
         {
            if(param1)
            {
               this.§]$%§.play();
            }
            else
            {
               this.§]$%§.stop();
            }
            this.§]$%§.visible = param1;
         }
      }
      
      private function §2"O§() : void
      {
         this.§3!1§.x = this.paramsContainer.x + this.paramsContainer.width - 1;
         if(§8"%§.§]$s§.§%%h§() != null)
         {
            this.§]$%§.x = this.§3!1§.x - this.§]$%§.width * 0.5;
         }
      }
      
      public function §"C§(param1:int) : void
      {
         §7&5§.§?$k§(this.money,§2"e§.§5%t§(param1));
      }
      
      public function §]!c§(param1:int) : void
      {
         §7&5§.§?$k§(this.realMoney,§2"e§.§5%t§(param1));
      }
      
      public function §+!C§(param1:int) : void
      {
         §7&5§.§?$k§(this.ratingCount,§2"e§.§5%t§(param1));
      }
      
      public function §=#6§(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         _loc2_ = §@$&§.§#!F§(param1);
         _loc3_ = Application.userProfile.§^!n§();
         var _loc4_:String = _loc2_.toString() + (_loc3_ > 0 ? " (+" + _loc3_ + ")" : "");
         var _loc5_:String = §0%§.format(§0$N§.LEVEL_REQUIREMENT,{"level":_loc4_});
         §7&5§.§?$k§(this.reactionCount,_loc5_);
      }
      
      public function §?$J§(param1:uint) : void
      {
         this.§ H§.§64§(param1);
      }
      
      public function get §^#m§() : §#" §
      {
         return this.§<$+§;
      }
   }
}


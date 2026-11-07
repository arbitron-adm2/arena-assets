package §-"Q§
{
   import § #m§.§;#^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§2v§;
   import §"$+§.§@C§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §%L§.§%%w§;
   import §&#h§.§-"F§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0%[§.Cookie;
   import §1#p§.§2=§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §;#O§.§+%7§;
   import §=!C§.§#%m§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §[$<§.§>"9§;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import §^4§.§]"8§;
   import §`"p§.§20§;
   import §`"p§.ClanChatTab;
   import §`"p§.GlobalChatTab;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.*;
   import com.greensock.plugins.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.gui.controls.§&#>§;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.gui.controls.§8L§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuyShopItems;
   import ru.pragmatix.wormix.messages.client.GetQuestReward;
   import ru.pragmatix.wormix.messages.server.ArenaLocked;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §2!@§ extends §1#g§
   {
      
      private static var §-!Z§:int;
      
      private static const §!!s§:Number = 0.5;
      
      private var inner:MovieClip;
      
      private var background:Sprite;
      
      private var §;#s§:§8"@§;
      
      private var clanBtn:§8"@§;
      
      private var §@6§:GlobalChatTab;
      
      private var §"$9§:ClanChatTab;
      
      private var §+$J§:§8L§;
      
      private var §#$a§:MovieClip;
      
      private var §8K§:TextField;
      
      private var showBtn:§?%>§;
      
      private var hideBtn:§?%>§;
      
      private var §2!2§:Boolean;
      
      private var §4%L§:Boolean;
      
      private var §#%§:§#%m§;
      
      public function §2!@§()
      {
         super(§6#A§.§!&6§(§+"'§.§?![§));
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.inner = §'$a§("inner");
         this.background = this.inner.holder.background;
         §-!Z§ = this.background.width;
         this.§#$a§ = this.inner.notifyCounter;
         this.§8K§ = this.§#$a§.getChildByName("count") as TextField;
         this.§#$a§.visible = false;
         this.showBtn = §!&5§.§7#[§(this.inner.showBtn);
         this.hideBtn = §!&5§.§7#[§(this.inner.hideBtn);
         this.showBtn.§[!u§(this.§6"?§);
         this.hideBtn.§[!u§(this.§^%]§);
         this.showBtn.setQtip(§0$N§.§%! §("PANEL_CLAN_CHAT_SHOW"),§;#^§.RIGHT,§+"'§.§3%y§);
         this.hideBtn.setQtip(§0$N§.§%! §("PANEL_CLAN_CHAT_HIDE"),§;#^§.RIGHT,§+"'§.§3%y§);
         this.§;#s§ = §!&5§.§;#z§(this.inner.holder.tab1,"chat");
         this.§;#s§.setText(§0$N§.GLOBAL_CHAT_TAB_NAME,§"-§.§+$m§);
         this.clanBtn = §!&5§.§;#z§(this.inner.holder.tab2,"chat");
         this.clanBtn.setText(§0$N§.CLAN_CHAT_TAB_NAME,§"-§.§+$m§);
         this.§@6§ = new GlobalChatTab();
         this.§"$9§ = new ClanChatTab();
         this.§"$9§.§=%C§(this.§]!G§);
         this.§+$J§ = new §8L§();
         this.inner.holder.container.addChild(this.§+$J§.§#!`§());
         this.§+$J§.§3#J§(this.§@6§,this.§;#s§);
         this.§+$J§.§3#J§(this.§"$9§,this.clanBtn);
         this.§+$J§.§7!g§(this.§"$9§);
         this.§;"t§();
         this.§^%]§(false);
         this.§#%§ = new §#%m§(this);
      }
      
      public function §;"t§() : void
      {
         x = 0;
         this.background.width = Math.max(§-!Z§,§8"%§.§#m§.§ &H§);
         this.background.height = Application.instance.height;
         this.background.x = §-!Z§ - this.background.width;
         this.§@6§.§#$t§(this.background.width,this.background.height - this.inner.holder.container.y);
         this.§"$9§.§#$t§(this.background.width,this.background.height - this.inner.holder.container.y);
         var _loc1_:int = this.showBtn.y - this.§#$a§.y;
         this.showBtn.y = this.hideBtn.y = (§8"%§.§^%W§.getCorrectResolution2().§'$#§() - this.hideBtn.height) * 0.5;
         this.§#$a§.y = this.showBtn.y - _loc1_;
         this.inner.x = this.§4%L§ ? -§-!Z§ : -this.background.x;
      }
      
      private function §6"?§(param1:Boolean = true) : void
      {
         this.§4%L§ = false;
         §8"%§.§"#§.§%&7§();
         this.inner.holder.visible = true;
         this.§+$J§.activate();
         if(param1)
         {
            this.§2!2§ = true;
            TweenLite.to(this.inner,§!!s§,{
               "x":-this.background.x,
               "onComplete":this.§2$<§
            });
         }
         else
         {
            this.inner.x = -this.background.x;
            this.§2$<§();
         }
      }
      
      private function §^%]§(param1:Boolean = true) : void
      {
         this.§;"t§();
         this.§4%L§ = true;
         (this.§+$J§.§#M§ as §20§).deactivate();
         if(param1)
         {
            this.§2!2§ = true;
            TweenLite.to(this.inner,§!!s§,{
               "x":-§-!Z§,
               "onComplete":this.§2$<§
            });
         }
         else
         {
            this.inner.x = -§-!Z§;
            this.§2$<§();
         }
      }
      
      private function §2$<§() : void
      {
         this.§2!2§ = false;
         this.showBtn.setVisible(this.§4%L§);
         this.hideBtn.setVisible(!this.§4%L§);
         this.inner.holder.visible = !this.§4%L§;
      }
      
      private function §]!G§(param1:int) : void
      {
         this.§#$a§.visible = param1 > 0;
         §&$9§.§>&F§(this.§8K§,§"-§.§6"j§,String(param1));
      }
      
      public function §!#9§() : void
      {
         if(Application.§5!>§.§1$i§.isShown())
         {
            if(this.§4%L§)
            {
               this.§6"?§();
            }
            else
            {
               this.§^%]§();
            }
         }
      }
      
      public function §^J§() : void
      {
         this.§@6§.activate();
      }
      
      public function §]#h§() : §&#>§
      {
         return this.§+$J§.§#M§;
      }
      
      public function §7"s§() : Boolean
      {
         return !this.§4%L§;
      }
      
      public function get § $;§() : GlobalChatTab
      {
         return this.§@6§;
      }
      
      public function get §-7§() : ClanChatTab
      {
         return this.§"$9§;
      }
   }
}


package §`%c§
{
   import § !8§.§`!d§;
   import § #m§.§;#^§;
   import § #m§.§[&H§;
   import § &5§.Water;
   import §!!!§.§7&%§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"$+§.§^$`§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#"V§.§<"4§;
   import §#"V§.§?%>§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §&$Y§.*;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §+%S§.§%!%§;
   import §+%S§.§%#j§;
   import §+%S§.§[0§;
   import §,!f§.*;
   import §,"v§.§9%d§;
   import §,$J§.§0%G§;
   import §-!U§.§&%j§;
   import §-%B§.*;
   import §-8§.§3!x§;
   import §-@§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1!J§.§"t§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2!-§.NewUnitEvent;
   import §2!-§.§^!9§;
   import §2"L§.*;
   import §2#s§.§7"N§;
   import §2#s§.BankMenu;
   import §2B§.§#&E§;
   import §3#a§.§-!`§;
   import §4!x§.§@& §;
   import §4$b§.§6!G§;
   import §4B§.§=%8§;
   import §4f§.§-&§;
   import §6%2§.*;
   import §65§.§`"C§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§2& §;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#a§.*;
   import §8#o§.§1@§;
   import §9%W§.§!7§;
   import §9%W§.§8#p§;
   import §;&2§.§!#W§;
   import §<%E§.§,$2§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §=!p§.§1e§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §="z§.§<$t§;
   import §=&!§.§&$a§;
   import §=&!§.§]$d§;
   import §=&6§.*;
   import §>$q§.*;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$7§.§6&'§;
   import §@!N§.§4"0§;
   import §@!i§.§8%6§;
   import §@!i§.§<#&§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §["3§.§-%q§;
   import §["3§.§?%Q§;
   import §["3§.§@%^§;
   import §[%§.*;
   import §]$&§.§3$%§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^§.*;
   import §`#x§.*;
   import com.greensock.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.events.TweenEvent;
   import com.greensock.loading.*;
   import com.greensock.plugins.*;
   import com.inreflected.ui.touchScroll.*;
   import config.§=%A§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.media.SoundTransform;
   import flash.net.URLLoader;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.§1!`§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.rules.§6#H§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.gui.window.BossBattleOfferDialog;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.gui.window.§^$7§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.BuyShopItems;
   import ru.pragmatix.wormix.messages.client.GetDailyBonus;
   import ru.pragmatix.wormix.messages.client.GetSpecialDeal;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.GetDailyBonusResult;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.CreateBattleRequest;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   use namespace gestouch_internal;
   
   public class §"[§ extends BankMenu
   {
      
      protected const §&"N§:String = "bankButtonsGroup";
      
      private var messages:Dictionary;
      
      protected var rubyBtn:§8"@§;
      
      protected var fuzyBtn:§8"@§;
      
      protected var §,%?§:Array = [];
      
      protected var § $Y§:§1#g§;
      
      protected var §%";§:§1#g§;
      
      private var §="W§:Boolean = true;
      
      private var §9"l§:§?%>§;
      
      private var §"9§:MovieClip;
      
      public function §"[§(param1:Array, param2:Array, param3:String, param4:Dictionary)
      {
         this.messages = param4;
         super(param1,param2,param3);
      }
      
      override protected function init(param1:String, param2:Array, param3:Array) : void
      {
         this.currencyText = " " + param1;
         this.embedFonts();
         buttons = [];
         this.§#J§();
         this.§+#'§();
         this.§8%o§(MovieClip(this.§ $Y§.getContainer()),param2);
         this.§8%o§(MovieClip(this.§%";§.getContainer()),param3);
         this.§'l§();
         §1$M§ = 3;
         § %%§();
         daily = new §7"N§(§'$a§("daily"));
      }
      
      public function §'l§() : void
      {
         this.rubyBtn.setPressed(true);
         this.§6"?§(this.§ $Y§);
      }
      
      public function §;c§() : void
      {
         this.fuzyBtn.setPressed(true);
         this.§6"?§(this.§%";§);
      }
      
      protected function §#J§() : void
      {
         this.§ $Y§ = new §1#g§(getChildByName("rubyWindow") as DisplayObjectContainer);
         this.§%";§ = new §1#g§(getChildByName("fuzyWindow") as DisplayObjectContainer);
         this.§,%?§.push(this.§ $Y§,this.§%";§);
      }
      
      protected function §+#'§() : void
      {
         this.rubyBtn = §!&5§.§;#z§(getChildByName("ruby_tab_btn"),this.§&"N§);
         this.fuzyBtn = §!&5§.§;#z§(getChildByName("fuzy_tab_btn"),this.§&"N§);
         this.rubyBtn.§[!u§(this.§'$@§);
         this.rubyBtn.setText(§0$N§.RUBY_QTIP);
         this.fuzyBtn.setText(§0$N§.FUZY_QTIP);
         this.§9"l§ = §!&5§.§7#[§(getChildByName("availableOffers"));
         var _loc1_:SimpleButton = this.§9"l§.getContainer() as SimpleButton;
         §4"0§.§;%o§(_loc1_,"get_text",§0$N§.AVAILABLE_RUBIES_OFFERS_DESCR);
         this.§9"l§.setVisible(this.§4%t§());
         this.§9"l§.§[!u§(this.§;"A§);
         this.§"9§ = getChildByName("unavailableOffers") as MovieClip;
         (this.§"9§.getChildByName("text") as TextField).text = §0$N§.NO_OFFERS;
         this.§"9§.visible = !this.§4%t§();
         this.getActiveOffers();
      }
      
      private function getActiveOffers() : void
      {
         (§8"%§.§[f§ as §1!`§).getActiveOffers(this.§=#^§);
      }
      
      private function §=#^§(param1:Object) : void
      {
         this.§="W§ = int(param1.response[0]) > 0;
         this.§ !&§();
      }
      
      private function § !&§() : void
      {
         this.§9"l§.setVisible(this.§4%t§());
         this.§"9§.visible = !this.§4%t§();
      }
      
      private function §4%t§() : Boolean
      {
         return this.§="W§;
      }
      
      protected function §'$@§(param1:Event) : void
      {
         this.§6"?§(this.§ $Y§);
      }
      
      protected function §]!y§(param1:Event) : void
      {
         this.§6"?§(this.§%";§);
      }
      
      protected function §6"?§(param1:§1#g§) : void
      {
         this.§#"e§();
         param1.setVisible(true);
      }
      
      override public function show(param1:Boolean = true) : void
      {
         super.show(param1);
      }
      
      private function §#"e§() : void
      {
         var _loc1_:§1#g§ = null;
         for each(_loc1_ in this.§,%?§)
         {
            _loc1_.setVisible(false);
         }
      }
      
      override protected function embedFonts() : void
      {
      }
      
      protected function §8%o§(param1:MovieClip, param2:Array) : void
      {
         var _loc4_:uint = 0;
         var _loc5_:§1e§ = null;
         var _loc6_:String = null;
         var _loc7_:SimpleButton = null;
         var _loc3_:uint = 0;
         while(_loc3_ < param1.numChildren)
         {
            _loc4_ = buttons.length;
            buttons[_loc4_] = new §3$%§();
            _loc5_ = param2[_loc3_];
            _loc6_ = String("button_" + _loc3_);
            _loc7_ = param1.getChildByName(_loc6_) as SimpleButton;
            buttons[_loc4_].init(_loc7_,_loc5_,this.§4$U§(_loc5_));
            _loc3_++;
         }
      }
      
      private function §4$U§(param1:§1e§) : String
      {
         return this.messages[param1.price];
      }
      
      private function §;"A§(param1:Event) : void
      {
         §8"%§.§^%W§.§[#l§();
         (§8"%§.§[f§ as §1!`§).§-H§(this.§2$'§);
      }
      
      private function §2$'§(param1:§,$2§) : void
      {
         if(param1.success)
         {
            this.getActiveOffers();
         }
      }
      
      override protected function §[D§() : void
      {
         var _loc1_:§3$%§ = null;
         for each(_loc1_ in buttons)
         {
            _loc1_.highlightAnimate(false);
         }
         star.stop();
         star.visible = false;
         if(labelBest.parent)
         {
            _removeChild(labelBest);
         }
         this.fuzyBtn.setDisabled(false);
         this.fuzyBtn.§[!u§(this.§]!y§);
         §3%D§ = -1;
      }
      
      override public function §4$?§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:SimpleButton = null;
         if(param1 > -1)
         {
            §3$%§(buttons[param1]).highlightAnimate(param2);
            star.play();
            star.visible = labelBest.visible = true;
            _loc3_ = §3$%§(buttons[param1]).getButton();
            star.y = _loc3_.y + _loc3_.parent.y;
            star.x = _loc3_.x + _loc3_.parent.x - star.width * 0.35;
            labelBest.y = _loc3_.y + _loc3_.parent.y + 1;
            labelBest.x = _loc3_.x + _loc3_.parent.x - labelBest.width + 5;
            this.fuzyBtn.setDisabled(true);
            this.fuzyBtn.removeHandler(this.§]!y§);
            §3%D§ = param1;
         }
         else
         {
            this.§[D§();
         }
      }
   }
}


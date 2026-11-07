package §&§
{
   import § !8§.§`!d§;
   import § $q§.§3U§;
   import § &5§.§=#P§;
   import § &5§.§@N§;
   import §!$Z§.§"$I§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#W§.§4#T§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.§4&5§;
   import §+$=§.§6#A§;
   import §+&<§.*;
   import §-!U§.*;
   import §0!§.§6#z§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§!!c§;
   import §0&F§.§0%v§;
   import §2!-§.HpChangeEvent;
   import §2#8§.*;
   import §2o§.§4§;
   import §2o§.§]#@§;
   import §3#a§.§-#M§;
   import §4!!§.§!%n§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§+%-§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §8#a§.ShopMenu;
   import §9&+§.§>&5§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?#g§.§&"P§;
   import §?$7§.§6%k§;
   import §?$7§.§8"e§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[$<§.§;"E§;
   import §]$v§.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import org.gestouch.events.GestureEvent;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.DistributePoints;
   import ru.pragmatix.wormix.messages.server.DistributePointsResult;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.server.GetQuestProgressResult;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   import ru.pragmatix.wormix.serialization.ServerCommands;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §,%C§ extends §<!U§
   {
      
      protected var item:§&!e§;
      
      protected var icon:§3U§;
      
      protected var countField:MovieClip;
      
      protected var countTxt:TextField;
      
      protected var §+!2§:§?%>§;
      
      protected var §#"W§:§?%>§;
      
      protected var §,$C§:UserProfile;
      
      protected var countBig:TextField;
      
      protected var multiplier:uint = 1;
      
      private var §3=§:uint;
      
      public function §,%C§(param1:DisplayObjectContainer = null)
      {
         super(param1 ? param1 : §6#A§.§!&6§(§+"'§.§?"]§));
         this.icon = new §3U§(§#!`§().getChildByName("icon"));
         this.countBig = §'%s§("countBig");
         this.countBig.visible = false;
         this.countField = MovieClip(getChildByName("countField"));
         this.countTxt = TextField(this.countField.getChildByName("value"));
         this.§+!2§ = §!&5§.§7#[§(this.countField.getChildByName("incBtn"));
         this.§#"W§ = §!&5§.§7#[§(this.countField.getChildByName("decBtn"));
         this.§+!2§.§[!u§(this.§!J§);
         this.§#"W§.§[!u§(this.§7%I§);
         this.§3=§ = ingamePriceBtn.y;
         §`o§.§1$T§(fieldRequirements,this.icon.getContainer(),4);
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §=%1§ = §5!r§.§7!$§;
         §<"b§ = true;
      }
      
      protected function §7%I§(param1:Event) : void
      {
         this.setCount(parseInt(this.countTxt.text) - 1);
      }
      
      protected function §!J§(param1:Event) : void
      {
         this.setCount(parseInt(this.countTxt.text) + 1);
      }
      
      public function getCount() : int
      {
         return parseInt(this.countTxt.text);
      }
      
      protected function setCount(param1:int) : void
      {
         this.countTxt.text = param1.toString();
         this.§#"W§.setDisabled(param1 == 1);
         this.§+!2§.setDisabled(param1 == §4&5§.§`$J§);
         §'!`§(this.item.§4$n§() * param1,this.item.getRealPrice() * param1);
      }
      
      override protected function §!!K§(param1:§+$A§) : void
      {
         if(§4! §.§7"-§(this.§,$C§,param1,§%"]§()))
         {
            this.buy(param1);
         }
         else
         {
            this.hide();
         }
      }
      
      override public function hide() : void
      {
         super.hide();
         fieldRequirements.visible = false;
      }
      
      override protected function buy(param1:§+$A§) : void
      {
         this.dispatchEvent(new §]#@§(§]#@§.BUY_ITEM,this.item,param1,this.getCount()));
         this.hide();
      }
      
      public function §?"l§(param1:uint) : void
      {
         this.multiplier = param1;
      }
      
      public function open(param1:§&!e§, param2:uint, param3:uint) : void
      {
         this.item = param1;
         this.§,$C§ = new UserProfile();
         this.§,$C§.§^<§(param2);
         this.§,$C§.§]!c§(param3);
         §#7§(param1.§7%z§());
         this.icon.setItem(param1);
         this.§7$D§(false);
         this.setCount(this.multiplier);
         if(param1 is §;#_§)
         {
            if(!param1.getInfinite())
            {
               this.§7$D§(true);
               this.setCount(1);
               §&!a§(this.icon,this.countField);
            }
         }
         this.§"#O§(param1);
         ingamePriceBtn.setDisabled(!§,! §.§1%q§(param1));
         show();
      }
      
      public function §7$D§(param1:Boolean) : void
      {
         this.countField.visible = param1;
      }
      
      protected function §"#O§(param1:§&!e§) : void
      {
         var _loc2_:Array = [];
         if(!§,! §.§&$F§(param1))
         {
            _loc2_.push(§0$N§.LEVEL_REQUIREMENT);
         }
         if(!§,! §.§`n§(param1))
         {
            _loc2_.push(§0$N§.FRIENDS_REQUIREMENT);
         }
         var _loc3_:uint = 0;
         if(param1 is §=?§ && !§,! §.§1#C§(param1 as §=?§))
         {
            _loc3_ = §=?§(param1).getRequiredRating();
            _loc2_.push(§0$N§.RATING_REQUIREMENT);
         }
         var _loc4_:String = "";
         if(!§,! §.§2&;§(param1))
         {
            _loc2_.push(§0$N§.SCENARIO_REQUIREMENT);
            _loc4_ = §6%k§.§7%q§(param1.§`%n§()).§7%z§();
         }
         var _loc5_:String = §0%§.format(§0$N§.SHOP_REQUIRED_FIELD,{"requirements":_loc2_.join(", ")});
         _loc5_ = §0%§.format(_loc5_,{
            "friendsCnt":param1.§ %D§(),
            "rating":_loc3_,
            "level":param1.§,X§(),
            "scenario":_loc4_
         });
         if(_loc2_.length)
         {
            this.§@!;§(_loc5_);
         }
         else
         {
            this.§[9§();
         }
      }
      
      protected function §@!;§(param1:String) : void
      {
         fieldRequirements.visible = true;
         fieldRequirements.htmlText = param1;
         this.§=#]§();
      }
      
      protected function §[9§() : void
      {
         ingamePriceBtn.y = realPriceBtn.y = this.§3=§;
      }
      
      protected function §=#]§() : void
      {
         §`o§.§0# §(this.icon,§]"a§,18);
         §`o§.§1$T§(fieldRequirements,this.icon.getContainer(),7);
         §`o§.§0# §(ingamePriceBtn,fieldRequirements,7);
         §`o§.§0# §(realPriceBtn,fieldRequirements,7);
         §`o§.§^#c§(fieldRequirements,backPanel);
      }
      
      protected function §^!z§() : void
      {
         §`o§.§0# §(this.icon,message,10);
         §`o§.§1$T§(fieldRequirements,this.icon.getContainer(),7);
         §`o§.§0# §(ingamePriceBtn,fieldRequirements,7);
         §`o§.§0# §(realPriceBtn,fieldRequirements,7);
         §`o§.§^#c§(message,backPanel);
      }
      
      protected function §?#h§() : void
      {
         §`o§.§1$T§(submessage,fieldRequirements.visible ? fieldRequirements : this.icon.getContainer(),7);
         §`o§.§0# §(ingamePriceBtn,submessage,7);
         §`o§.§0# §(realPriceBtn,submessage,7);
         §`o§.§^#c§(submessage,backPanel);
         backPanel.height = realPriceBtn.y + realPriceBtn.height + 25;
      }
      
      override public function destroy() : void
      {
         this.§+!2§.removeHandler(this.§!J§);
         this.§#"W§.removeHandler(this.§7%I§);
         this.§+!2§.destroy();
         this.§#"W§.destroy();
         super.destroy();
      }
      
      public function § !"§(param1:String) : void
      {
         message.width = backPanel.width - 45;
         message.autoSize = TextFieldAutoSize.CENTER;
         message.text = param1;
         this.§^!z§();
      }
      
      public function § h§(param1:String) : void
      {
         submessage.visible = true;
         submessage.width = backPanel.width - 45;
         submessage.autoSize = TextFieldAutoSize.CENTER;
         submessage.text = param1;
         this.§?#h§();
      }
   }
}


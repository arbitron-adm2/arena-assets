package §&§
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §,!f§.*;
   import §0%[§.§0%§;
   import §2!-§.DamageEvent;
   import §2B§.§#&E§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §5!,§.§9$h§;
   import §6%2§.*;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §7$t§.§=?§;
   import §9"^§.§@"e§;
   import §9%W§.§&!P§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?$L§.§&$9§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §[%'§.§<"G§;
   import §]#[§.*;
   import §]$J§.§#"s§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.motionPaths.PathFollower;
   import config.achievements.§!$L§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuyReactionRate;
   import ru.pragmatix.wormix.messages.server.BuyReactionRateResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §'#$§ extends §,%C§
   {
      
      private var §2#F§:int = 0;
      
      private var callback:Function;
      
      private var level:int;
      
      public function §'#$§()
      {
         super();
         backPanel = §'$a§("backPanel");
         countBig.visible = true;
         §]"a§.visible = false;
         §#!`§().getChildByName("line").visible = false;
         askAFriendBtn.setVisible(Social.§!g§.§]$>§());
         if(askAFriendBtn.isVisible())
         {
            askAFriendBtn.setText(§0$N§.BUTTON_ASK_FRIEND2);
            askAFriendBtn.§[!u§(this.§-!X§);
            §4"0§.§@"T§(askAFriendBtn);
         }
      }
      
      override protected function §7%I§(param1:Event) : void
      {
      }
      
      override protected function §!J§(param1:Event) : void
      {
      }
      
      public function §`% §(param1:Function) : void
      {
         this.callback = param1;
      }
      
      public function §'!L§(param1:int, param2:int, param3:§'$2§) : void
      {
         var _loc4_:String = §0%§.format(§<"G§.§%! §("REACTION_NEXT_LEVEL_LEFT"),{"level":param1});
         getChildByName("icon.back").visible = false;
         §7$D§(true);
         message.visible = true;
         message.height = 50;
         message.y -= 20;
         if(param3)
         {
            realPriceBtn.setDisabled(false);
         }
         else
         {
            _loc4_ = §<"G§.§%! §("BUY_REACTION_LEVEL_LIMIT") + " " + _loc4_;
            realPriceBtn.setDisabled(true);
         }
         param3 = param3 ? param3 : new §'$2§();
         this.§2#F§ = param3.realPrice;
         this.level = param1;
         this.setCount(param2);
         this.§8&;§(param3);
         §&$9§.§>&F§(message,§"-§.§+$m§,_loc4_);
      }
      
      override protected function setCount(param1:int) : void
      {
         countBig.text = countTxt.text = param1.toString();
         countField.visible = false;
         §+!2§.setVisible(false);
         §#"W§.setVisible(false);
         countField.y += 10;
         countBig.y += 5;
         icon.x += 15;
      }
      
      override protected function buy(param1:§+$A§) : void
      {
         §[&G§.§8"&§.show();
         §%%w§.§##$§(BuyReactionRateResult,this.§6#0§);
         §%%w§.§,U§(new BuyReactionRate(this.level));
         hide();
      }
      
      override public function open(param1:§&!e§, param2:uint, param3:uint) : void
      {
         var _loc4_:MovieClip = §#!`§().getChildByName("icon") as MovieClip;
         super.open(param1,param2,param3);
      }
      
      private function §6#0§(param1:§9$v§) : void
      {
         var _loc2_:BuyReactionRateResult = null;
         var _loc5_:String = null;
         var _loc6_:§,#W§ = null;
         §%%w§.§-"j§(BuyReactionRateResult,this.§6#0§);
         §[&G§.§8"&§.hide();
         _loc2_ = BuyReactionRateResult(param1.message);
         var _loc3_:int = _loc2_.reactionRateCount;
         var _loc4_:UserProfile = Application.userProfile;
         switch(_loc2_.result)
         {
            case ShopResult.SUCCESS:
               _loc4_.§9%D§(-this.§2#F§);
               _loc4_.§=#6§(_loc3_);
               §8"%§.§@1§.increase([§!$L§.§`&0§],[this.§2#F§]);
               _loc5_ = §0%§.format(§0$N§.REACTION_LEVELUP,{"level":_loc2_.reactionRateLevel});
               break;
            case ShopResult.ERROR:
               _loc5_ = §<"G§.§%! §("BUY_REACTION_LEVEL_LIMIT");
               break;
            case ShopResult.MIN_REQUIREMENTS_ERROR:
               _loc5_ = §0$N§.ERROR_HACKING_ATTEMPT;
               break;
            case ShopResult.NOT_ENOUGH_MONEY:
               _loc5_ = §0$N§.ERROR_HACKING_ATTEMPT;
               break;
            default:
               _loc5_ = §0$N§.ERROR_SAVING;
         }
         Application.§5!>§.§8$w§();
         if(this.callback != null)
         {
            this.callback();
            this.callback = null;
         }
         if(_loc5_)
         {
            _loc6_ = new §,#W§(§0$N§.TITLE_BUY,_loc5_,§,#W§.§6!m§);
            _loc6_.show();
         }
         this.clear();
      }
      
      private function clear() : void
      {
         this.§2#F§ = 0;
      }
      
      private function §-!X§(param1:Event) : void
      {
         §@"e§.§3!Y§(§8"%§.§[f§.getType());
      }
      
      override public function §8&;§(param1:§'$2§, param2:Boolean = true) : void
      {
         super.§8&;§(param1,param2);
         if(askAFriendBtn.isVisible())
         {
            askAFriendBtn.y = realPriceBtn.y;
            realPriceBtn.x = backPanel.x + 30;
            if(Boolean(param1) && Boolean(param1.realPrice))
            {
               askAFriendBtn.x = backPanel.x + backPanel.width - askAFriendBtn.width - 30;
            }
            else
            {
               §`o§.§^#c§(askAFriendBtn.getContainer(),backPanel);
            }
         }
      }
   }
}


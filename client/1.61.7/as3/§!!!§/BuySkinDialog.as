package §!!!§
{
   import § "L§.§`#r§;
   import § #9§.§"$t§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%E§.§2§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §&§.§<!U§;
   import §'!Z§.§1"-§;
   import §'!Z§.§[&$§;
   import §'$j§.§'-§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,#c§.ArenaMenu;
   import §-"N§.§+#R§;
   import §-%B§.*;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%j§.§#!U§;
   import §0%j§.§-,§;
   import §0&F§.§0%v§;
   import §1"r§.§4!u§;
   import §1#p§.*;
   import §2B§.§#&E§;
   import §2o§.§]#@§;
   import §3"_§.*;
   import §3#a§.§-#M§;
   import §4$b§.§6!G§;
   import §4'§.§!!0§;
   import §4'§.§"@§;
   import §5"J§.*;
   import §6%2§.§#"B§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §<%E§.§;!y§;
   import §>$q§.§4#;§;
   import §>%S§.§^!V§;
   import §?"[§.*;
   import §?"j§.§]!<§;
   import §?#g§.§&"P§;
   import §?#g§.Race;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5%8§;
   import §@!i§.§=$,§;
   import §@"s§.§]!>§;
   import §@<§.§+%]§;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanJoinRatingRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanJoinRatingResponse;
   import ru.pragmatix.wormix.messages.server.NeedMoneyResult;
   import ru.pragmatix.wormix.messages.server.PrivateChatMessage;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.utils.§6Y§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class BuySkinDialog extends §<!U§ implements §^c§
   {
      
      private var §<S§:Vector.<MovieClip>;
      
      private var charIcon:§6!G§;
      
      private var §9"q§:§!!0§;
      
      public function BuySkinDialog()
      {
         super(§6#A§.§!&6§(§+"'§.§@0§));
         this.§<S§ = §3!3§.§#"R§(§'$a§("colb"));
         this.§<S§ = this.§<S§.concat(§3!3§.§#"R§(§'$a§("char")));
         var _loc1_:§`&-§ = new §`&-§(getChildByName("toxy"));
         _loc1_.setQtip(§0$N§.MUTAGEN_QTIP);
      }
      
      public function open(param1:int) : void
      {
         var _loc2_:UserProfile = null;
         var _loc4_:UserProfile = null;
         _loc2_ = Application.userProfile;
         var _loc3_:int = int(param1 / 10);
         _loc4_ = _loc2_.§ "P§(true);
         _loc4_.§-"§("cloneSkinned");
         _loc4_.§;"U§(null);
         _loc4_.§7"i§(null);
         _loc4_.§&$g§(Race.§3!4§(_loc3_));
         _loc4_.§?!0§(_loc3_,param1);
         var _loc5_:§&"P§ = _loc4_.§5"L§();
         var _loc6_:int = _loc2_.§2!>§().§ %n§(§#"B§.MUTAGEN);
         var _loc7_:int = §6Y§.§^#k§();
         §7&5§.§>&<§(§'%s§("title"),_loc5_.§7%z§());
         §7&5§.§?$k§(§'%s§("amount"),_loc6_ + " / " + _loc7_);
         this.§8&;§(new §'$2§(0,_loc5_.§,$1§()),false);
         if(Application.userProfile.§@$D§() < price.realPrice)
         {
            realPriceBtn.§00§(null);
         }
         this.§ #U§(new §!!0§(0,_loc5_.§,$1§(),0,new <uint>[§#"B§.MUTAGEN],new <uint>[_loc7_]));
         this.charIcon = §"$t§.§!!1§(this.charIcon,_loc4_,§'$a§("char.anim.cont"));
         this.charIcon.§,%G§();
         ingamePriceBtn.setDisabled(_loc2_.getLevel() < _loc5_.§,X§() || _loc6_ < _loc7_);
         this.playAnimations();
         show();
      }
      
      override public function §8&;§(param1:§'$2§, param2:Boolean = true) : void
      {
         this.price = param1;
      }
      
      public function § #U§(param1:§!!0§) : void
      {
         ingamePriceBtn.setText(String(param1.§,#b§[0]),§"-§.§6"j§);
         realPriceBtn.setText(String(param1.realPrice),§"-§.§6"j§);
         §4"0§.§@"T§(ingamePriceBtn);
         §4"0§.§@"T§(realPriceBtn);
         this.§9"q§ = param1;
      }
      
      override protected function §`&1§(param1:Event) : void
      {
         this.§0$y§(§"@§.REAGENTS);
      }
      
      override protected function buy(param1:§+$A§) : void
      {
         var _loc2_:§]!<§ = Application.userProfile.§5"L§().getRecord();
         this.dispatchEvent(new §]#@§(§]#@§.BUY_ITEM,_loc2_,param1,1));
         this.hide();
      }
      
      private function §0$y§(param1:§"@§) : void
      {
         var _loc2_:§]!<§ = Application.userProfile.§5"L§().getRecord();
         this.dispatchEvent(new §]#@§(§]#@§.BUY_ITEM,_loc2_,param1,1));
         this.hide();
      }
      
      override public function hide() : void
      {
         this.stopAnimations();
         super.hide();
      }
      
      override public function destroy() : void
      {
         this.stopAnimations();
         super.destroy();
      }
      
      public function playAnimations() : void
      {
         §3!3§.§<%W§(this.§<S§);
      }
      
      public function stopAnimations() : void
      {
         §3!3§.§>!j§(this.§<S§);
      }
   }
}


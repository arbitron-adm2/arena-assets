package §-!U§
{
   import § &5§.§=#P§;
   import §!$D§.*;
   import §!L§.§`#p§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §1#p§.§2=§;
   import §3"@§.§##L§;
   import §3%J§.BuyBattleTokensDialog;
   import §5!,§.§?!P§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7_§.§#&'§;
   import §9"-§.§5#-§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@!i§.§@$&§;
   import §@$§.§&&H§;
   import §@$§.§`&C§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Matrix;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§>#D§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class §>$>§ extends §&%j§
   {
      
      private var playBtn:§?%>§;
      
      protected var §^#+§:§>#D§;
      
      public function §>$>§(param1:DisplayObject)
      {
         super(param1);
         this.playBtn = §!&5§.§7#[§(getChildByName("playBtn"));
         this.playBtn.setText(§0$N§.BOSS_PLAY_BTN,§"-§.§+$m§);
         this.playBtn.§[!u§(this.§@$Z§);
         this.§^#+§ = new §#&'§(§'$a§("awardPanel"),"");
      }
      
      protected function §@$Z§(param1:Event) : void
      {
         var _loc2_:Function = null;
         if(§8"%§.§[%h§.§7$J§())
         {
            this.§4$m§();
         }
         else
         {
            _loc2_ = §8"%§.§%w§.getArenaMenu().getTabPanel().showAvailableBattlesCount;
            new BuyBattleTokensDialog(_loc2_).show();
         }
      }
      
      protected function §4$m§() : void
      {
      }
      
      protected function §8!g§(param1:§1%z§) : void
      {
         this.§^#+§.§[#E§(this.§+$z§(param1));
      }
      
      protected function §+$z§(param1:§1%z§) : Array
      {
         return param1.§@$0§(false,true);
      }
      
      override public function destroy() : void
      {
         this.playBtn.removeHandler(this.§@$Z§);
         this.playBtn.destroy();
         this.playBtn = null;
         super.destroy();
      }
   }
}


package §+&<§
{
   import § #g§.*;
   import § $q§.§3U§;
   import §&#h§.*;
   import §-!U§.§!$?§;
   import §-!U§.§""Z§;
   import §-!U§.§&%j§;
   import §-!U§.§[#X§;
   import §-!U§.§]3§;
   import §4u§.ReagentHint;
   import §='§.§,%u§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   
   public class §^@§ extends §`&-§ implements §,%u§
   {
      
      private var §1#P§:Vector.<§&%j§> = new Vector.<§&%j§>(0);
      
      private var unavailableBossInfo:§]3§;
      
      private var lockedBossInfo:§!$?§;
      
      private var availableBossInfo:§[#X§;
      
      private var §?"J§:§""Z§;
      
      public function §^@§(param1:DisplayObject = null)
      {
         var _loc2_:DisplayObject = null;
         super(param1);
         _loc2_ = getChildByName("unavailableBossInfo");
         this.unavailableBossInfo = new §]3§(_loc2_);
         this.§1#P§.push(this.unavailableBossInfo);
         _loc2_ = getChildByName("lockedBossInfo");
         this.lockedBossInfo = new §!$?§(_loc2_);
         this.§1#P§.push(this.lockedBossInfo);
         _loc2_ = getChildByName("availableBossInfo");
         this.availableBossInfo = new §[#X§(_loc2_);
         this.§1#P§.push(this.availableBossInfo);
         _loc2_ = getChildByName("completedTodayBossInfo");
         this.§?"J§ = new §""Z§(_loc2_);
         this.§1#P§.push(this.§?"J§);
      }
      
      public function §&"]§(param1:§-$T§) : void
      {
         this.§#"e§();
         this.availableBossInfo.setVisible(true);
         this.availableBossInfo.§9$n§(param1);
      }
      
      public function §6D§(param1:§-$T§) : void
      {
         this.§#"e§();
         this.§?"J§.setVisible(true);
         this.§?"J§.§9$n§(param1);
      }
      
      public function §&R§(param1:§-$T§) : void
      {
         this.§#"e§();
         this.availableBossInfo.setVisible(true);
         this.availableBossInfo.§9$n§(param1);
      }
      
      public function §^"H§(param1:§-$T§) : void
      {
         this.§#"e§();
         this.lockedBossInfo.setVisible(true);
         this.lockedBossInfo.§9$n§(param1);
      }
      
      public function §%"m§(param1:§-$T§) : void
      {
         this.§#"e§();
         this.unavailableBossInfo.setVisible(true);
         this.unavailableBossInfo.§9$n§(param1);
      }
      
      private function §#"e§() : void
      {
         var _loc1_:§&%j§ = null;
         for each(_loc1_ in this.§1#P§)
         {
            _loc1_.setVisible(false);
         }
      }
   }
}


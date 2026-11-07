package ru.pragmatix.wormix.gui.menu.arena.boss
{
   import § &5§.§=#P§;
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.*;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%#u§.§@"c§;
   import §%$!§.§@!o§;
   import §&!@§.§!6§;
   import §&!@§.§5"`§;
   import §&!@§.Assassin;
   import §&!@§.BurningZombies;
   import §&!@§.DarkKnight;
   import §&!@§.Farmer;
   import §&!@§.Hunter;
   import §&!@§.Miner;
   import §&!@§.Samurai;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#U§.§'#w§;
   import §+%S§.§ #R§;
   import §+&<§.§@$L§;
   import §+&<§.§]%P§;
   import §+&<§.§^@§;
   import §0!Y§.§#!Z§;
   import §0%z§.§1&6§;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §3%J§.BuyBattleTokensDialog;
   import §4!!§.§6$V§;
   import §4!x§.§@& §;
   import §4$b§.*;
   import §4'§.§`"q§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §7$t§.§??§;
   import §8$V§.*;
   import §9%W§.§&!P§;
   import §;!J§.§8!a§;
   import §;#O§.§+%7§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §="z§.§<$t§;
   import §='§.§5&D§;
   import §?#g§.Race;
   import §?$7§.§!§;
   import §?$7§.§+#N§;
   import §?$7§.§+l§;
   import §?$7§.§6&'§;
   import §?$7§.§6J§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@!i§.§;#L§;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]^§.§-$T§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^4§.§@#J§;
   import §`%&§.§`§;
   import config.achievements.BossAchieves;
   import config.achievements.§`&<§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.BuyBattle;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §3y§ extends §`&-§
   {
      
      private static const §%M§:String = "modeBtnGroup";
      
      private static const §6!V§:String = "modeBigBtnGroup";
      
      private var §;#w§:§8"@§;
      
      private var §@#'§:§8"@§;
      
      private var singleModeBtn:§8"@§;
      
      private var coopModeBtn:§8"@§;
      
      private var heroicModeBtn:§8"@§;
      
      private var § J§:Vector.<§]$y§> = new Vector.<§]$y§>(0);
      
      private var §0#t§:§^@§;
      
      private var §2$9§:§@$L§;
      
      private var §2!<§:int = -1;
      
      private var §"%t§:§?%>§;
      
      private var §>#o§:§?%>§;
      
      private var §>#,§:§+l§;
      
      private var §>P§:Vector.<DisplayObjectContainer> = new Vector.<DisplayObjectContainer>(0);
      
      private var §;%>§:§5&D§;
      
      private var §7$h§:Boolean;
      
      private var §'"X§:int = -1;
      
      private var §^##§:int = -1;
      
      private var §%%6§:int = -1;
      
      private var §!$l§:int = -1;
      
      private var §2$y§:Boolean;
      
      private var §2J§:Boolean;
      
      public function §3y§(param1:DisplayObject = null)
      {
         super(param1);
         this.§>#,§ = §6&'§.getInstance();
         this.§2$y§ = true;
         this.§^%<§();
         this.§]"<§();
         this.§>!t§();
         this.§<Z§();
         this.§&l§();
         this.§,!I§();
         this.§^![§();
      }
      
      private function §^%<§() : void
      {
         this.§;%>§ = new §]%P§();
      }
      
      private function §]"<§() : void
      {
         this.singleModeBtn = §!&5§.§;#z§(getChildByName("singleModeBtn"),§%M§);
         this.singleModeBtn.setText(§0$N§.BOSS_SINGLE_MODE_BTN,§"-§.§+$m§);
         this.singleModeBtn.§[!u§(this.§+$[§);
         this.coopModeBtn = §!&5§.§;#z§(getChildByName("coopModeBtn"),§%M§);
         this.coopModeBtn.setText(§0$N§.FRIEND_COOP_MODE_BTN,§"-§.§+$m§);
         this.coopModeBtn.§[!u§(this.§+$[§);
         this.heroicModeBtn = §!&5§.§;#z§(getChildByName("heroicModeBtn"),§%M§);
         this.heroicModeBtn.setText(§0$N§.SUPER_BOSSES_MODE_BTN,§"-§.§+$m§);
         this.heroicModeBtn.§[!u§(this.§+$[§);
         this.singleModeBtn.setPressed(true);
      }
      
      private function §>!t§() : void
      {
         this.§;#w§ = §!&5§.§;#z§(getChildByName("tabTitle_coopboss"),§6!V§);
         this.§;#w§.setText(§0$N§.BOSS_TAB_NAME,§"-§.§+$m§);
         this.§;#w§.§[!u§(this.§+$[§);
         this.§@#'§ = §!&5§.§;#z§(getChildByName("tabTitle_superboss"),§6!V§);
         this.§@#'§.setText(§0$N§.SUPER_BOSSES_MODE_BTN,§"-§.§+$m§);
         this.§@#'§.§[!u§(this.§+$[§);
      }
      
      private function §+$[§(param1:MouseEvent) : void
      {
         var _loc2_:§8"@§ = param1.currentTarget as §8"@§;
         this.§6#p§(_loc2_);
      }
      
      private function §6#p§(param1:§8"@§) : void
      {
         var _loc2_:Function = null;
         if(!§6J§.getInstance().§[#=§() && (param1 == this.heroicModeBtn || param1 == this.§@#'§))
         {
            if(!§8"%§.§[%h§.§7$J§())
            {
               param1.setPressed(false);
               if(this.§>#,§ is §6&'§)
               {
                  this.singleModeBtn.setPressed(true);
               }
               else if(this.§;#w§.isVisible())
               {
                  this.§;#w§.setPressed(true);
               }
               else if(this.coopModeBtn.isVisible())
               {
                  this.coopModeBtn.setPressed(true);
               }
               _loc2_ = §8"%§.§%w§.getArenaMenu().getTabPanel().showAvailableBattlesCount;
               new BuyBattleTokensDialog(_loc2_).show();
               return;
            }
         }
         this.§7$h§ = param1 == this.heroicModeBtn || param1 == this.§@#'§;
         §'$a§("bossesContainer").visible = !this.§7$h§;
         §'$a§("bossesInfoContainer").visible = !this.§7$h§;
         this.§2$9§.setVisible(this.§7$h§);
         if(!this.§7$h§)
         {
            if(param1 == this.singleModeBtn)
            {
               this.§>#,§ = §6&'§.getInstance();
            }
            else if(param1 == this.coopModeBtn || param1 == this.§;#w§)
            {
               this.§>#,§ = §!#3§.getInstance();
            }
            this.§2$y§ = this.§>#,§ is §6&'§;
            this.§2J§ = this.§>#,§ is §!#3§;
            this.§[#n§();
         }
         else
         {
            this.§2$9§.update();
         }
         this.update();
      }
      
      private function §<Z§() : void
      {
         var _loc3_:DisplayObject = null;
         var _loc5_:String = null;
         var _loc6_:§]$y§ = null;
         var _loc1_:String = "bossAvatar_";
         var _loc2_:DisplayObjectContainer = §'$a§("bossesContainer")["bossesAvatars"];
         var _loc4_:uint = 0;
         while(_loc4_ < _loc2_.numChildren)
         {
            _loc5_ = _loc1_ + String(_loc4_ + 1);
            _loc3_ = _loc2_.getChildByName(_loc5_);
            if(!_loc3_)
            {
               return;
            }
            _loc6_ = new §]$y§(_loc3_);
            this.§ J§.push(_loc6_);
            _loc4_++;
         }
      }
      
      private function §&l§() : void
      {
         this.§0#t§ = new §^@§(getChildByName("bossesInfoContainer"));
         this.§2$9§ = new §@$L§(§'$a§("heroicBossesContainer"));
         this.§2$9§.setVisible(false);
      }
      
      private function §,!I§() : void
      {
         var _loc1_:DisplayObjectContainer = §'$a§("bossesContainer")["bossesMaps"];
         var _loc2_:uint = 0;
         while(_loc2_ < _loc1_.numChildren)
         {
            this.§>P§.push(_loc1_.getChildAt(_loc2_));
            _loc2_++;
         }
      }
      
      private function §^![§() : void
      {
         this.§"%t§ = §!&5§.§7#[§(getChildByName("prev"));
         this.§"%t§.§[!u§(this.§;%W§);
         this.§>#o§ = §!&5§.§7#[§(getChildByName("next"));
         this.§>#o§.§[!u§(this.§6&2§);
      }
      
      public function §[#n§() : void
      {
         this.§2!<§ = Math.floor((this.§>#,§.§?U§() - this.§>#,§.§+#q§()) / §+l§.§4!b§);
         var _loc1_:uint = this.§>#,§.§%#y§();
         if(this.§2$y§ && this.§%%6§ != -1)
         {
            this.§2!<§ = this.§%%6§;
         }
         else if(this.§2J§ && this.§!$l§ != -1)
         {
            this.§2!<§ = this.§!$l§;
         }
         else if(this.§2!<§ > _loc1_ - 1)
         {
            this.§2!<§ = _loc1_ - 1;
         }
      }
      
      private function §;%W§(param1:MouseEvent) : void
      {
         if(this.§2!<§ > 0)
         {
            --this.§2!<§;
         }
         else
         {
            this.§2!<§ = this.§>#,§.§%#y§() - 1;
         }
         if(this.§2$y§)
         {
            this.§%%6§ = this.§2!<§;
         }
         if(this.§2J§)
         {
            this.§!$l§ = this.§2!<§;
         }
         this.update();
      }
      
      private function §6&2§(param1:MouseEvent) : void
      {
         if(this.§2!<§ < this.§>#,§.§%#y§() - 1)
         {
            var _loc2_:§3y§ = this;
            var _loc3_:Number = _loc2_.§2!<§ + 1;
            _loc2_.§2!<§ = _loc3_;
         }
         else
         {
            this.§2!<§ = 0;
         }
         if(this.§2$y§)
         {
            this.§%%6§ = this.§2!<§;
         }
         if(this.§2J§)
         {
            this.§!$l§ = this.§2!<§;
         }
         this.update();
      }
      
      public function §&&;§(param1:UserProfile = null) : void
      {
         var _loc4_:String = null;
         var _loc2_:TextField = §'%s§("coopTitle");
         var _loc3_:TextField = §'%s§("coopName");
         if(param1 != null)
         {
            _loc2_.visible = _loc3_.visible = true;
            _loc2_.text = §0$N§.BOSS_COOP_TITLE;
            _loc4_ = param1.getCharName();
            §&$9§.§>&F§(_loc3_,§"-§.§+$m§,_loc4_);
         }
         else
         {
            _loc2_.visible = _loc3_.visible = false;
         }
      }
      
      public function update() : void
      {
         var _loc2_:§]$y§ = null;
         var _loc3_:uint = 0;
         var _loc1_:Vector.<§-$T§> = this.§>#,§.§##H§(this.§2!<§);
         for each(_loc2_ in this.§ J§)
         {
            _loc2_.clear();
            _loc2_.removeEventListener(MouseEvent.CLICK,this.§@"1§);
         }
         _loc3_ = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = this.§ J§[_loc3_];
            if(!_loc2_)
            {
               return;
            }
            this.§;%>§.§!A§(_loc2_,_loc1_[_loc3_]);
            _loc2_.addEventListener(MouseEvent.CLICK,this.§@"1§);
            _loc3_++;
         }
         this.§]!F§();
         this.§6!5§();
         this.§`H§();
         this.§2$9§.§!#m§();
      }
      
      private function §]!F§() : void
      {
         var _loc2_:int = 0;
         var _loc3_:§]$y§ = null;
         var _loc4_:§-$T§ = null;
         var _loc5_:int = 0;
         var _loc1_:int = this.§>#,§.§?U§();
         if(this.§>#,§.§;#S§(_loc1_) || !§8"%§.§%w§.§7#G§())
         {
            _loc2_ = _loc1_;
         }
         else
         {
            _loc2_ = _loc1_ + 1;
         }
         for each(_loc4_ in this.§>#,§.§##H§(this.§2!<§))
         {
            _loc5_ = _loc4_.getId();
            if(_loc5_ == _loc2_ || (this.§2$y§ && this.§'"X§ == _loc5_ || this.§2J§ && this.§^##§ == _loc5_))
            {
               for each(_loc3_ in this.§ J§)
               {
                  if(_loc3_.§<$y§().getId() == _loc5_)
                  {
                     _loc3_.select();
                     this.§;%>§.§!A§(this.§0#t§,_loc4_);
                     return;
                  }
               }
            }
         }
         _loc3_ = this.§ J§[0];
         _loc3_.select();
         this.§;%>§.§!A§(this.§0#t§,_loc3_.§<$y§());
      }
      
      private function §6!5§() : void
      {
         this.§"%t§.setVisible(!this.§7$h§);
         this.§>#o§.setVisible(!this.§7$h§);
         if(!this.§7$h§)
         {
            this.§"%t§.setDisabled(this.§2!<§ == 0);
            this.§>#o§.setDisabled(this.§2!<§ == this.§>#,§.§%#y§() - 1);
         }
      }
      
      private function §`H§() : void
      {
         var _loc2_:DisplayObjectContainer = null;
         var _loc1_:String = String("map_" + (this.§2!<§ + 1) + "_");
         if(this.§>#,§ is §6&'§)
         {
            _loc1_ += "single";
         }
         else
         {
            _loc1_ += "coop";
         }
         for each(_loc2_ in this.§>P§)
         {
            _loc2_.visible = _loc2_.name == _loc1_;
         }
      }
      
      private function §@"1§(param1:Event) : void
      {
         var _loc2_:§-$T§ = (param1.target as §]$y§).§<$y§();
         if(this.§>#,§ is §6&'§)
         {
            this.§'"X§ = _loc2_.getId();
         }
         else if(this.§>#,§ is §!#3§)
         {
            this.§^##§ = _loc2_.getId();
         }
         this.§;%>§.§!A§(this.§0#t§,_loc2_);
      }
      
      override public function destroy() : void
      {
         this.§"%t§.removeHandler(this.§;%W§);
         this.§>#o§.removeHandler(this.§6&2§);
         super.destroy();
      }
      
      private function §-#r§(param1:Boolean = false) : void
      {
         this.§;#w§.setVisible(param1);
         this.§@#'§.setVisible(param1);
         this.singleModeBtn.setVisible(!param1);
         this.coopModeBtn.setVisible(!param1);
         this.heroicModeBtn.setVisible(!param1);
      }
      
      public function §6"q§(param1:UserProfile) : void
      {
         var _loc2_:§8"@§ = null;
         if(param1 != null)
         {
            _loc2_ = this.heroicModeBtn.isPressed() ? this.§@#'§ : this.§;#w§;
         }
         else if(this.§2$y§ || this.§2J§ || this.§7$h§)
         {
            _loc2_ = this.§7$h§ ? this.heroicModeBtn : (this.§2J§ ? this.coopModeBtn : this.singleModeBtn);
         }
         else
         {
            _loc2_ = this.§@#'§.isPressed() ? this.heroicModeBtn : (this.§;#w§.isPressed() ? this.coopModeBtn : this.singleModeBtn);
         }
         _loc2_.setPressed(true);
         this.§6#p§(_loc2_);
         this.§-#r§(param1 != null);
         this.§&&;§(param1);
      }
   }
}


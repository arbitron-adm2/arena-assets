package § m§
{
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&!m§.§;#[§;
   import §&"c§.§5$n§;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §1#o§.§%#$§;
   import §2>§.§-d§;
   import §2B§.§&!Y§;
   import §2B§.§8"n§;
   import §7!B§.§&"T§;
   import §7$t§.§2& §;
   import §7$t§.§9#x§;
   import §9"-§.§?!s§;
   import §="z§.§9%1§;
   import §=7§.§'%B§;
   import §=7§.§-$!§;
   import §=7§.§2$V§;
   import §?$L§.§&$9§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^#[§.§?"&§;
   import §`%&§.§ !j§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.GetBundlesResult;
   import ru.pragmatix.wormix.messages.structures.BundleStructure;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §2&G§ extends §1#g§
   {
      
      public static const §1&#§:uint = 4;
      
      public static const §+"<§:String = "CharsBtnGroup";
      
      private var returnBtn:§?%>§;
      
      private var playBtn:§?%>§;
      
      private var defeatBtn:§?%>§;
      
      private var regenCandidatesBtn:§?%>§;
      
      private var clearTeamBtn:§?%>§;
      
      private var postBtn:§?%>§;
      
      private var §8"`§:DisplayObjectContainer;
      
      private var gladiatorTeam:§-$!§;
      
      private var gladiatorMenu:§%#$§;
      
      private var progressSub:§2$V§;
      
      private var completeSub:§'%B§;
      
      private var awardSub:§-d§;
      
      private var §`"E§:Vector.<§`&-§>;
      
      public function §2&G§(param1:String)
      {
         super();
         this.id = param1;
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         setVisible(false);
         §&$9§.§>&F§(§'%s§("title"),§"-§.§+$m§,§0$N§.PVP_GLADIATOR_CARD);
         this.gladiatorTeam = new §-$!§(getChildByName("gladiatorTeam") as MovieClip);
         this.gladiatorMenu = new §%#$§(getChildByName("gladiatorMenu") as MovieClip);
         this.progressSub = new §2$V§(getChildByName("progressSub") as MovieClip);
         this.completeSub = new §'%B§(getChildByName("completeSub") as MovieClip);
         this.awardSub = new §-d§(getChildByName("awardSub") as MovieClip);
         this.§`"E§ = new <§`&-§>[this.gladiatorMenu,this.progressSub,this.completeSub,this.awardSub];
         this.returnBtn = §!&5§.§7#[§(getChildByName("exitBtn"));
         this.returnBtn.§[!u§(this.§,%^§);
         this.clearTeamBtn = §!&5§.§7#[§(getChildByName("clearTeamBtn"));
         this.clearTeamBtn.§[!u§(this.§;!b§);
         this.clearTeamBtn.setQtip(§0$N§.WIPE_TEAM_QTIP);
         this.regenCandidatesBtn = §!&5§.§7#[§(getChildByName("regenCandidatesBtn"));
         this.regenCandidatesBtn.§[!u§(this.§>"h§);
         this.regenCandidatesBtn.setQtip(§0$N§.REGEN_CANDIDATES_QTIP);
         this.defeatBtn = §!&5§.§7#[§(getChildByName("defeatBtn"));
         this.defeatBtn.§[!u§(this.§'%Y§);
         this.defeatBtn.setQtip(§0$N§.GLADIATOR_DEFEAT_BUTTON_HINT + "\n" + §0$N§.FOR_TEST_MODE_QTIP);
         this.defeatBtn.setVisible(Application.instance.§#&7§());
         this.playBtn = §!&5§.§7#[§(getChildByName("playBtn"));
         this.playBtn.setText(§0$N§.BATTLE_BTN,§"-§.§+$m§);
         this.playBtn.§[!u§(this.§4%C§);
         this.playBtn.setDisabled(!§8"%§.§%$r§.§3!'§);
         var _loc2_:DisplayObject = §4"0§.§##W§(§#!`§(),"postBtn");
         this.postBtn = §!&5§.§7#[§(_loc2_);
         this.postBtn.setText(§0$N§.BTN_SHARE_NAME,§"-§.§+$m§);
         this.postBtn.§[!u§(this.§1#G§);
         this.§8"`§ = this.postBtn.getContainer().parent;
         this.§8"`§.y = this.playBtn.y;
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         this.gladiatorTeam.deactivate();
         setVisible(false);
         if(§8"%§.§%w§.getArenaMenu().isShown() && §8"%§.§%$r§.§2%N§)
         {
            §8"%§.§%$r§.§;y§();
         }
      }
      
      override public function activate() : void
      {
         if(!isShown())
         {
            return;
         }
         super.activate();
         dispatchEvent(new §8"n§(§8"n§.ACTIVATE));
         var _loc1_:Boolean = §8"%§.§%$r§.§3!'§;
         var _loc2_:Boolean = §8"%§.§%$r§.§2%N§;
         this.§6%y§();
         if(!_loc1_)
         {
            this.gladiatorMenu.activate();
            this.gladiatorMenu.setVisible(true);
            this.defeatBtn.setVisible(false);
            this.clearTeamBtn.setVisible(true);
            this.clearTeamBtn.setDisabled(§8"%§.§%$r§.§!!l§);
            this.regenCandidatesBtn.setVisible(true);
         }
         else if(!_loc2_)
         {
            this.progressSub.activate();
            this.progressSub.setVisible(true);
            this.defeatBtn.setVisible(Application.instance.§#&7§());
            this.clearTeamBtn.setVisible(false);
            this.regenCandidatesBtn.setVisible(false);
         }
         else
         {
            this.completeSub.activate();
            this.completeSub.setVisible(true);
            this.defeatBtn.setVisible(false);
            this.clearTeamBtn.setVisible(false);
            this.regenCandidatesBtn.setVisible(false);
         }
         this.gladiatorTeam.activate();
         this.playBtn.setDisabled(!_loc1_ || _loc2_);
         this.§8"`§.visible = false;
      }
      
      private function §6%y§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = int(this.§`"E§.length);
         while(_loc1_ < _loc2_)
         {
            this.§`"E§[_loc1_].setVisible(false);
            _loc1_++;
         }
      }
      
      public function updateCandidates() : void
      {
         this.gladiatorMenu.activate();
      }
      
      public function updateTeam() : void
      {
         this.gladiatorTeam.activate();
      }
      
      public function showReward() : void
      {
         this.§6%y§();
         this.awardSub.setVisible(true);
         this.awardSub.activate();
         this.§8"`§.visible = true;
      }
      
      private function §,%^§(param1:MouseEvent) : void
      {
         §8"%§.§%w§.getArenaMenu().§;#!§(§&!Y§.PVP_TAB_NAME);
         if(§8"%§.§%$r§.§2%N§)
         {
            §8"%§.§%$r§.§;y§();
         }
      }
      
      private function §'%Y§(param1:MouseEvent) : void
      {
         §8"%§.§%$r§.§2!w§();
      }
      
      private function §>"h§(param1:MouseEvent) : void
      {
         var event:MouseEvent = param1;
         if(§8"%§.§%$r§.regenerateCount == 0)
         {
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0$N§.REGEN_CANDIDATES_QUESTION,§,#W§.§`$x§,function():void
            {
               §8"%§.§%$r§.§4"+§(false);
            });
         }
         else
         {
            new §9!^§(false,function(param1:Boolean):void
            {
               §8"%§.§%$r§.§4"+§(false);
            }).show();
         }
      }
      
      private function §;!b§(param1:MouseEvent) : void
      {
         var event:MouseEvent = param1;
         if(§8"%§.§%$r§.regenerateCount == 0)
         {
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,§0$N§.WIPE_TEAM_QUESTION,§,#W§.§`$x§,function():void
            {
               §8"%§.§%$r§.§4"+§(true);
            });
         }
         else
         {
            new §9!^§(true,function(param1:Boolean):void
            {
               §8"%§.§%$r§.§4"+§(true);
            }).show();
         }
      }
      
      private function §4%C§(param1:MouseEvent) : void
      {
         §8"%§.§%$r§.§>%U§(this.§-#w§);
      }
      
      private function §-#w§(param1:Boolean, param2:int, param3:§<#&§) : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(param1)
         {
            §8"%§.§%w§.getArenaMenu().hide();
            §8"%§.§?!W§.§`";§(param3);
         }
         else
         {
            _loc4_ = §0#2§.§1" §(param2,true);
            _loc5_ = §0$N§.COLISEUM_PRIMETIME_MSG + "\n" + _loc4_;
            §,#W§.§[#r§(§0$N§.TITLE_ATTENTION,_loc5_);
         }
      }
      
      private function §1#G§(param1:MouseEvent) : void
      {
         var _loc2_:int = int(§8"%§.§%$r§.winCount);
         var _loc3_:int = int(§8"%§.§%$r§.defeatCount);
         Social.§!g§.§^_§(_loc2_,_loc3_);
         §8"%§.§%w§.getArenaMenu().hide();
         §8"%§.§%$r§.§;y§();
      }
      
      override public function destroy() : void
      {
         this.regenCandidatesBtn.removeHandler(this.§>"h§);
         this.clearTeamBtn.removeHandler(this.§;!b§);
         this.returnBtn.removeHandler(this.§,%^§);
         this.playBtn.removeHandler(this.§4%C§);
         this.postBtn.removeHandler(this.§1#G§);
         this.regenCandidatesBtn.destroy();
         this.clearTeamBtn.destroy();
         this.returnBtn.destroy();
         this.playBtn.destroy();
         this.postBtn.destroy();
         super.destroy();
      }
   }
}


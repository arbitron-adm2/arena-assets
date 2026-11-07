package §!!!§
{
   import § !8§.§`!d§;
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §"%H§.§1! §;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.§4&5§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0!Y§.§#!Z§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1!J§.§@#%§;
   import §3#T§.AtomBomb;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4!x§.§@& §;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§+%-§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7"Q§.§0-§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §=&!§.§<$Z§;
   import §>%S§.§^!V§;
   import §?#g§.§&"P§;
   import §?$K§.§3#j§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §["3§.§ V§;
   import §]$J§.§#"s§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import config.achievements.BossAchieves;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.*;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.JoinToChat;
   import ru.pragmatix.wormix.messages.server.GetAbandonedFriendsResult;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.structures.BackpackConfStructure;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§6Y§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§]V§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §@!D§ extends §0-§
   {
      
      private var §?!j§:int;
      
      private var §;%u§:§3A§;
      
      private var profile:UserProfile;
      
      public function §@!D§(param1:DisplayObjectContainer)
      {
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         prev.setVisible(false);
         next.setVisible(false);
         §7&5§.§>&<§(§'%s§("skinsLabel"),§0$N§.§%! §("SKINS_TITLE"));
      }
      
      public function initFromProfile(param1:UserProfile) : void
      {
         this.profile = param1;
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         var _loc2_:§3A§ = new §3A§(param1);
         MovieClip(_loc2_.getContainer()).buttonMode = true;
         _loc2_.addEventListener(§[%w§.MENU_ITEM_CLICK,this.§#$,§);
         return _loc2_;
      }
      
      override public function update() : void
      {
         var _loc1_:§`!d§ = null;
         var _loc2_:Boolean = false;
         super.update();
         _loc1_ = getSelected() as §`!d§;
         _loc2_ = §]V§.§ $l§(_loc1_.getId(),this.profile);
         var _loc3_:§&"P§ = _loc2_ ? §6Y§.§?#`§(this.profile.§1$4§(),_loc1_.getId()) : §&"P§.§!%4§(_loc1_.getId());
         this.§?!j§ = _loc3_.§7"=§();
         §'%s§("skinsLabel").visible = _loc2_;
      }
      
      private function §#$,§(param1:Event) : void
      {
         var _loc2_:§3A§ = null;
         var _loc3_:uint = 0;
         _loc2_ = §3A§(param1.target);
         _loc3_ = _loc2_.getCellIndex();
         var _loc4_:§`!d§ = _loc2_.getItem() as §`!d§;
         var _loc5_:int = _loc3_ == 0 ? 0 : int(_loc4_.getId() * 10 + _loc3_);
         this.§?!j§ = _loc5_;
         this.§;%u§ = _loc2_;
         dispatchEvent(param1);
      }
      
      public function get selectedSkinModId() : int
      {
         return this.§?!j§;
      }
      
      public function get item() : §3A§
      {
         return this.§;%u§;
      }
   }
}


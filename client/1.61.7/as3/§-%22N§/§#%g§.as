package §-"N§
{
   import § !8§.§`!d§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §"%H§.§`"w§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#%!§.§%&F§;
   import §#%!§.§^%c§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&%7§.§&%f§;
   import §&%7§.§^"N§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §-@§.*;
   import §0%[§.§0%§;
   import §0%[§.§6!?§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §2!-§.§'5§;
   import §2#i§.§!$A§;
   import §2#i§.§+%z§;
   import §3%J§.SpecialDealWindow;
   import §4!!§.§!%n§;
   import §4!x§.§@& §;
   import §7!B§.§&"T§;
   import §7!n§.§'#n§;
   import §7!n§.§-!!§;
   import §7!n§.§2!j§;
   import §7!n§.§>!k§;
   import §7!n§.§@!g§;
   import §7!n§.§[&#§;
   import §7!n§.§`$m§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §8$V§.§`"c§;
   import §<%k§.§`!v§;
   import §=&!§.§4$z§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §>"w§.§"&%§;
   import §>$q§.*;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$7§.§6&'§;
   import §?$L§.§&$9§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§8%6§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]^§.§4&+§;
   import §^!]§.WeaponShootEvent;
   import §^"y§.*;
   import §^4§.§@#J§;
   import §`"x§.§[a§;
   import §`%&§.§5$1§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.DistributePoints;
   import ru.pragmatix.wormix.messages.server.DistributePointsResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.ex.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §#%g§ extends §"k§ implements §"&%§
   {
      
      private var repeatBtn:§?%>§;
      
      private var nextBtn:§?%>§;
      
      protected var §-&8§:Boolean;
      
      protected var postBtn:§?%>§;
      
      protected var §8"`§:DisplayObjectContainer;
      
      public function §#%g§(param1:§]$d§, param2:§4$z§)
      {
         super(§6#A§.§!&6§("TutorialGameOverPanel"),param1,param2);
         this.init(param1,param2);
      }
      
      private static function §<#;§() : void
      {
         var _loc1_:Array = null;
         _loc1_ = §8"%§.§"&"§.§0#M§();
         var _loc2_:§8%6§ = _loc1_[0];
         §8"%§.§?!W§.§'!p§(_loc2_);
      }
      
      private function init(param1:§]$d§, param2:§4$z§) : void
      {
         var _loc3_:Sprite = null;
         var _loc11_:TextField = null;
         _loc3_ = §'$a§("headerPanel");
         var _loc4_:Sprite = _loc3_.getChildByName("completePanel") as Sprite;
         var _loc5_:Sprite = _loc3_.getChildByName("failPanel") as Sprite;
         var _loc6_:TextField = §'%s§("msg");
         var _loc7_:§^"N§ = new §^"N§(getChildByName("expPanel"),param2,this);
         _loc7_.setVisible(param2.exp > 0);
         lastPosition = new Point(_loc7_.x,_loc7_.y + _loc7_.height);
         var _loc8_:§&%f§ = §7$K§();
         this.nextBtn = §!&5§.§7#[§(getChildByName("nextBtn"));
         this.nextBtn.§[!u§(this.§,%l§);
         this.nextBtn.setDisabled(!§8"%§.§[%h§.§7$J§());
         this.repeatBtn = §!&5§.§7#[§(getChildByName("repeatBtn"));
         this.repeatBtn.setText(§<"G§.§%! §("REPEAT_BTN"),§"-§.§+$m§);
         this.repeatBtn.§[!u§(this.§3$^§);
         this.repeatBtn.setDisabled(!§8"%§.§[%h§.§7$J§());
         this.repeatBtn.y = §>!-§.y = this.nextBtn.y;
         var _loc9_:DisplayObject = §4"0§.§##W§(container as DisplayObjectContainer,"postBtn",§4"0§.§8&6§);
         this.postBtn = §!&5§.§7#[§(_loc9_);
         this.postBtn.setText(§<"G§.§%! §("GAME_OVER_POST_BTN"),§"-§.§+$m§);
         this.postBtn.§[!u§(this.§"$q§);
         this.§8"`§ = this.postBtn.getContainer().parent;
         var _loc10_:Boolean = param2.§8%I§ > 0;
         if(param2.result.equals(§<$Z§.§+%I§))
         {
            this.repeatBtn.setVisible(false);
            _loc11_ = TextField(_loc4_.getChildByName("title"));
            _loc5_.visible = false;
            if(param1.missionIds[0] != -§6&'§.§-$7§.length)
            {
               this.nextBtn.setVisible(true);
               this.nextBtn.setText(§<"G§.§%! §("NEXT_TUTORIAL_BTN"),§"-§.§+$m§);
               _loc7_.y = _loc6_.y - 5;
               this.§8"`§.visible = false;
               §&$9§.§>&F§(_loc11_,§"-§.§+$m§,§<"G§.§%! §("TUTORIAL_MISSION_COMPLETE"));
               _loc6_.visible = false;
            }
            else
            {
               this.nextBtn.setVisible(false);
               _loc7_.y = _loc6_.y + _loc6_.height + 10;
               §>!-§.x = this.nextBtn.x + this.nextBtn.width * 0.25;
               this.§8"`§.x = §>!-§.x + §>!-§.width + 12;
               this.§8"`§.visible = true;
               §&$9§.§>&F§(_loc11_,§"-§.§+$m§,§<"G§.§%! §("TUTORIAL_COMPLETE"));
               §&$9§.§>&F§(_loc6_,§"-§.§+$m§,§<"G§.§%! §("TUTORIAL_COMPLETE_MSG"));
            }
            _loc8_.y = _loc7_.y + _loc7_.height + 10;
            this.§8"`§.y = this.nextBtn.y = §>!-§.y = _loc8_.y + _loc8_.height + 20;
         }
         else if(param2.result.equals(§<$Z§.§!M§))
         {
            this.nextBtn.setVisible(false);
            this.§8"`§.visible = false;
            _loc11_ = TextField(_loc5_.getChildByName("title"));
            §&$9§.§>&F§(_loc11_,§"-§.§+$m§,§<"G§.§%! §("TUTORIAL_MISSION_FAIL"));
            _loc4_.visible = false;
            §&$9§.§>&F§(_loc6_,§"-§.§+$m§,§<"G§.§%! §("TUTORIAL_MISSION_FAIL_MSG"));
            this.§8"`§.y = this.repeatBtn.y = §>!-§.y = _loc6_.y + _loc6_.height + 10;
            this.§8"`§.visible = false;
         }
         §<m§ = [this.nextBtn.getContainer(),this.repeatBtn.getContainer(),this.§8"`§,§>!-§.getContainer()];
         §]$F§();
      }
      
      override protected function §^$l§(param1:§4$z§) : void
      {
      }
      
      private function §,%l§(param1:Event) : void
      {
         §!#z§(this.§7%%§);
      }
      
      private function §7%%§() : void
      {
         Application.setUserBusy(false);
         §8"%§.§%w§.§&u§(§<#;§,null);
         this.nextBtn.setDisabled(true);
      }
      
      private function §3$^§(param1:Event) : void
      {
         §!#z§(this.§0!6§);
      }
      
      private function §0!6§() : void
      {
         Application.setUserBusy(false);
         var _loc1_:§8%6§ = §8"%§.§"&"§.§0#M§()[0];
         §8"%§.§?!W§.§'!p§(_loc1_);
         this.repeatBtn.setDisabled(true);
      }
      
      private function §"$q§(param1:Event) : void
      {
         this.§-&8§ = true;
         okAction();
      }
      
      public function getStatusPostSelected() : Boolean
      {
         return this.§-&8§;
      }
      
      override public function destroy() : void
      {
         this.repeatBtn.removeHandler(this.§3$^§);
         this.postBtn.removeHandler(this.§"$q§);
         this.nextBtn.removeHandler(this.§,%l§);
         this.repeatBtn.destroy();
         this.postBtn.destroy();
         this.nextBtn.destroy();
         super.destroy();
      }
   }
}


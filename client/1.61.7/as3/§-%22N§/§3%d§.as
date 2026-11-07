package §-"N§
{
   import § &5§.*;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §##j§.§#$!§;
   import §##j§.§9x§;
   import §##y§.CollisionEvent;
   import §#$e§.§!a§;
   import §#%!§.§ §;
   import §%"Z§.§+$A§;
   import §%&6§.§0%2§;
   import §&#h§.§?B§;
   import §&%7§.§ !0§;
   import §&%7§.§'&2§;
   import §&%7§.§^"N§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'%[§.§ i§;
   import §'%[§.§3%5§;
   import §'%[§.§4!C§;
   import §'%[§.§@"4§;
   import §'%[§.§]$5§;
   import §+$=§.§6#A§;
   import §+%S§.§2$#§;
   import §+%S§.§=t§;
   import §+&<§.*;
   import §,"v§.§9%d§;
   import §-!U§.*;
   import §-%B§.*;
   import §-%w§.*;
   import §-@§.*;
   import §0!§.§9"u§;
   import §0%[§.§1%"§;
   import §0%j§.§0$+§;
   import §0&F§.§0%v§;
   import §0&F§.§4$T§;
   import §1#p§.§"Z§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §2#x§.§]s§;
   import §3"_§.§?#w§;
   import §3#a§.§<#_§;
   import §4'§.§`"q§;
   import §6"'§.§&"3§;
   import §6%2§.§!"x§;
   import §6%2§.§+§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §8#o§.§#$s§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §<%E§.§;!y§;
   import §=#g§.*;
   import §=&!§.§&$a§;
   import §=&!§.§4$z§;
   import §=&!§.§<$!§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §>"w§.§"&%§;
   import §?$7§.§8"e§;
   import §?$K§.§3#j§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§3!D§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.StageDisplayState;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanEmblemRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.server.GetAbandonedFriendsResult;
   import ru.pragmatix.wormix.messages.server.OpenChestResult;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.*;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §3%d§ extends §"k§ implements §"&%§
   {
      
      protected var §-&8§:Boolean;
      
      protected var postBtn:§?%>§;
      
      protected var §8"`§:DisplayObjectContainer;
      
      protected var nextBtn:§?%>§;
      
      protected var expPanel:§^"N§;
      
      public function §3%d§(param1:§]$d§, param2:§4$z§, param3:MovieClip = null)
      {
         var _loc6_:TextField = null;
         param3 ||= §6#A§.§!&6§(§+"'§.§=&D§);
         super(param3,param1,param2);
         this.§=!O§();
         var _loc4_:Boolean = param2.§8%I§ > 0;
         if(this.nextBtn)
         {
            this.nextBtn.setDisabled(!§8"%§.§[%h§.§`t§() > 0 || _loc4_);
            this.nextBtn.setVisible(!_loc4_);
            §<m§.push(this.nextBtn.getContainer());
         }
         var _loc5_:DisplayObject = §4"0§.§##W§(param3,"postBtn",§4"0§.§8&6§);
         this.postBtn = §!&5§.§7#[§(_loc5_);
         this.postBtn.setText(§<"G§.§%! §("GAME_OVER_POST_BTN"),§"-§.§+$m§);
         this.postBtn.§[!u§(this.§"$q§);
         this.§8"`§ = this.postBtn.getContainer().parent;
         this.§8"`§.y = §>!-§.y;
         if(param2.result.equals(§<$Z§.§7!i§))
         {
            _loc6_ = §'%s§("msg");
            this.§7#M§(_loc6_);
         }
         if(param2.exp > 0 && !param2.result.equals(§<$Z§.§7!i§) && param1.battleType != §&$a§.§#"g§)
         {
            this.expPanel = new §^"N§(getChildByName("expPanel"),param2,this);
            this.expPanel.y = lastPosition.y;
            lastPosition.y += this.expPanel.height + 10;
         }
         else if(getChildByName("expPanel"))
         {
            getChildByName("expPanel").visible = false;
         }
         if(rewards.length > 0 && param1.battleType == §&$a§.§^!p§)
         {
            §7$K§();
         }
         if(param1.battleType == §&$a§.§^!p§)
         {
            this.§%&!§(param2.result,this.§6"M§(),!param1.battleType.§3g§());
         }
         this.§3% §();
         §<m§.push(this.§8"`§,§>!-§.getContainer());
         §]$F§();
      }
      
      protected function §7#M§(param1:TextField) : void
      {
         §&$9§.§>&F§(param1,§"-§.§+$m§,this.§8$_§());
         lastPosition.y += param1.height + 10;
      }
      
      override protected function §8$_§() : String
      {
         return §<"G§.§%! §("DRAW_MESSAGE");
      }
      
      protected function §3% §() : void
      {
         if(this.nextBtn)
         {
            this.nextBtn.y = §>!-§.y = this.§8"`§.y = lastPosition.y;
         }
         else
         {
            §>!-§.y = this.§8"`§.y = lastPosition.y;
         }
      }
      
      protected function §=!O§() : void
      {
         this.nextBtn = §!&5§.§7#[§(getChildByName("nextBtn"));
         this.nextBtn.§[!u§(this.§,%l§);
         this.nextBtn.setText(§<"G§.§%! §("NEXT_BATTLE_BTN"),§"-§.§+$m§);
      }
      
      protected function §%&!§(param1:§<$Z§, param2:Vector.<UserProfile>, param3:Boolean = false) : void
      {
         var _loc4_:§<$Z§ = param1.equals(§<$Z§.§7!i§) ? §<$Z§.§7!i§ : (param1.equals(§<$Z§.§+%I§) ? §<$Z§.§!M§ : §<$Z§.§+%I§);
         var _loc5_:§'&2§ = new §'&2§(getChildByName("playersSideBar"),§^#R§.§="T§(),param1);
         new §'&2§(getChildByName("enemiesSideBar"),param2,_loc4_,param3);
         if(lastPosition.y < _loc5_.y + _loc5_.height)
         {
            lastPosition.y = _loc5_.y + _loc5_.height + 10;
         }
      }
      
      protected function §,%l§(param1:Event) : void
      {
         §!#z§(this.§`!H§);
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
      
      protected function §6"M§() : Vector.<UserProfile>
      {
         return §^#R§.§6"M§();
      }
      
      private function §`!H§() : void
      {
         var _loc1_:§<$!§ = null;
         hide();
         Application.setUserBusy(false);
         _loc1_ = §8"%§.§?!W§.§^!U§().§-!K§;
         var _loc2_:UserProfile = §8"%§.§0&4§.§#%4§(_loc1_);
         §8"%§.§?!W§.§+%8§(_loc2_,_loc1_);
         this.nextBtn.setDisabled(true);
      }
      
      override public function destroy() : void
      {
         this.postBtn.removeHandler(this.§"$q§);
         this.postBtn.destroy();
         §>!-§.destroy();
         if(this.nextBtn)
         {
            this.nextBtn.removeHandler(this.§,%l§);
            this.nextBtn.destroy();
         }
         super.destroy();
      }
   }
}


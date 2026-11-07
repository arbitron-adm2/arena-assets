package §5$]§
{
   import § #9§.§"$t§;
   import § #m§.§;#^§;
   import § #m§.§[&H§;
   import § $q§.§3U§;
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§7#P§;
   import §%"1§.§=#?§;
   import §%# §.§##U§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#E§.§;2§;
   import §+#U§.§'#w§;
   import §-@§.§0"e§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §1!#§.§-e§;
   import §1#p§.§2=§;
   import §2#s§.*;
   import §2#x§.*;
   import §4u§.§[%u§;
   import §6",§.§[%w§;
   import §6_§.*;
   import §7$t§.§&!e§;
   import §7$t§.§??§;
   import §8$V§.§`"c§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §="z§.§9%1§;
   import §>%S§.§^!V§;
   import §?"[§.*;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §]$&§.§2&2§;
   import §]^§.§-$T§;
   import §^!"§.§0^§;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import com.greensock.TweenLite;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.media.SoundTransform;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.§3$B§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.ExecuteSpecialDeal;
   import ru.pragmatix.wormix.messages.client.GetBundles;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.server.GetBundlesResult;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §-$Z§ extends §3$B§
   {
      
      private var §4$o§:MovieClip;
      
      private var nextBtn:§?%>§;
      
      private var prevBtn:§?%>§;
      
      public function §-$Z§(param1:DisplayObjectContainer, param2:String, param3:§3& §)
      {
         super(param1,param2,param3);
         this.§4$o§ = §'$a§("item.bottomBlock.arrows");
         this.nextBtn = §!&5§.§7#[§(getChildByName("item.bottomBlock.arrows.arrowRight"));
         this.nextBtn.setQtip(§0$N§.MOVE_TEAMMATE_HINT,§;#^§.§4!f§,§+"'§.§3%y§);
         this.nextBtn.§[!u§(this.§0"f§);
         this.prevBtn = §!&5§.§7#[§(getChildByName("item.bottomBlock.arrows.arrowLeft"));
         this.prevBtn.setQtip(§0$N§.MOVE_TEAMMATE_HINT,§;#^§.§4!f§,§+"'§.§3%y§);
         this.prevBtn.§[!u§(this.§"#[§);
         this.reset();
      }
      
      private function §"#[§(param1:Event) : void
      {
         dispatchEvent(new SelectObjectEvent("prev"));
      }
      
      private function §0"f§(param1:Event) : void
      {
         dispatchEvent(new SelectObjectEvent("next"));
      }
      
      override public function §!"&§(param1:Event = null) : void
      {
         §'#y§.§3!$§(§8!z§ + 1);
         super.§!"&§(param1);
      }
      
      override protected function §9"!§(param1:MouseEvent) : void
      {
         if(!profile || §4! §.isMe(profile))
         {
            return;
         }
         super.§9"!§(param1);
         this.reset();
         this.setItem(null);
         Application.§5!>§.§^P§.§6X§();
      }
      
      public function §+%f§(param1:Boolean) : void
      {
         §9#W§.visible = param1;
      }
      
      override public function setItem(param1:Object) : void
      {
         var _loc4_:uint = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:String = null;
         super.setItem(param1);
         var _loc2_:Boolean = profile != null;
         var _loc3_:Boolean = §@&&§.isMe();
         _loc4_ = §<!9§.§4p§(§%h§.getLevel());
         _loc5_ = §%h§.§%$3§();
         _loc6_ = §0$c§.§5G§(§%h§);
         _loc7_ = _loc4_ + _loc5_;
         var _loc8_:Boolean = §8!z§ >= _loc4_;
         var _loc9_:Boolean = §8!z§ >= _loc6_ && §8!z§ <= _loc4_ && §&#j§ < _loc7_;
         locked = !_loc2_ && _loc8_;
         §'b§.setVisible(locked);
         textHire.visible = _loc3_ && !_loc2_ && _loc9_ && !locked;
         btnHire.setVisible(textHire.visible);
         if(locked)
         {
            _loc11_ = §<!9§.§0r§(§8!z§ + 1);
            §7&5§.§?$k§(textLock,_loc11_.toString());
            _loc12_ = §0%§.format(§0$N§.CAN_HIRE_AT_LEVEL,{"lvl":_loc11_});
            §'b§.setQtip(_loc12_,§;#^§.DEFAULT,§+"'§.§3%y§);
         }
         user.setVisible(!locked);
         if(_loc2_)
         {
            § "-§ = §"$t§.§!!1§(§ "-§,profile,§%$4§);
            §%$4§.alpha = profile.isActive() ? 1 : 0.5;
            if(_loc3_ && §2=§.§9$M§(profile))
            {
               TweenLite.to(§%$4§,0,{"colorMatrixFilter":{
                  "saturation":0,
                  "brightness":0.75
               }});
            }
         }
         §"&;§.setVisible(!textHire.visible);
         §"&;§.setDisabled(!_loc3_ || !_loc2_ && !locked && !_loc9_);
         var _loc10_:Boolean = _loc3_ && profile != null && §8!z§ >= 0 && §8!z§ < _loc6_;
         this.prevBtn.setVisible(_loc10_);
         this.nextBtn.setVisible(_loc10_);
         if(_loc10_ && _loc3_)
         {
            this.prevBtn.setDisabled(§8!z§ == 0);
            this.nextBtn.setDisabled(§8!z§ == _loc6_ - 1);
         }
      }
      
      override public function reset() : void
      {
         super.reset();
         this.prevBtn.setVisible(false);
         this.nextBtn.setVisible(false);
         this.prevBtn.setDisabled(true);
         this.nextBtn.setDisabled(true);
      }
      
      override public function destroy() : void
      {
         this.nextBtn.destroy();
         this.prevBtn.destroy();
         super.destroy();
      }
   }
}


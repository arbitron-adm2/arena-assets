package §5$]§
{
   import § #m§.§;#^§;
   import § #m§.§[&H§;
   import § &5§.*;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%# §.§##U§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!%§;
   import §'!Z§.§6S§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §-@§.§0"e§;
   import §-G§.§ A§;
   import §-G§.§1$l§;
   import §-G§.§^$ §;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §0&F§.§[!F§;
   import §1#p§.§"Z§;
   import §1#p§.§2=§;
   import §2#H§.§<§;
   import §2#H§.§?#S§;
   import §2#s§.*;
   import §3"_§.*;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4#`§.BattleInterface;
   import §4u§.§[%u§;
   import §5!,§.§9$h§;
   import §6"'§.§9$Z§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§8%%§;
   import §7"Q§.§0$L§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §9"-§.§?!s§;
   import §9%k§.*;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §<%E§.§,$2§;
   import §<%E§.§6#`§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=!p§.§1e§;
   import §=#g§.§&%5§;
   import §?$K§.§`""§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?>§.§0!7§;
   import §?>§.§4#o§;
   import §?>§.§]!V§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §]$J§.§#"s§;
   import §]$v§.§]%_§;
   import §^!"§.§^$F§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import api.com.odnoklassniki.Odnoklassniki;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import com.adobe.serialization.json.JSON;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.events.TweenEvent;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§%%v§;
   import ru.pragmatix.flox.gui.controls.§8L§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§!#v§;
   import ru.pragmatix.wormix.controller.§+$w§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.§@$y§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§#"h§;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§^#%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §3& § extends §@$y§
   {
      
      private static const §'"+§:String = "TeamBtnGroup";
      
      private var §3i§:§`1§;
      
      private var §&#j§:uint;
      
      private var §!,§:int = -1;
      
      private var §&W§:Boolean = true;
      
      public function §3& §(param1:MovieClip, param2:TeamRoom)
      {
         super(param1,param2);
         this.§3i§ = new §`1§(§'$a§("lamps"));
      }
      
      override public function initFromProfile(param1:UserProfile) : void
      {
         this.profile = param1;
         var _loc2_:Array = §""L§.§,"=§(§0$c§.§'%=§(param1,true));
         this.§&#j§ = _loc2_.length;
         setData(_loc2_);
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         var _loc2_:§-$Z§ = new §-$Z§(param1 as DisplayObjectContainer,§'"+§,this);
         _loc2_.addEventListener(SelectObjectEvent.NAME,this.§%!C§);
         _loc2_.tglLight.§[!u§(this.§!"&§);
         return _loc2_;
      }
      
      override protected function §!"&§(param1:Event = null) : void
      {
         var _loc2_:§-$Z§ = null;
         var _loc3_:Boolean = false;
         super.§!"&§(param1);
         this.§3i§.update();
         var _loc4_:int = 0;
         var _loc5_:int = int(cells.length);
         while(_loc4_ < _loc5_)
         {
            _loc2_ = cells[_loc4_];
            _loc2_.§+%f§(false);
            if(_loc2_.isPressed())
            {
               §?%1§(_loc2_);
               §%f§.§3%,§(_loc2_.getProfile(),_loc2_);
               this.§3i§.§!"&§(_loc4_);
               if(§@&&§.isMe())
               {
                  this.§!,§ = _loc4_;
               }
               if(_loc2_.isLocked())
               {
                  _loc3_ = true;
                  lockBar.setVisible(true);
               }
            }
            _loc4_++;
         }
         var _loc6_:Boolean = §%f§.getProfile() != null;
         §%f§.setVisible(_loc6_);
         this.§[#C§(!_loc6_ && !_loc3_);
         dispatchEvent(new §4#o§(§4#o§.§80§));
      }
      
      override public function §<'§() : void
      {
         var _loc1_:§-$Z§ = null;
         this.§3i§.deactivate();
         for each(_loc1_ in cells)
         {
            if(_loc1_.isPressed())
            {
               _loc1_.tglLight.setPressed(false);
            }
         }
         super.§<'§();
      }
      
      override public function §[#C§(param1:Boolean) : void
      {
         var _loc2_:§-$Z§ = null;
         if(param1)
         {
            this.§3i§.update();
         }
         for each(_loc2_ in cells)
         {
            _loc2_.§+%f§(param1);
         }
      }
      
      private function §%!C§(param1:SelectObjectEvent) : void
      {
         var _loc2_:§-$Z§ = null;
         var _loc6_:UserProfile = null;
         _loc2_ = §-$Z§(param1.currentTarget);
         var _loc3_:UserProfile = UserProfile(_loc2_.getItem());
         var _loc4_:int = this.§<#"§(_loc2_.getCellIndex() + (param1.object == "next" ? 1 : -1));
         var _loc5_:Vector.<UserProfile> = new Vector.<UserProfile>(0);
         _loc2_.setItem(§-$Z§(cells[_loc4_]).getItem());
         §-$Z§(cells[_loc4_]).setItem(_loc3_);
         var _loc7_:int = 0;
         var _loc8_:int = int(cells.length);
         while(_loc7_ < _loc8_)
         {
            _loc6_ = §-$Z§(cells[_loc7_]).getItem() as UserProfile;
            if(_loc6_)
            {
               _loc5_[_loc5_.length] = _loc6_;
               _loc6_ = null;
            }
            _loc7_++;
         }
         var _loc9_:Vector.<UserProfile> = §0$c§.§'%=§(profile,false);
         _loc7_ = 0;
         _loc8_ = int(_loc9_.length);
         while(_loc7_ < _loc8_)
         {
            _loc6_ = _loc9_[_loc7_];
            if(_loc5_.indexOf(_loc6_) == -1)
            {
               _loc5_[_loc5_.length] = _loc6_;
            }
            _loc7_++;
         }
         profile.§;"!§(_loc5_);
         §5%U§();
      }
      
      private function §<#"§(param1:int) : int
      {
         if(param1 > this.§&#j§ - 1)
         {
            param1 -= this.§&#j§;
         }
         else if(param1 < 0)
         {
            param1 = this.§&#j§ + param1;
         }
         return param1;
      }
      
      override public function activate() : void
      {
         if(this.§!,§ == -1 && §@&&§.isMe())
         {
            this.§!,§ = 0;
         }
         super.activate();
         if(!§@&&§.isMe())
         {
            this.§<'§();
         }
         this.§[#C§(true);
         if(Boolean(profile) && §@&&§.isMe())
         {
            if(this.§!,§ > this.§&#j§ - 1)
            {
               this.§!"&§();
            }
            else if(!§;i§.§^$q§().getSelected())
            {
               this.§ !+§();
               if(this.§&W§)
               {
                  this.§&W§ = false;
                  §1%"§.delay(this.§ !+§,null,200);
               }
            }
         }
      }
      
      public function § !+§() : void
      {
         var _loc3_:§-$Z§ = null;
         if(this.§!,§ == -1)
         {
            return;
         }
         var _loc1_:int = 0;
         var _loc2_:int = int(cells.length);
         while(_loc1_ < _loc2_)
         {
            if(_loc1_ == this.§!,§)
            {
               _loc3_ = §-$Z§(cells[_loc1_]);
               §,"l§(this.§!,§);
               this.§[#C§(false);
               _loc3_.tglLight.setPressed(true);
               _loc3_.§!"&§();
               this.§!"&§();
               break;
            }
            _loc1_++;
         }
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         this.§3i§.deactivate();
         this.§&W§ = true;
      }
      
      override protected function §]$x§(param1:§0$L§) : void
      {
         §-$Z§(param1).removeEventListener(SelectObjectEvent.NAME,this.§%!C§);
         super.§]$x§(param1);
      }
      
      override public function destroy() : void
      {
         this.§3i§.destroy();
         super.destroy();
      }
   }
}


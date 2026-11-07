package §>"l§
{
   import § !8§.§`!d§;
   import § $q§.*;
   import §!$D§.*;
   import §!$d§.§<$c§;
   import §##j§.§!%&§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##j§.§9x§;
   import §##j§.§`%g§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!&§.§8%f§;
   import §&!&§.§<"p§;
   import §+%S§.§=t§;
   import §+%S§.§?3§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§6!?§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1A§.*;
   import §2"L§.§,'§;
   import §2#W§.§8-§;
   import §2#i§.§+%z§;
   import §4#`§.BattleInterface;
   import §4%_§.§3§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §6",§.§[%w§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §9%k§.*;
   import §<!W§.§#&#§;
   import §<!W§.§3"R§;
   import §<!W§.§;!`§;
   import §<!W§.§>&@§;
   import §<!^§.§9"§;
   import §<%k§.§`!v§;
   import §=$#§.§1!$§;
   import §=&!§.§]$d§;
   import §=7§.§?%4§;
   import §?$L§.§&$9§;
   import §?>§.§0!7§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@#K§.§3&2§;
   import §@%I§.§2R§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[$P§.§[!0§;
   import §]$v§.*;
   import com.greensock.TweenLite;
   import config.§`!a§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageQuality;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.BitmapFilterQuality;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§&#>§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanAuditActionTO;
   import ru.pragmatix.wormix.messages.client.ExecuteSpecialDeal;
   import ru.pragmatix.wormix.messages.server.ExecuteSpecialDealResponse;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.§%%a§;
   import ru.pragmatix.wormix.weapons.BagHackWeapon;
   import ru.pragmatix.wormix.weapons.ammo.*;
   
   public class §?$O§ extends §"&=§
   {
      
      private var count:int;
      
      private var countText:TextField;
      
      private var itemIcon:§3U§;
      
      private var cooldownIcon:§`&-§;
      
      private var questionIcon:DisplayObject;
      
      private var bg:DisplayObject;
      
      private var bgCooldown:DisplayObject;
      
      private var shotsPanel:§#!Y§;
      
      private var §-&H§:Boolean;
      
      private var §!!f§:BagMenu;
      
      public function §?$O§(param1:MovieClip)
      {
         super(param1);
         this.countText = TextField(getChildByName("count"));
         this.countText.mouseEnabled = false;
         this.itemIcon = new § <§(getChildByName("icon"),true);
         this.cooldownIcon = new §`&-§(getChildByName("cooldownIcon"));
         this.questionIcon = getChildByName("questionIcon");
         this.shotsPanel = new §#!Y§(getChildByName("shotsPanel"));
         this.bg = getChildByName("bg");
         this.bgCooldown = getChildByName("bgCooldown");
         this.§[#'§(false);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         Sprite(§?Q§).mouseEnabled = false;
      }
      
      private function §[#'§(param1:Boolean) : void
      {
         this.cooldownIcon.setVisible(param1);
         this.bgCooldown.visible = param1;
         this.bg.visible = !param1;
         if(param1)
         {
            TweenLite.to(this.itemIcon.getContainer(),0.1,{"colorMatrixFilter":{
               "saturation":0,
               "brightness":0.75
            }});
         }
         else
         {
            TweenLite.to(this.itemIcon.getContainer(),0.1,{"colorMatrixFilter":{
               "saturation":1,
               "brightness":1
            }});
         }
         DisplayObjectContainer(§?Q§).getChildByName("bg").visible = !param1;
         DisplayObjectContainer(§?Q§).getChildByName("cooldownBg").visible = param1;
      }
      
      private function §%!q§(param1:uint) : void
      {
         var _loc2_:String = null;
         §&$9§.§>&F§(this.cooldownIcon.getChildByName("delayText") as TextField,§"-§.§6"j§,String(param1));
         _loc2_ = Social.§-%c§.§4!]§(param1,§0$N§.TURN_PLURALS);
         var _loc3_:String = §0%§.format(§0$N§.WEAPON_COOLDOWN_NEXT,{
            "value":param1,
            "turns":_loc2_
         });
         this.cooldownIcon.setQtip(_loc3_);
      }
      
      override public function setItem(param1:Object) : void
      {
         var _loc3_:§]$d§ = null;
         var _loc4_:Boolean = false;
         var _loc5_:UserProfile = null;
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         super.setItem(param1);
         var _loc2_:BackpackItem = param1 as BackpackItem;
         this.itemIcon.setItem(_loc2_ ? _loc2_.getRecord() : null);
         this.§[#'§(false);
         if(_loc2_)
         {
            _loc3_ = §8"%§.§?!W§.§^!U§();
            _loc4_ = _loc3_.§="T§().length > 1;
            _loc5_ = _loc4_ ? _loc3_.getProfiles()[_loc3_.§^!W§()] : null;
            this.itemIcon.setVisible(true);
            this.§-&H§ = _loc2_.§-&H§ || _loc4_ && this.§0!#§.squad && this.§0!#§.squad.§&!G§() != _loc5_ && this.§0!#§.squad.getTeamId() == §8"%§.§?!W§.§4"m§.§?%j§(_loc5_).getTeamId();
            _loc6_ = _loc2_.getCount();
            _loc7_ = this.§0!#§.§^"6§ && !this.§-&H§ && !this.§0!#§.§<"j§;
            if(_loc2_.isInfinite())
            {
               this.countText.text = "";
            }
            else
            {
               this.countText.visible = true;
               §&$9§.§>&F§(this.countText,§"-§.§6"j§,_loc6_.toString());
               this.shotsPanel.setVisible(false);
            }
            if(BagMenu.§5%K§ && §;#_§(_loc2_.getRecord()).isComplex())
            {
               this.itemIcon.setLevel(_loc2_.getLevel());
            }
            _loc8_ = !_loc2_.isInfinite() && _loc6_ <= _loc2_.§]!C§();
            if(_loc2_.§&"4§() && !_loc8_)
            {
               this.shotsPanel.§4%3§(_loc2_.§]!C§(),_loc2_.§>L§());
               this.shotsPanel.setVisible(true);
            }
            else
            {
               this.shotsPanel.setVisible(false);
            }
            if(_loc2_.isEmpty())
            {
               this.countText.text = "";
               setDisabled(true);
               TweenLite.to(this.itemIcon.getContainer(),0.1,{"colorMatrixFilter":{
                  "saturation":0,
                  "brightness":0.75
               }});
            }
            else
            {
               TweenLite.to(this.itemIcon.getContainer(),0.1,{"colorMatrixFilter":{
                  "saturation":1,
                  "brightness":1
               }});
               if(_loc2_.§1!9§)
               {
                  setDisabled(true);
                  this.§[#'§(true);
                  this.§%!q§(_loc2_.§&">§() + 1);
               }
               else
               {
                  setDisabled(false);
               }
            }
            if(_loc7_)
            {
               this.§4#p§(false);
            }
            else
            {
               this.questionIcon.visible = false;
            }
            if(_loc2_.isBlocked)
            {
               setDisabled(true);
               this.§[#'§(true);
               this.cooldownIcon.setVisible(false);
            }
         }
         else
         {
            this.countText.text = "";
            setDisabled(false);
         }
         §;b§(_loc2_ != null && !_loc2_.isBlocked && (!this.§0!#§.§^"6§ || this.§0!#§.§[%B§));
         if(_loc2_ == null)
         {
            getContainer().alpha = 0.5;
         }
         else
         {
            getContainer().alpha = 1;
         }
      }
      
      override protected function §!R§(param1:MouseEvent) : void
      {
         if(this.§0!#§.§^"6§ && (!this.§0!#§.§[%B§ || !this.§-&H§))
         {
            return;
         }
         if(!this.§0!#§.getContainer().hasEventListener(MouseEvent.MOUSE_MOVE) && !§8,§())
         {
            super.§!R§(param1);
            this.§0!#§.§,$s§(BackpackItem(getItem()));
            this.§0!#§.§,"l§(§^"r§());
         }
         else
         {
            this.§0!#§.lastIndex = §^"r§();
         }
      }
      
      override protected function §#%S§(param1:MouseEvent) : void
      {
         if(this.§0!#§.§^"6§ && (!this.§0!#§.§[%B§ || !this.§-&H§))
         {
            return;
         }
         super.§#%S§(param1);
         var _loc2_:BackpackItem = BackpackItem(item);
         if(_loc2_.getId() == _loc2_.getRecord().getId())
         {
            if(!disabled)
            {
               if(this.§0!#§.§^"6§)
               {
                  §#!Z§.fire(§#!Z§.§?$;§,this.§0!#§.squad.getNumber(),_loc2_.getId());
                  this.§0!#§.hide();
                  if(this.§0!#§.unit)
                  {
                     §7%g§.§`%i§(this.§0!#§.unit,new <int>[_loc2_.getId()],new <int>[BagHackWeapon.§7"9§]);
                  }
               }
               else
               {
                  BattleInterface.§?#"§(_loc2_.getId());
               }
            }
         }
         else
         {
            Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"BackpackItem hacked (mouse)"));
            if(!disabled)
            {
               BattleInterface.§?#"§(_loc2_.getRecord().getId());
            }
         }
      }
      
      override public function §,$K§() : Boolean
      {
         return Boolean(super.§,$K§()) && (!this.§0!#§.§^"6§ || this.§-&H§ && this.§0!#§.§[%B§);
      }
      
      private function get §0!#§() : BagMenu
      {
         if(!this.§!!f§)
         {
            this.§!!f§ = Application.scene.§7#o§.§0!#§;
         }
         return this.§!!f§;
      }
      
      private function §4#p§(param1:Boolean) : void
      {
         this.itemIcon.setVisible(param1);
         this.shotsPanel.setVisible(param1);
         this.cooldownIcon.setVisible(param1);
         this.questionIcon.visible = !param1;
         this.bgCooldown.visible = param1;
         this.countText.visible = param1;
         this.bg.visible = !param1;
      }
      
      override public function destroy() : void
      {
         this.setItem(null);
         super.destroy();
      }
   }
}


package §2"v§
{
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"%H§.*;
   import §#"V§.§!&5§;
   import §#"V§.§<"4§;
   import §#"V§.§?%>§;
   import §#%!§.§%&F§;
   import §#k§.§9$v§;
   import §&!m§.§-$6§;
   import §&"c§.§!!q§;
   import §+$=§.§6#A§;
   import §-%w§.§?"c§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.FrameTimerEvent;
   import §2!-§.DamageEvent;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$1§.§;#&§;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §8#a§.§>!o§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §8$V§.§`"k§;
   import §8$Z§.§9"t§;
   import §9%W§.§&!P§;
   import §<!^§.§'$e§;
   import §?$L§.§0"-§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@!i§.§;#L§;
   import §@#K§.§-§;
   import §`%&§.§`§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§2%F§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§>#r§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.ServerCommands;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.§[$ §;
   
   public class §%&"§ extends §>#r§
   {
      
      private var §-#?§:§@G§;
      
      private var backBtn:§?%>§;
      
      private var §45§:§<"4§;
      
      private var §8"M§:§<"4§;
      
      private var downgradeBtn:§?%>§;
      
      private var §!%z§:Vector.<§`%C§>;
      
      private var §9"j§:§#$s§;
      
      private var §?%W§:int;
      
      private var §&#S§:Boolean = true;
      
      private var infoBtn:§?%>§;
      
      private var §]"-§:§?%>§;
      
      private var craftPanel:DisplayObjectContainer;
      
      private var helpPanel:§?"c§;
      
      public function §%&"§()
      {
         super(§6#A§.§!&6§(§+"'§.§`$V§));
         this.§!%z§ = new Vector.<§`%C§>();
         this.craftPanel = container["craftPanel"];
         this.helpPanel = new §?"c§(container["helpPanel"]);
         this.helpPanel.getContainer().visible = false;
         this.backBtn = §!&5§.§7#[§(this.craftPanel["backBtn"]);
         this.backBtn.setText(§0$N§.BACK_BTN,§"-§.§+$m§);
         this.backBtn.addEventListener(MouseEvent.CLICK,this.§!![§);
         this.§45§ = §!&5§.§7#[§(this.craftPanel["collectForReagentBtn"]) as §<"4§;
         this.§45§.setText(§0$N§.COLLECT_FOR_REAGENT_BTN,§"-§.§+$m§);
         this.§8"M§ = §!&5§.§7#[§(this.craftPanel["collectForRubyBtn"]) as §<"4§;
         this.§8"M§.setText(§0$N§.COLLECT_FOR_RUBY_BTN,§"-§.§+$m§);
         this.downgradeBtn = §!&5§.§7#[§(this.craftPanel["downgradeBtn"]);
         this.downgradeBtn.setText(§0$N§.DOWNGRADE_BTN,§"-§.§+$m§);
         this.§>#B§();
         this.infoBtn = §!&5§.§7#[§(this.craftPanel.getChildByName("infoBtn"));
         this.infoBtn.§[!u§(this.§9$§);
         this.§]"-§ = §!&5§.§7#[§(container["helpPanel"]["returnBtn"]);
         this.§]"-§.§[!u§(this.§-#L§);
         var _loc1_:DisplayObject = this.craftPanel.getChildByName("upgradeBtnLabel");
         this.§-#?§ = new §@G§(null,§@G§.§3!+§);
         this.§-#?§.x = _loc1_.x;
         this.§-#?§.y = _loc1_.y;
         this.craftPanel.addChild(this.§-#?§.getContainer());
         this.§-#?§.§;"5§(false);
         this.§-#?§.getContainer().scaleX = this.§-#?§.getContainer().scaleY = 1.15;
         var _loc2_:MovieClip = §6#A§.§!&6§(§+"'§.§ $§);
         _loc2_.x = this.§-#?§.x + this.§-#?§.width;
         _loc2_.y = this.§-#?§.y + 40;
         this.craftPanel.addChild(_loc2_);
      }
      
      private function §9$§(param1:Event) : void
      {
         this.§>#V§();
      }
      
      private function §>#V§() : void
      {
         this.helpPanel.getContainer().visible = true;
         this.craftPanel.visible = false;
      }
      
      private function §-#L§(param1:MouseEvent) : void
      {
         this.§<$F§();
      }
      
      private function §<$F§() : void
      {
         this.helpPanel.getContainer().visible = false;
         this.craftPanel.visible = true;
      }
      
      private function §[#h§(param1:MouseEvent) : void
      {
         if(this.§?%W§ != 0)
         {
            if(this.§?%W§ > Application.userProfile.§@$D§())
            {
               new §>!o§().show();
            }
            else
            {
               this.§`%§();
            }
         }
         else
         {
            this.§`%§();
         }
      }
      
      private function §1$q§(param1:MouseEvent) : void
      {
         var _loc2_:int = §8"%§.§9"<§.§0$@§();
         if(_loc2_ <= 0)
         {
            §,#W§.§6!P§(§0"-§.TITLE_ERROR,§0$N§.DOWNGRADES_LIMIT_REACHED);
            return;
         }
         §,#W§.§'!+§(§0$N§.TITLE_CONFIRMATION,§0$N§.CONFIRMATION_DOWNGRADE_TEXT + "\n\n" + §0%§.format(§0$N§.DOWNGRADES_LEFT,{
            "count":_loc2_,
            "downgrades":Social.§-%c§.§4!]§(_loc2_,§0$N§.DOWNGRADES_PLURALS)
         }),§,#W§.§7"d§,this.§`%§).show();
      }
      
      private function §`%§() : void
      {
         §[&G§.§8"&§.show();
         if(this.§&#S§)
         {
            §8"%§.§9"<§.§`g§(this.§9"j§.getId(),this.§?%W§,this.§6"1§);
         }
         else
         {
            §8"%§.§9"<§.§8$N§(this.§9"j§.getId(),this.§6"1§);
         }
         this.§45§.removeEventListener(MouseEvent.CLICK,this.§[#h§);
         this.§8"M§.removeEventListener(MouseEvent.CLICK,this.§1$q§);
         this.downgradeBtn.removeEventListener(MouseEvent.CLICK,this.§1$q§);
      }
      
      private function §6"1§(param1:Boolean) : void
      {
         var _loc2_:§;#_§ = null;
         var _loc3_:int = 0;
         var _loc4_:§;#_§ = null;
         if(param1)
         {
            dispatchEvent(new Event(Event.CLOSE));
            if(this.§&#S§)
            {
               _loc2_ = §<$c§.§ !=§(this.§9"j§.upgradeId);
               _loc3_ = §1!S§.§[!r§(_loc2_.getId());
               _loc4_ = §<$c§.§ !=§(_loc3_);
               if(_loc4_.isComplex() || _loc4_.getInfinite())
               {
                  _loc2_.initFromConfig(§1@§.§=!u§(this.§9"j§.upgradeId));
               }
               Social.§!g§.§[%,§(_loc2_);
            }
         }
         this.§>#B§();
         §[&G§.§8"&§.hide();
      }
      
      public function update(param1:§#$s§, param2:Boolean) : void
      {
         var _loc3_:§;#_§ = null;
         var _loc4_:int = 0;
         var _loc6_:String = null;
         this.§&#S§ = param2;
         this.§9"j§ = param1;
         _loc3_ = §<$c§.§ !=§(this.§9"j§.upgradeId);
         _loc4_ = §1!S§.§[!r§(_loc3_.getId());
         var _loc5_:§;#_§ = §<$c§.§ !=§(_loc4_);
         this.backBtn.setVisible(_loc5_.isComplex() || _loc5_.getInfinite());
         this.helpPanel.update(_loc3_);
         this.§<$F§();
         this.§5$l§();
         this.§-#?§.§]$o§(this.backBtn.isVisible() ? _loc3_ : _loc5_);
         this.§-#?§.setCount(this.backBtn.isVisible() ? 0 : this.§9"j§.count);
         if(!this.backBtn.isVisible() && this.§9"j§.§,X§() > §@&&§.getProfile().getLevel())
         {
            _loc6_ = §0%§.format(§0$N§.ABILITY_LEVEL_REQUIREMENT,{"level":"\n" + this.§9"j§.§,X§()});
            this.§-#?§.§7#t§(_loc6_,§;#L§.§<&0§);
            this.§8"M§.setDisabled(true);
            this.§45§.setDisabled(true);
         }
         else
         {
            this.§-#?§.§7#t§("");
         }
      }
      
      private function §5$l§() : void
      {
         var _loc2_:§`%C§ = null;
         var _loc3_:§`%C§ = null;
         var _loc4_:Vector.<§-$6§> = null;
         var _loc5_:§6#Q§ = null;
         var _loc6_:uint = 0;
         var _loc7_:§`%C§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:§-$6§ = null;
         var _loc10_:§&!e§ = null;
         var _loc11_:uint = 0;
         var _loc12_:uint = 0;
         var _loc13_:String = null;
         var _loc14_:Number = NaN;
         var _loc15_:int = 0;
         var _loc1_:Boolean = true;
         for each(_loc2_ in this.§!%z§)
         {
            this.craftPanel["reagentItemMC"].removeChild(_loc2_.getContainer());
         }
         this.§!%z§.length = 0;
         _loc4_ = this.§9"j§.reagents;
         _loc5_ = §@&&§.getProfile().§2!>§();
         if(_loc4_)
         {
            _loc6_ = 0;
            while(_loc6_ < _loc4_.length)
            {
               _loc9_ = _loc4_[_loc6_];
               _loc10_ = §1@§.§`$M§(_loc9_.id);
               _loc11_ = uint(_loc5_.§ %n§(_loc9_.id));
               _loc12_ = _loc9_.quantity * §`"k§.§@!?§;
               if(!(!this.§&#S§ && _loc12_ == 0))
               {
                  _loc3_ = new §`%C§(§6#A§.§!&6§(§+"'§.§'"R§),_loc10_);
                  _loc3_.§>$;§(_loc10_.§7%z§());
                  if(this.§&#S§)
                  {
                     _loc14_ = §-q§.§5&H§(_loc11_,_loc9_.quantity);
                     if(_loc14_ < 50)
                     {
                        _loc13_ = "#CB2A21";
                     }
                     else if(_loc14_ >= 50 && _loc14_ < 100)
                     {
                        _loc13_ = "#ff9900";
                     }
                     else if(_loc14_ >= 100)
                     {
                        _loc13_ = "#4F9829";
                     }
                     _loc3_.§&"&§(§2"e§.§#"I§(_loc11_.toString(),_loc13_) + §2"e§.§#"I§("/" + _loc4_[_loc6_].quantity,"#796553"));
                  }
                  else
                  {
                     _loc3_.§&"&§(§2"e§.§#"I§(_loc12_.toString(),"#000000"));
                  }
                  _loc3_.x = (_loc3_.width + 6) * _loc6_;
                  this.craftPanel["reagentItemMC"].addChild(_loc3_.getContainer());
                  this.§!%z§.push(_loc3_);
                  if(_loc11_ < _loc9_.quantity)
                  {
                     _loc1_ = false;
                  }
               }
               _loc6_++;
            }
            _loc7_ = this.§!%z§[this.§!%z§.length - 1];
            _loc8_ = (this.craftPanel["reagentItemMC"].width - _loc7_.x - _loc7_.width) / 2;
            for each(_loc3_ in this.§!%z§)
            {
               _loc3_.x += _loc8_;
            }
         }
         if(this.§&#S§)
         {
            this.§?%W§ = 0;
            if(_loc1_)
            {
               this.§^"G§(false,false,false,§@&&§.isMe());
               this.§45§.x = this.craftPanel["reagentItemMC"].x + 94;
            }
            else
            {
               for each(_loc9_ in _loc4_)
               {
                  _loc15_ = _loc5_.§ %n§(_loc9_.id) - _loc9_.quantity;
                  if(_loc15_ < 0)
                  {
                     this.§?%W§ += Math.abs(_loc15_) * §1@§.§`$M§(_loc9_.id).§4$n§();
                  }
               }
               this.§?%W§ = Math.ceil(this.§?%W§ / 100);
               this.§8"M§.setText("" + this.§?%W§,§"-§.§6"j§,"count");
               this.§8"M§.x = this.craftPanel["reagentItemMC"].x + 50;
               this.§^"G§(false,§@&&§.isMe(),true,false);
            }
         }
         else
         {
            this.§^"G§(true,false,false,false);
         }
      }
      
      private function §^"G§(param1:Boolean, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         this.downgradeBtn.setVisible(param1);
         this.§8"M§.setVisible(param2);
         this.§45§.setDisabled(param3);
         this.§45§.setVisible(param4);
      }
      
      private function §!![§(param1:MouseEvent) : void
      {
         dispatchEvent(new Event(Event.CLOSE));
      }
      
      private function §>#B§() : void
      {
         this.§45§.addEventListener(MouseEvent.CLICK,this.§[#h§);
         this.§8"M§.addEventListener(MouseEvent.CLICK,this.§[#h§);
         this.downgradeBtn.addEventListener(MouseEvent.CLICK,this.§1$q§);
      }
   }
}


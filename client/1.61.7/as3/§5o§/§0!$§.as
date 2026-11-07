package §5o§
{
   import § !8§.§`!d§;
   import §!!i§.§6"@§;
   import §!!i§.§@&&§;
   import §!$D§.*;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§0%9§;
   import §#"V§.§?%>§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,!f§.*;
   import §-%B§.*;
   import §-@§.*;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §2!-§.DamageEvent;
   import §2"L§.*;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §2B§.§#&E§;
   import §2B§.§8"n§;
   import §3"_§.*;
   import §3#a§.§-#M§;
   import §4!x§.§@& §;
   import §4#2§.§^S§;
   import §4#`§.*;
   import §4f§.§-&§;
   import §5!9§.§'$C§;
   import §5"J§.*;
   import §5#`§.*;
   import §6",§.§[%w§;
   import §65§.§`"C§;
   import §7!B§.§6#I§;
   import §7"Q§.*;
   import §7$t§.§2"y§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#<§.*;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §;#O§.§+%7§;
   import §;$8§.§6"E§;
   import §<$2§.§<%>§;
   import §<%E§.§6$=§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §="z§.§<$t§;
   import §=#g§.§!"X§;
   import §=&!§.§<$Z§;
   import §?$7§.§+#N§;
   import §?$7§.§6&'§;
   import §?$K§.§3#j§;
   import §?$L§.§ "N§;
   import §?$L§.§0"-§;
   import §?>§.§0!7§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@$§.§6$[§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`"x§.§[a§;
   import §`%&§.§5$1§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.StageDisplayState;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.SelectStuff;
   import ru.pragmatix.wormix.messages.server.SelectStuffResult;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.SelectStuffStructure;
   import ru.pragmatix.wormix.messages.structures.ShopItemStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §0!$§ extends §@& § implements §6"@§
   {
      
      public static const §19§:String = "Armory";
      
      private const §"%C§:String = "armory_room";
      
      private var assemblingMenu:§'$C§;
      
      private var profile:UserProfile;
      
      private var §7#S§:Number;
      
      private var defaultBtn:§?%>§;
      
      private var clearBtn:§?%>§;
      
      private var fitBtn:§?%>§;
      
      private var copyBtn:§?%>§;
      
      private var pasteBtn:§?%>§;
      
      private var helpBtn:§?%>§;
      
      private var §+"B§:Vector.<§?%>§>;
      
      private var §`%$§:§#$R§;
      
      private var §0"6§:§#$R§;
      
      public function §0!$§()
      {
         id = §19§;
         super(null);
      }
      
      private static function §6!;§(param1:Event) : void
      {
         var _loc2_:ArmoryHelpWindow = new ArmoryHelpWindow();
         _loc2_.show();
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         var _loc2_:String = null;
         super.§@"o§(param1);
         this.assemblingMenu = new §'$C§(§'$a§("assemblingMenu"));
         this.§7#S§ = param1.x;
         §8"%§.§#m§.§&#t§(param1,§!"X§.§4&;§);
         this.helpBtn = §!&5§.§7#[§(getChildByName("helpBtn"));
         this.helpBtn.setQtip(§<"G§.§%! §("HELP_BTN_QTIP"));
         this.helpBtn.§[!u§(§6!;§);
         this.defaultBtn = §!&5§.§7#[§(getChildByName("defaultBtn"));
         this.defaultBtn.setQtip(§<"G§.§%! §("BACKPACK_SCHEME_DEFAULT_BTN"));
         this.defaultBtn.§[!u§(this.§1!d§);
         this.fitBtn = §!&5§.§7#[§(getChildByName("fitBtn"));
         this.fitBtn.setQtip(§<"G§.§%! §("FIT_BACKPACK_BTN"));
         this.fitBtn.§[!u§(this.§?";§);
         this.copyBtn = §!&5§.§7#[§(getChildByName("copyBtn"));
         this.copyBtn.setQtip(§<"G§.§%! §("COPY_BACKPACK_BTN"));
         this.copyBtn.§[!u§(this.§-%e§);
         this.pasteBtn = §!&5§.§7#[§(getChildByName("pasteBtn"));
         this.pasteBtn.setQtip(§<"G§.§%! §("PASTE_BACKPACK_BTN"));
         this.pasteBtn.§[!u§(this.§#%,§);
         this.clearBtn = §!&5§.§7#[§(getChildByName("clearBtn"));
         this.clearBtn.setQtip(§<"G§.§%! §("CLEAR_BACKPACK_BTN"));
         this.clearBtn.§[!u§(this.§,"L§);
         this.§+"B§ = new Vector.<§?%>§>();
         var _loc3_:int = 0;
         while(_loc3_ < §#$R§.§"$S§)
         {
            this.§+"B§[_loc3_] = §!&5§.§7#[§(getChildByName("layout" + _loc3_));
            this.§+"B§[_loc3_].§[!u§(this.§<%4§);
            _loc2_ = §0%§.format(§0$N§.BATTLE_BACKPACK_LAYOUT,{"count":_loc3_ + 1}) + ".\n" + §0$N§.BACKPACK_CAPACITY + "\n";
            if(_loc3_ < 4)
            {
               §4"0§.§2!,§(this.§+"B§[_loc3_],"text",String(_loc3_ + 1),"",§"-§.§6"j§);
               if(_loc3_ == 0 || _loc3_ == 1)
               {
                  _loc2_ += §0%§.format(§0$N§.FOR_WAGER,{"name":§0$N§.PVP_DUEL_CARD}) + " ";
               }
               switch(_loc3_)
               {
                  case 0:
                     _loc2_ += §0$N§.WITH_1_COUNT_UNIT;
                     break;
                  case 1:
                     _loc2_ += §0$N§.WITH_2_COUNT_UNIT;
                     break;
                  case 2:
                     _loc2_ += §0%§.format(§0$N§.FOR_WAGER,{"name":§0$N§.PVP_DUEL_CARD + " " + §0$N§.WITH_3_COUNT_UNIT});
                     _loc2_ += "\n" + §0%§.format(§0$N§.FOR_WAGER,{"name":§0$N§.PVP_SURVIVAL_CARD});
                     break;
                  case 3:
                     _loc2_ += §0%§.format(§0$N§.FOR_WAGER,{"name":§0$N§.PVP_DUEL_CARD + " " + §0$N§.WITH_4_COUNT_UNIT});
                     _loc2_ += "\n" + §0%§.format(§0$N§.FOR_WAGER,{"name":§0$N§.PVP_TWO_VS_TWO_CARD});
               }
            }
            else
            {
               switch(_loc3_)
               {
                  case 4:
                     _loc2_ += §0$N§.FOR_MISSIONS;
                     break;
                  case 5:
                     _loc2_ += §0$N§.FOR_BOSSES;
                     break;
                  case 6:
                     _loc2_ += §0$N§.FOR_SUPERBOSSES;
               }
               _loc2_ += " " + §0$N§.WITH_ANY_COUNT_UNITS;
            }
            this.§+"B§[_loc3_].setQtip(_loc2_,null,§+"'§.§9%>§);
            _loc3_++;
         }
      }
      
      private function §<%4§(param1:MouseEvent) : void
      {
         var _loc2_:§0%9§ = null;
         this.§#$"§();
         _loc2_ = §0%9§(param1.currentTarget);
         var _loc3_:int = this.§+"B§.indexOf(_loc2_);
         this.update(_loc3_);
         this.save();
      }
      
      override public function activate() : void
      {
         super.activate();
         this.update(§@&&§.getProfile().§3%^§().§;#@§());
      }
      
      private function update(param1:int) : void
      {
         var _loc3_:§?%>§ = null;
         var _loc2_:§'"-§ = §@&&§.getProfile().§3%^§();
         _loc2_.§-&,§(param1);
         this.assemblingMenu.§@%U§(param1);
         for each(_loc3_ in this.§+"B§)
         {
            _loc3_.setDisabled(this.§+"B§.indexOf(_loc3_) == param1);
         }
         this.assemblingMenu.update();
      }
      
      private function §#$"§(param1:Boolean = true) : void
      {
         var _loc3_:String = null;
         var _loc4_:§#$R§ = null;
         var _loc2_:§'"-§ = §@&&§.getProfile().§3%^§();
         if(Boolean(_loc2_.§ %7§()) && _loc2_.§ %7§().§="h§() == 0)
         {
            _loc3_ = "The weapon backpack layout can\'t be empty!";
            if(Boolean(this.§`%$§) && this.§`%$§.§="h§() > 0)
            {
               _loc2_.§%!§(this.§`%$§.clone());
               this.§`%$§ = null;
               if(param1)
               {
                  §,#W§.§6!P§(§0"-§.TITLE_ATTENTION,_loc3_ + "\nSo, it\'s rollback to previous state!");
               }
            }
            else
            {
               _loc4_ = §@$l§.§2#p§(§@&&§.getProfile().§3%^§());
               _loc2_.§%!§(_loc4_);
               if(param1)
               {
                  §,#W§.§6!P§(§0"-§.TITLE_ATTENTION,_loc3_ + "\nSo, it\'s to default!");
               }
            }
         }
      }
      
      private function §1!d§(param1:Event = null) : void
      {
         this.§-%&§();
      }
      
      private function §-%&§() : void
      {
         var _loc1_:§#$R§ = §@$l§.§2#p§(§@&&§.getProfile().§3%^§());
         §@&&§.getProfile().§3%^§().§%!§(_loc1_);
         this.assemblingMenu.update();
         this.save();
      }
      
      private function §?";§(param1:Event) : void
      {
         var _loc2_:§#$R§ = §@&&§.getProfile().§3%^§().§ %7§();
         _loc2_ = §@$l§.§;$=§(§@&&§.getProfile().§3%^§(),_loc2_.§^$o§());
         §@&&§.getProfile().§3%^§().§%!§(_loc2_);
         this.assemblingMenu.update();
         this.save();
      }
      
      private function §,"L§(param1:Event) : void
      {
         var _loc2_:§#$R§ = §@&&§.getProfile().§3%^§().§ %7§();
         this.§`%$§ = _loc2_.clone();
         §@&&§.getProfile().§3%^§().§%!§(new §#$R§([]));
         this.assemblingMenu.update();
      }
      
      private function §-%e§(param1:Event) : void
      {
         var _loc2_:§#$R§ = §@&&§.getProfile().§3%^§().§^"x§(§@&&§.getProfile().§3%^§().§;#@§());
         this.§0"6§ = _loc2_.clone();
      }
      
      private function §#%,§(param1:Event) : void
      {
         if(this.§0"6§)
         {
            §@&&§.getProfile().§3%^§().§%!§(this.§0"6§.clone());
            this.assemblingMenu.update();
            this.save();
         }
      }
      
      public function initFromProfile(param1:UserProfile) : void
      {
         var _loc2_:int = 0;
         var _loc4_:§'"-§ = null;
         var _loc5_:int = 0;
         _loc2_ = param1.§7$F§().length - 1;
         var _loc3_:Boolean = !this.profile || this.profile.getId() != param1.getId() || this.assemblingMenu.§!&@§() != _loc2_;
         this.profile = param1;
         this.assemblingMenu.§3%,§(param1);
         this.assemblingMenu.update();
         if(§4! §.isMe(param1))
         {
            _loc4_ = param1.§3%^§();
            _loc5_ = _loc4_.§;#@§() >= 0 && _loc4_.§;#@§() < §#$R§.§"$S§ ? _loc4_.§;#@§() : 0;
            _loc4_.§-&,§(_loc5_);
            this.assemblingMenu.§,&@§();
            this.defaultBtn.setDisabled(false);
            this.clearBtn.setDisabled(false);
            this.helpBtn.setDisabled(false);
            this.fitBtn.setDisabled(false);
            this.copyBtn.setDisabled(false);
            this.pasteBtn.setDisabled(false);
            this.§+"B§[_loc5_].setDisabled(true);
         }
         else
         {
            this.assemblingMenu.§7%D§();
            this.defaultBtn.setDisabled(true);
            this.clearBtn.setDisabled(true);
            this.helpBtn.setDisabled(true);
            this.fitBtn.setDisabled(true);
            this.copyBtn.setDisabled(true);
            this.pasteBtn.setDisabled(true);
         }
      }
      
      override public function deactivate() : void
      {
         this.§#$"§();
         super.deactivate();
         this.assemblingMenu.§7%D§();
         container.x = this.§7#S§;
      }
      
      public function save() : void
      {
         if(§4! §.isMe(this.profile))
         {
            §^S§.§%#W§();
         }
      }
      
      public function §2D§() : String
      {
         return this.§"%C§;
      }
      
      public function §`V§() : String
      {
         return §+"'§.§;$t§;
      }
      
      public function getId() : String
      {
         return §19§;
      }
   }
}


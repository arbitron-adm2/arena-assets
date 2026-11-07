package ru.pragmatix.wormix.gui.house.craft
{
   import § !8§.§`!d§;
   import § %?§.§;!T§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§2v§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#",§.ReturnFriendRequestMenu;
   import §#",§.ReturnFriendRewardMenu;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%# §.*;
   import §%#u§.§8"F§;
   import §%#u§.§9"g§;
   import §%#u§.§@"c§;
   import §%$n§.*;
   import §%E§.§5%C§;
   import §%E§.§<#l§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&#E§.§>"4§;
   import §&%X§.*;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§+m§;
   import §+%S§.§="_§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §-8§.*;
   import §-@§.*;
   import §0!§.§6#z§;
   import §0!§.§8$Y§;
   import §0!§.§[k§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §1#p§.Team;
   import §2!-§.§'5§;
   import §2!-§.DamageEvent;
   import §2!-§.HpChangeEvent;
   import §2"L§.§,'§;
   import §2"L§.§^$y§;
   import §2#H§.§+N§;
   import §2#i§.§+%z§;
   import §2#s§.*;
   import §2#x§.*;
   import §2o§.§4§;
   import §2o§.§]#@§;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §3"_§.*;
   import §3#T§.§5!M§;
   import §3#a§.§-#M§;
   import §4!!§.§76§;
   import §4#2§.*;
   import §4$b§.§2m§;
   import §4'§.§^"p§;
   import §4'§.§`"q§;
   import §4u§.§!!o§;
   import §5#`§.§7%g§;
   import §5$]§.§3& §;
   import §6"'§.§&"3§;
   import §6"'§.§9$Z§;
   import §6",§.§[%w§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#a§.ShopMenu;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §8$Z§.§9!&§;
   import §9%W§.§!"G§;
   import §9%W§.§&!P§;
   import §<!W§.§#&#§;
   import §<!W§.§9%,§;
   import §<!W§.§;#A§;
   import §<"L§.*;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%E§.§6$=§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=!p§.§7#E§;
   import §=&!§.*;
   import §>!_§.§@"N§;
   import §>%S§.§^!V§;
   import §?"j§.§]!<§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$L§.§&$9§;
   import §?>§.§]!V§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§0%a§;
   import §@!i§.§1""§;
   import §@!i§.§5%8§;
   import §@!i§.§<!9§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@"s§.§]!>§;
   import §@%I§.§2R§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[!`§.§!$^§;
   import §[%'§.§<"G§;
   import §]7§.§0'§;
   import §]^§.§4&+§;
   import §^!"§.§0^§;
   import §^!]§.WeaponShootEvent;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`#x§.§"$r§;
   import §`%&§.§5$1§;
   import com.adobe.images.PNGEncoder;
   import com.greensock.*;
   import com.greensock.loading.*;
   import com.greensock.loading.core.LoaderCore;
   import com.greensock.plugins.*;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.globalization.DateTimeFormatter;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import org.gestouch.core.*;
   import ru.inspirit.net.MultipartURLLoader;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.flox.gui.controls.§;"L§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.game.rules.§;!f§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§&m§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.response.ClanSummaryResponse;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.clans.response.edit.IncreaseLevelClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.GetMercenariesReward;
   import ru.pragmatix.wormix.messages.client.SetMercenariesTeamMembers;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.server.PvpStartTurn;
   import ru.pragmatix.wormix.serialization.ServerCommands;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.AdrenalineInjection;
   
   public class §&#,§ extends EventDispatcher
   {
      
      private static const §7%w§:uint = 7;
      
      private static const §'"u§:String = "modeButtons";
      
      private var cells:Vector.<§"!g§>;
      
      private var §@"j§:Array = [];
      
      private var equipList:Array = [];
      
      private var §<#k§:Array = [];
      
      private var §]!m§:§8"@§;
      
      private var §+!a§:§8"@§;
      
      private var §=!4§:§8"@§;
      
      private var mode:String = "upgradeMode";
      
      private var §1Y§:int;
      
      private var §6"#§:int;
      
      public function §&#,§(param1:MovieClip, param2:MovieClip)
      {
         super();
         var _loc3_:SimpleButton = param1["prevBtn"];
         _loc3_.addEventListener(MouseEvent.CLICK,this.§]!q§);
         var _loc4_:SimpleButton = param1["nextBtn"];
         _loc4_.addEventListener(MouseEvent.CLICK,this.§0!k§);
         this.§]!m§ = §!&5§.§;#z§(param2.getChildByName("weaponBtn"),§'"u§);
         this.§]!m§.§[!u§(this.§6"W§);
         this.§]!m§.setPressed(true);
         this.§]!m§.setText(§<"G§.§%! §("WEAPON_CRAFT_BTN"),§"-§.§+$m§);
         this.§+!a§ = §!&5§.§;#z§(param2.getChildByName("itemsBtn"),§'"u§);
         if(!§4! §.isMe(§@&&§.getProfile()))
         {
            this.§+!a§.setDisabled(true);
         }
         else
         {
            this.§+!a§.§[!u§(this.§'$r§);
         }
         this.§+!a§.setText(§<"G§.§%! §("EQUIP_CRAFT_BTN"),§"-§.§+$m§);
         this.§=!4§ = §!&5§.§;#z§(param2.getChildByName("chestReagents"),§'"u§);
         this.§=!4§.§[!u§(this.§>!N§);
         this.§=!4§.setText(§<"G§.§%! §("REAGENTS_CRAFT_BTN"),§"-§.§+$m§);
         this.cells = new Vector.<§"!g§>();
         var _loc5_:int = 0;
         while(_loc5_ < §7%w§)
         {
            this.cells[_loc5_] = new §"!g§(param1["cells"]["cell" + _loc5_]);
            this.cells[_loc5_].§1&!§(1);
            this.cells[_loc5_].getContainer().addEventListener(MouseEvent.CLICK,this.§]$j§);
            _loc5_++;
         }
         this.§1Y§ = 0;
         this.§6"#§ = 0;
      }
      
      private static function §!"j§(param1:§"!g§, param2:§&!e§) : void
      {
         var _loc3_:§^"p§ = null;
         var _loc5_:§;#_§ = null;
         var _loc4_:§&"3§ = §1@§.§&%u§(param2.getId());
         if(_loc4_)
         {
            if(§1!S§.§6!a§(_loc4_))
            {
               param1.§[#"§(true,§^"p§.§9%t§);
            }
            else if(§1!S§.§+$5§(_loc4_))
            {
               param1.§[#"§(true,§^"p§.POWERED);
            }
            else
            {
               _loc3_ = §1!S§.§1"h§(_loc4_);
            }
         }
         _loc5_ = §;#_§(param2);
         var _loc6_:§#$s§ = §1!S§.§!$Q§(param2.getId());
         var _loc7_:BackpackItem = §1!S§.§@!&§(param2.getId(),§@&&§.getProfile().§3%^§());
         var _loc8_:Boolean = _loc5_.getInfinite() ? (_loc7_ ? !_loc7_.§8"I§() : true) : (Boolean(_loc6_) && Boolean(_loc6_.count) && _loc6_.§,X§() > §@&&§.getProfile().getLevel() ? true : false);
         if(!_loc4_ && Boolean(_loc5_.§##m§()))
         {
            _loc3_ = _loc5_.§##m§();
         }
         param1.§"e§(_loc8_);
         if(_loc3_)
         {
            param1.§[#"§(true,_loc3_);
         }
      }
      
      private static function § %i§(param1:§"!g§, param2:§&!e§) : void
      {
         var _loc3_:§!!o§ = new §!!o§(param2.§7%z§());
         param1.§<$U§(_loc3_);
         if(param2.§##m§() != §^"p§.NONE)
         {
            param1.§[#"§(true,param2.§##m§());
         }
      }
      
      public function §-#4§(param1:Array) : void
      {
         this.§@"j§ = param1;
      }
      
      public function §-%S§(param1:Array) : void
      {
         this.equipList = param1;
      }
      
      public function init() : void
      {
         this.§<#k§ = this.§@"j§;
      }
      
      public function disableCraft(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!m§.setPressed(true);
            this.§+!a§.removeHandler(this.§'$r§);
         }
         else
         {
            this.§+!a§.§[!u§(this.§'$r§);
         }
         this.§+!a§.setDisabled(param1);
      }
      
      private function §6"W§(param1:Event) : void
      {
         this.§'%§();
      }
      
      public function §'%§() : void
      {
         this.§<#k§ = this.§@"j§;
         dispatchEvent(new §;!T§(§;!T§.§;!g§));
         this.§]!m§.setPressed(true);
         this.update();
      }
      
      public function §?$0§() : void
      {
         this.§<#k§ = this.equipList;
         this.§+!a§.setPressed(true);
         dispatchEvent(new §;!T§(§;!T§.§8"R§));
         this.update();
      }
      
      public function §,!4§() : void
      {
         this.§=!4§.setPressed(true);
         this.§>!N§(null);
      }
      
      private function §>!N§(param1:MouseEvent) : void
      {
         dispatchEvent(new §;!T§(§;!T§.§`%y§));
      }
      
      private function §'$r§(param1:Event) : void
      {
         this.§?$0§();
      }
      
      private function §"!L§(param1:int) : void
      {
         var _loc2_:int = 0;
         while(param1 != 0)
         {
            _loc2_ = §^$y§.sign(param1);
            this.§2#m§(this.§8Z§() + _loc2_);
            if(this.§8Z§() < 0)
            {
               this.§2#m§(this.§<#k§.length - 1);
            }
            else if(this.§8Z§() > this.§<#k§.length - 1)
            {
               this.§2#m§(0);
            }
            param1 -= _loc2_;
         }
         §@%;§.play(§`!v§.§1M§);
         this.update();
      }
      
      private function §]!q§(param1:MouseEvent) : void
      {
         this.§"!L§(-1);
      }
      
      private function §0!k§(param1:MouseEvent) : void
      {
         this.§"!L§(1);
      }
      
      private function §]$j§(param1:MouseEvent) : void
      {
         var _loc2_:int = Math.floor(§7%w§ / 2);
         var _loc3_:int = 0;
         while(_loc3_ < this.cells.length)
         {
            if(this.cells[_loc3_].getContainer() == param1.currentTarget)
            {
               break;
            }
            _loc3_++;
         }
         if(_loc3_ != _loc2_)
         {
            this.§"!L§(_loc3_ - _loc2_);
         }
      }
      
      public function update() : void
      {
         var _loc2_:int = 0;
         var _loc3_:§&!e§ = null;
         var _loc4_:§"!g§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < §7%w§)
         {
            _loc2_ = this.§8Z§() + _loc1_;
            if(_loc2_ >= this.§<#k§.length)
            {
               _loc2_ %= this.§<#k§.length;
            }
            _loc3_ = this.§<#k§[_loc2_];
            _loc4_ = this.cells[_loc1_];
            _loc4_.§[#"§(false);
            _loc4_.§"e§(false);
            _loc4_.setItem(_loc3_);
            if(_loc1_ == Math.floor(§7%w§ / 2))
            {
               dispatchEvent(new SelectObjectEvent(_loc3_.getId()));
            }
            if(this.§]!m§.isPressed())
            {
               §!"j§(_loc4_,_loc3_);
            }
            else if(this.§+!a§.isPressed())
            {
               § %i§(_loc4_,_loc3_);
            }
            _loc1_++;
         }
      }
      
      public function §#"#§() : §8"@§
      {
         return this.§=!4§;
      }
      
      private function §8Z§() : int
      {
         if(this.mode == §=%G§.§8"R§)
         {
            return this.§6"#§;
         }
         if(this.mode == §=%G§.§;!g§)
         {
            return this.§1Y§;
         }
         return 0;
      }
      
      private function §2#m§(param1:int) : void
      {
         if(this.mode == §=%G§.§8"R§)
         {
            this.§6"#§ = param1;
         }
         else if(this.mode == §=%G§.§;!g§)
         {
            this.§1Y§ = param1;
         }
      }
      
      public function §;"?§() : String
      {
         return this.mode;
      }
      
      public function §"#a§(param1:String) : void
      {
         this.mode = param1;
      }
      
      public function §6#4§() : §&!e§
      {
         var _loc1_:int = this.§8Z§() + Math.floor(§7%w§ / 2);
         if(this.§]!m§.isPressed())
         {
            return this.§@"j§[_loc1_];
         }
         if(this.§+!a§.isPressed())
         {
            return this.equipList[_loc1_];
         }
         return null;
      }
   }
}


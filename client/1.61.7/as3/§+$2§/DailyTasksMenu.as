package §+$2§
{
   import § #m§.§[&H§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.§ G§;
   import §"%H§.§`"w§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#%!§.§%&F§;
   import §#%!§.§[N§;
   import §#%!§.§^%c§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#h§.§&N§;
   import §&#h§.§-"F§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+5§.§8$W§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-@§.*;
   import §0!§.§9"u§;
   import §0%[§.§0%§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2!-§.NewUnitEvent;
   import §2"L§.§,'§;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §2o§.§]#@§;
   import §3#T§.§;#Q§;
   import §3#T§.Meteor;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4!x§.§@& §;
   import §4'§.§`"q§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5!b§.§'!O§;
   import §5!b§.§0&%§;
   import §5!b§.§]!4§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7"Q§.§0&'§;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §8#<§.§!#^§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §8$V§.§`"c§;
   import §9%W§.§!7§;
   import §9%k§.*;
   import §9&+§.§6&=§;
   import §<$q§.§,%3§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §="z§.§<$t§;
   import §=$#§.§ b§;
   import §=$#§.§1!$§;
   import §>%S§.§^!V§;
   import §?#g§.§&"P§;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@$§.§+%>§;
   import §@<§.§+%]§;
   import §^"<§.§?"h§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`"x§.§-#z§;
   import §`"x§.SearchFriendMenu;
   import §`#x§.§"$r§;
   import §`%&§.§5$1§;
   import §`%&§.§8U§;
   import §`%&§.§@&,§;
   import §`%&§.§`§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import com.inreflected.ui.touchScroll.VelocityCalculator;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.*;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.clans.response.edit.IncreaseLevelClanResponse;
   import ru.pragmatix.wormix.messages.client.GetReagentsForProfile;
   import ru.pragmatix.wormix.messages.client.PvpChatMessage;
   import ru.pragmatix.wormix.messages.client.SetHotkeys;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class DailyTasksMenu extends §0&'§ implements §^c§
   {
      
      private var scrollPane:§>S§;
      
      private var §[$C§:int;
      
      private var §!#R§:Vector.<MovieClip>;
      
      private var content:DisplayObjectContainer;
      
      private var §6h§:Array;
      
      private var §,#^§:int;
      
      private var §5$J§:int;
      
      private var window:§@& §;
      
      public function DailyTasksMenu(param1:MovieClip, param2:§@& §)
      {
         super(param1);
         this.window = param2;
         §&$9§.§>&F§(§'%s§("loading.text"),§"-§.§+$m§,§0$N§.LOADING);
         this.§!#R§ = §3!3§.§#"R§(§'$a§("loading.loading"));
         container.scrollRect = new Rectangle(0,0,§ "N§.stageWidth,§ "N§.stageHeight);
         this.§5$,§();
      }
      
      private function §5$,§() : void
      {
         if(!§8"%§.§8!E§.rec)
         {
            return;
         }
         var _loc1_:Array = §8"%§.§8!E§.rec.§4$7§();
         setData(_loc1_.concat());
         this.§[$C§ = _loc1_.length;
         this.§="3§();
         this.scrollPane.update();
         this.activate();
      }
      
      override protected function §&%p§() : DisplayObjectContainer
      {
         this.scrollPane = new §>S§(getChildByName("scrollPane") as MovieClip);
         this.scrollPane.§["P§ = false;
         var _loc1_:Sprite = new Sprite();
         var _loc2_:DisplayObject = this.scrollPane.getChildByName("content");
         DisplayObjectContainer(_loc2_).addChild(_loc1_);
         return _loc1_;
      }
      
      private function §="3§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§[$C§)
         {
            this.§,!P§(_loc1_ > 0);
            _loc1_++;
         }
         §<#X§();
      }
      
      private function §,!P§(param1:Boolean) : void
      {
         var _loc2_:MovieClip = §6#A§.§!&6§(§+"'§.§^$2§);
         §4#B§.addChild(_loc2_);
         if(param1)
         {
            §`o§.§1$T§(_loc2_,§4#B§,5);
         }
      }
      
      override protected function §3u§(param1:§0$L§, param2:Object, param3:uint) : void
      {
         if(DailyTaskItem(param1).taskRec != null)
         {
            return;
         }
         var _loc4_:§-"F§ = param2 ? §-"F§(param2) : store.§[5§()[param1.getCellIndex()];
         DailyTaskItem(param1).update(_loc4_,false);
         super.§3u§(param1,param2,param3);
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         var _loc2_:DailyTaskItem = this.§%"v§(param1);
         §4"0§.§^%T§(_loc2_,5);
         return _loc2_;
      }
      
      private function §%"v§(param1:DisplayObject = null) : DailyTaskItem
      {
         return new DailyTaskItem(param1 as MovieClip,this);
      }
      
      public function §>$V§() : void
      {
         this.§&#F§(true);
         this.§-!o§();
         this.§&#F§(false);
      }
      
      private function §-!o§() : void
      {
         var _loc1_:§&N§ = null;
         var _loc9_:DailyTaskItem = null;
         var _loc10_:§-"F§ = null;
         _loc1_ = §8"%§.§8!E§.rec;
         var _loc2_:Boolean = this.§,#^§ == 0 && this.§,#^§ == 0;
         var _loc3_:Boolean = this.§,#^§ > 0 && this.§,#^§ != _loc1_.day;
         var _loc4_:Boolean = this.§5$J§ > 0 && this.§5$J§ != _loc1_.start;
         var _loc5_:Array = _loc1_.§4$7§();
         var _loc6_:Vector.<§-"F§> = new Vector.<§-"F§>(0);
         if(_loc3_ || _loc4_)
         {
            this.scrollPane.§!$§.setValue(0);
         }
         var _loc7_:uint = cells.length;
         if(_loc7_ == 0 && _loc5_.length != 0)
         {
            this.§5$,§();
            return;
         }
         setData(_loc5_.concat());
         var _loc8_:* = int(cells.length - 1);
         while(_loc8_ > -1)
         {
            _loc9_ = cells[_loc8_];
            if(_loc2_ || _loc3_ || _loc4_)
            {
               _loc9_.update(_loc5_.shift(),false);
            }
            else
            {
               _loc10_ = _loc1_.§3$c§(_loc9_.taskRec.id);
               _loc6_.push(_loc10_);
               _loc9_.update(_loc10_);
            }
            _loc8_--;
         }
         this.§,#^§ = _loc1_.day;
         this.§5$J§ = _loc1_.start;
      }
      
      override public function §&#F§(param1:Boolean) : void
      {
         super.§&#F§(param1);
         this.scrollPane.setVisible(!param1);
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §<"b§ = false;
      }
      
      public function playAnimations() : void
      {
         if(isVisible())
         {
            §3!3§.§<%W§(this.§!#R§);
         }
      }
      
      public function stopAnimations() : void
      {
         §3!3§.§>!j§(this.§!#R§);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.scrollPane.§]%E§();
      }
      
      override public function deactivate() : void
      {
         this.scrollPane.§@%i§();
         super.deactivate();
      }
      
      public function §4&E§() : void
      {
         var _loc2_:DailyTaskItem = null;
         var _loc1_:* = int(cells.length - 1);
         while(_loc1_ > -1)
         {
            _loc2_ = cells[_loc1_];
            cells.splice(_loc1_,1);
            _loc2_.destroy();
            if(§4#B§.contains(_loc2_.getContainer()))
            {
               §4#B§.removeChild(_loc2_.getContainer());
            }
            _loc1_--;
         }
         this.§[$C§ = 0;
         if(this.window.isShown())
         {
            this.scrollPane.§@%i§();
         }
         this.scrollPane.update();
         if(this.window.isShown())
         {
            this.scrollPane.§]%E§();
         }
         this.§6h§ = [];
         setData([]);
      }
   }
}


package §&"R§
{
   import § !8§.§9%+§;
   import § #9§.*;
   import § #m§.§;#^§;
   import § &5§.§%$O§;
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §!$D§.*;
   import §!L§.§+"'§;
   import §"%H§.§1! §;
   import §#"V§.§!&5§;
   import §#"V§.§0%9§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##j§.§9x§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.§9§;
   import §#$e§.§!a§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&"c§.§5$n§;
   import §&%X§.§<$M§;
   import §&&6§.§'%"§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'%!§.§;%q§;
   import §'%[§.§ i§;
   import §'%[§.§3%5§;
   import §'%[§.§4!C§;
   import §'%[§.§@"4§;
   import §'%[§.§]$5§;
   import §+$=§.*;
   import §+%S§.§ !!§;
   import §+%S§.§["4§;
   import §,"v§.§9%d§;
   import §-%B§.§-"o§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0%j§.§0$+§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §2#x§.§]s§;
   import §3"@§.§##L§;
   import §3"_§.§?#w§;
   import §4!K§.§4%E§;
   import §4!K§.§>#_§;
   import §4!K§.§^%A§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §6"'§.§9$Z§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7"Q§.§[! §;
   import §7$1§.§;#&§;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§^$E§;
   import §9%W§.§&!P§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §<"?§.*;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §?!E§.*;
   import §?#g§.*;
   import §?$7§.§+#N§;
   import §?$7§.§6J§;
   import §?$K§.§3#j§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?>§.§0!7§;
   import §?>§.§]!V§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§1""§;
   import §@!i§.§@$&§;
   import §@$§.*;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import config.achievements.BossAchieves;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.ColorTransform;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§""t§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§5%?§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.§3$B§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.gui.window.§9!Q§;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.messages.server.OpenChestResult;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.structures.AwardBackpackItemStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.serialization.structures.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §;!t§ extends §[! §
   {
      
      private var §8C§:UserProfile;
      
      private var §;i§:TeamRoom;
      
      private var §6"P§:§?%>§;
      
      private var §&%O§:int = 1;
      
      private var §^%K§:Class;
      
      private var items:Array = [];
      
      private var §&"`§:§&!e§;
      
      public function §;!t§(param1:DisplayObjectContainer, param2:TeamRoom, param3:Class)
      {
         super(param1);
         this.§;i§ = param2;
         this.§^%K§ = param3;
         this.§6"P§ = §!&5§.§7#[§(getChildByName("btnTakeOff"));
         var _loc4_:String = §0$N§.§%! §(param3 == §^$E§ ? "STRIP_ALL_HATS" : "STRIP_ALL_ARTS");
         this.§6"P§.setQtip(_loc4_,§;#^§.§[!K§,§+"'§.§3%y§);
         this.§6"P§.§[!u§(this.§&"l§);
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §,!n§ = false;
      }
      
      public function initFromProfile(param1:UserProfile) : void
      {
         var _loc2_:Boolean = !this.§8C§ || Boolean(this.§8C§) && !this.§8C§.equals(param1);
         this.§8C§ = param1;
         this.§>%_§();
         if(_loc2_)
         {
            this.§&%O§ = 1;
         }
         else
         {
            §%$S§(this.§&%O§);
         }
         this.§6"P§.setVisible(§4! §.isMe(this.§8C§));
      }
      
      private function §&"l§(param1:Event) : void
      {
         var teammateItems:Vector.<§0!7§> = null;
         var event:Event = param1;
         teammateItems = this.§;i§.§<!F§();
         §8"%§.§0$1§.§;"%§(this.§^%K§,teammateItems,function():void
         {
            var _loc1_:§3$B§ = null;
            for each(_loc1_ in teammateItems)
            {
               _loc1_.setItem(_loc1_.getItem());
            }
         });
         this.update();
      }
      
      override public function activate() : void
      {
         super.activate();
         this.setDisabled(§@&&§.isMe());
         this.§>%_§();
      }
      
      private function §>%_§() : void
      {
         var _loc2_:BackpackItem = null;
         var _loc1_:Array = this.§8C§.§,%o§().§,!V§();
         this.items = [];
         for each(_loc2_ in _loc1_)
         {
            if(_loc2_.getRecord() is this.§^%K§)
            {
               this.items[this.items.length] = _loc2_;
            }
         }
         setData(this.items);
         this.§&#w§();
      }
      
      override public function update() : void
      {
         super.update();
         this.§&#w§();
         this.§&"`§ = null;
      }
      
      private function §&#w§() : void
      {
         this.§1#`§();
         this.§!%K§();
         this.§6"P§.setDisabled(store.§>$6§() == 0 || this.§7!4§() == 0);
      }
      
      private function §1#`§() : void
      {
         var _loc2_:§`&7§ = null;
         var _loc3_:BackpackItem = null;
         var _loc1_:Vector.<§0!7§> = §3B§.§[s§(this.§;i§.§<!F§());
         for each(_loc2_ in cells)
         {
            _loc2_.setSelected(false);
            _loc3_ = _loc2_.getItem() as BackpackItem;
            if(_loc3_)
            {
               _loc2_.setSelected(§8"%§.§0$1§.§8>§(_loc3_,_loc1_));
            }
         }
      }
      
      private function §7!4§() : int
      {
         var _loc3_:BackpackItem = null;
         var _loc1_:Vector.<§0!7§> = §3B§.§[s§(this.§;i§.§<!F§());
         var _loc2_:int = 0;
         for each(_loc3_ in this.items)
         {
            if(§8"%§.§0$1§.§8>§(_loc3_,_loc1_))
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      private function §!%K§() : void
      {
         var _loc1_:§0!7§ = null;
         var _loc4_:§`&7§ = null;
         var _loc5_:BackpackItem = null;
         var _loc6_:§+%7§ = null;
         _loc1_ = this.§;i§.§#!_§();
         var _loc2_:Boolean = §4! §.isMe(this.§8C§);
         var _loc3_:Boolean = §8"%§.§0$1§.§1#k§(_loc1_);
         for each(_loc4_ in cells)
         {
            TweenLite.to(_loc4_.getContainer(),0,{"colorMatrixFilter":{
               "saturation":1,
               "brightness":1
            }});
            _loc4_.§;b§(_loc2_);
            if(_loc3_)
            {
               _loc5_ = _loc4_.getItem() as BackpackItem;
               _loc6_ = §4&A§.§'![§(_loc1_.getProfile().getId());
               if(Boolean(_loc5_) && _loc6_.§;%6§(_loc5_))
               {
                  _loc4_.§;b§(false);
                  TweenLite.to(_loc4_.getContainer(),0,{"colorMatrixFilter":{
                     "saturation":0,
                     "brightness":1.2
                  }});
               }
            }
         }
      }
      
      override protected function §0"f§(param1:MouseEvent) : void
      {
         super.§0"f§(param1);
         this.§&%O§ = store.§1"J§();
      }
      
      override protected function §"#[§(param1:MouseEvent) : void
      {
         super.§"#[§(param1);
         this.§&%O§ = store.§1"J§();
      }
      
      public function save(param1:Function) : void
      {
         var _loc3_:Vector.<§0!7§> = null;
         var _loc2_:Boolean = false;
         if(§4! §.isMe(this.§8C§))
         {
            _loc3_ = this.§;i§.§<!F§();
            _loc2_ = §8"%§.§0$1§.save(param1,_loc3_);
         }
         if(!_loc2_ && param1 != null)
         {
            param1();
         }
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         return new §`&7§(param1);
      }
      
      override protected function §3u§(param1:§0$L§, param2:Object, param3:uint) : void
      {
         param1.setItem(param2);
         param1.setSelected(false);
         param1.setVisible(param2 != null);
         if(param2)
         {
            param1.§;b§(§4! §.isMe(this.§8C§));
         }
      }
      
      override protected function §;$P§(param1:Object) : void
      {
         var item:BackpackItem = null;
         var isMercItem:Boolean = false;
         var selected:§0!7§ = null;
         var merc:§+%7§ = null;
         var teamChars:Vector.<§0!7§> = null;
         var value:Object = param1;
         if(Boolean(value) && §4! §.isMe(this.§8C§))
         {
            item = BackpackItem(value);
            isMercItem = false;
            selected = this.§;i§.§#!_§();
            if(§8"%§.§0$1§.§1#k§(selected))
            {
               merc = §4&A§.§'![§(selected.getProfile().getId());
               isMercItem = merc.§;%6§(item);
            }
            if(!isMercItem && Boolean(selected))
            {
               teamChars = this.§;i§.§<!F§();
               §8"%§.§0$1§.§0%8§(item,selected,teamChars,this.§;i§.§'$3§(selected),function():void
               {
                  var _loc1_:§3$B§ = selected as §3$B§;
                  if(§4! §.isMe(_loc1_.getProfile()))
                  {
                     _loc1_.setItem(_loc1_.getItem());
                  }
               });
            }
            this.§1#`§();
            this.§6"P§.setDisabled(store.§>$6§() == 0 || this.§7!4§() == 0);
         }
      }
      
      override protected function §2$D§(param1:Event) : void
      {
         if(!§@&&§.isMe())
         {
            return;
         }
         var _loc2_:§0$L§ = §0$L§(param1.target);
         this.§&"`§ = BackpackItem(_loc2_.getItem()).getRecord();
         if(Boolean(_loc2_.§8,§()) || !_loc2_.§,$K§())
         {
            return;
         }
         super.§2$D§(param1);
      }
      
      override public function setDisabled(param1:Boolean) : void
      {
         var _loc2_:§`&7§ = null;
         super.setDisabled(param1);
         for each(_loc2_ in cells)
         {
            _loc2_.setDisabled(param1);
         }
      }
      
      override public function deactivate() : void
      {
         var _loc2_:§0!7§ = null;
         var _loc1_:Vector.<§0!7§> = this.§;i§.§<!F§();
         for each(_loc2_ in _loc1_)
         {
            if(Boolean(_loc2_) && Boolean(_loc2_.§-$S§()))
            {
               _loc2_.§-$S§().stay();
            }
         }
         super.deactivate();
      }
   }
}


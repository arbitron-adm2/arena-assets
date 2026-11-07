package §+&<§
{
   import § #9§.§"$t§;
   import § #m§.§;#^§;
   import §!$D§.§2$^§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §-!U§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §2"L§.§!!<§;
   import §3"@§.§##L§;
   import §4$b§.§6!G§;
   import §4'§.§#"l§;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §6"'§.§9$Z§;
   import §7$t§.§2"y§;
   import §9%W§.§&!P§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §?$7§.§6%k§;
   import §?$7§.§6J§;
   import §?$7§.§8"e§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^#[§.§&$2§;
   import config.§=%A§;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionDailyProgressTO;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §@$L§ extends §`&-§
   {
      
      private static const §%M§:String = "Heroic";
      
      private static const §%%'§:String = "mapPreview";
      
      private static const §7!u§:int = 17;
      
      private static const §]%z§:int = 5000;
      
      private var §'!c§:Vector.<§8"@§> = new Vector.<§8"@§>(0);
      
      private var §=%w§:Vector.<§8"@§> = new Vector.<§8"@§>(0);
      
      private var availableBossInfo:§6!>§;
      
      private var unavailableBossInfo:§7!q§;
      
      private var completedTodayBossInfo:§""Z§;
      
      private var cont:§`&-§;
      
      private var §2!Z§:int;
      
      private var selected:int = 0;
      
      public function §@$L§(param1:DisplayObject = null)
      {
         var _loc4_:§8"e§ = null;
         super(param1);
         var _loc2_:uint = 0;
         var _loc3_:MovieClip = MovieClip(param1).getChildByName("heroicBossesContainer") as MovieClip;
         for each(_loc4_ in §8"e§.§#&$§())
         {
            this.§'!c§[_loc2_] = §!&5§.§;#z§(_loc3_[_loc4_.getType() + "BossesBtnUnlock"],§%M§);
            this.§'!c§[_loc2_].§[!u§(this.§@"K§);
            this.§=%w§[_loc2_] = §!&5§.§;#z§(_loc3_[_loc4_.getType() + "BossesBtnLock"],§%M§);
            this.§=%w§[_loc2_].§[!u§(this.§@"K§);
            MovieClip(_loc3_.getChildByName(_loc4_.getType() + "Locker")).mouseEnabled = false;
            _loc2_++;
         }
         §7&5§.§>&<§(§'%s§("title"),§0$N§.TITLE_HEROIC_BOSSES_PANEL);
         this.availableBossInfo = new §6!>§(getChildByName("availableBossInfoContainer"));
         this.unavailableBossInfo = new §7!q§(getChildByName("unavailableBossInfoContainer"));
         this.completedTodayBossInfo = new §""Z§(getChildByName("completedTodayBossInfo"));
      }
      
      public static function §+"S§(param1:MovieClip, param2:uint, param3:§5" § = null) : void
      {
         var _loc5_:UserProfile = null;
         var _loc4_:DisplayObject = param1.getChildByName("charClip");
         if(_loc4_)
         {
            param1.removeChild(_loc4_);
         }
         if(!param3)
         {
            param3 = §3$f§.§<$K§(param2);
         }
         _loc5_ = UserProfile.§'#3§("name",0,param3.getRace(),0,0,0,param3.§"!?§(),param3.§8!u§(),param3.§9K§());
         var _loc6_:§6!G§ = §"$t§.§!!1§(null,_loc5_,param1);
         _loc6_.§4%F§();
      }
      
      public static function §"#R§(param1:§4#_§, param2:HeroicMissionStructure) : void
      {
         var mapName:String = null;
         var preview:Bitmap = null;
         var comp:§4#_§ = param1;
         var structure:HeroicMissionStructure = param2;
         var mapRecord:§9$Z§ = §=%A§.§7S§(structure.mapId);
         var mapIdValue:String = " (#" + structure.mapId + ")";
         if(!comp.§"#I§() || comp.§"#I§().§&k§().name != mapIdValue)
         {
            mapName = §0$N§.§%! §("MAP." + mapRecord.name.toUpperCase());
            comp.setQtip(§0$N§.MAP_SELECTED + " " + mapName + mapIdValue,§;#^§.§4!f§);
            comp.§"#I§().§&k§().name = mapIdValue;
            preview = §8"%§.mapPreview.§2!v§(mapRecord.name);
            if(preview)
            {
               setMapPreview(comp,preview,structure.mapId);
            }
            else
            {
               §8"%§.mapPreview.load(mapRecord,function(param1:String, param2:Bitmap):void
               {
                  setMapPreview(comp,param2,structure.mapId);
               },function():void
               {
               });
            }
         }
      }
      
      private static function setMapPreview(param1:§4#_§, param2:Bitmap, param3:int) : void
      {
         var _loc5_:MovieClip = null;
         var _loc11_:DisplayObject = null;
         var _loc4_:Bitmap = new Bitmap(param2.bitmapData.clone());
         _loc5_ = param1.§"#I§().§&k§() as MovieClip;
         var _loc6_:MovieClip = _loc5_.getChildByName(§%%'§) as MovieClip || §6#A§.§!&6§(§+"'§.§9%>§);
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_.numChildren)
         {
            _loc11_ = _loc6_.getChildAt(_loc7_);
            if(_loc11_ is Bitmap)
            {
               _loc6_.removeChild(_loc11_);
               break;
            }
            _loc7_++;
         }
         _loc6_.addChild(_loc4_);
         _loc6_.name = §%%'§;
         var _loc8_:DisplayObject = _loc6_.getChildByName("panel");
         _loc8_.width = _loc4_.width + 10;
         _loc8_.height = _loc4_.height + 10;
         _loc4_.x = _loc4_.y = 5;
         _loc5_.addChild(_loc6_);
         _loc5_.setChildIndex(_loc6_,_loc5_.numChildren - 1);
         var _loc9_:DisplayObject = _loc5_.getChildByName("panel");
         _loc9_.width = _loc5_.width;
         _loc9_.y = _loc8_.height;
         var _loc10_:TextField = _loc5_.getChildByName("text") as TextField;
         _loc10_.autoSize = TextFieldAutoSize.LEFT;
         _loc10_.y = _loc9_.y + 5;
         §`o§.§%&%§(_loc10_);
      }
      
      private function §@"K§(param1:MouseEvent) : void
      {
         var _loc2_:§8"@§ = param1.currentTarget as §8"@§;
         this.selected = this.§'!c§.indexOf(_loc2_) > -1 ? int(this.§'!c§.indexOf(_loc2_)) : int(this.§=%w§.indexOf(_loc2_));
         this.§>! §(_loc2_);
      }
      
      private function §>! §(param1:§8"@§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:int = this.§'!c§.indexOf(param1);
         if(_loc3_ == -1)
         {
            _loc3_ = this.§=%w§.indexOf(param1);
            _loc2_ = true;
         }
         if(this.§!#m§())
         {
            this.availableBossInfo.setVisible(!_loc2_);
            this.unavailableBossInfo.setVisible(_loc2_);
            this.availableBossInfo.§5#3§(_loc3_);
            this.unavailableBossInfo.§5#3§(_loc3_);
         }
         this.§@&9§(_loc3_);
      }
      
      private function §@&9§(param1:int) : void
      {
         var _loc2_:HeroicMissionDailyProgressTO = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(!this.cont)
         {
            this.cont = new §`&-§(§'$a§("awardExtra"));
            this.cont.setQtip(§0$N§.HEROIC_EXTRA_BONUS_DESCRIPTION,null,§+"'§.§9%>§);
         }
         this.§2!Z§ = 0;
         _loc2_ = §6J§.getInstance().§?"r§(param1);
         var _loc3_:int = _loc2_.winCount + (§6%k§.superBossAvailable ? 2 : 0);
         if(_loc3_ > 0 && _loc2_.defeatCount > 0)
         {
            _loc5_ = _loc3_ * 100 / (_loc2_.defeatCount + _loc3_);
            if(_loc5_ < §7!u§)
            {
               _loc6_ = §6J§.getInstance().§<!y§();
               this.§2!Z§ = Math.min(§]%z§,_loc2_.defeatCount * _loc6_ / _loc3_);
            }
         }
         var _loc4_:TextField = this.cont.§'%s§("count");
         §7&5§.§?$k§(_loc4_,(this.§2!Z§ > 0 ? "+" : "") + this.§2!Z§.toString());
         _loc4_.mouseEnabled = false;
      }
      
      public function §!#m§() : Boolean
      {
         var _loc1_:Boolean = §6%k§.superBossAvailable;
         if(!_loc1_)
         {
            this.availableBossInfo.setVisible(_loc1_);
            this.unavailableBossInfo.setVisible(_loc1_);
         }
         this.completedTodayBossInfo.setVisible(!_loc1_);
         return _loc1_;
      }
      
      public function update() : void
      {
         var _loc4_:§8"@§ = null;
         var _loc5_:HeroicMissionStructure = null;
         var _loc6_:Boolean = false;
         var _loc1_:Vector.<HeroicMissionStructure> = §6J§.getInstance().§[#=§();
         var _loc2_:§8"@§ = this.§'!c§[this.selected].isVisible() ? this.§'!c§[this.selected] : this.§=%w§[this.selected];
         _loc2_.setPressed(false);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc4_ = this.§'!c§[_loc3_];
            _loc4_ = this.§=%w§[_loc3_];
            this.§1%j§(this.§'!c§[_loc3_],_loc3_);
            this.§1%j§(this.§=%w§[_loc3_],_loc3_);
            _loc5_ = _loc1_[_loc3_];
            _loc6_ = §6%k§.§!k§(_loc5_.bossId1) && §6%k§.§!k§(_loc5_.bossId2);
            this.§'!c§[_loc3_].setVisible(_loc6_);
            this.§=%w§[_loc3_].setVisible(!_loc6_);
            _loc3_++;
         }
         _loc2_.setPressed(true);
         this.§>! §(_loc2_);
         this.completedTodayBossInfo.§9$n§(null);
         this.§!#m§();
      }
      
      private function §1%j§(param1:§8"@§, param2:int) : void
      {
         var _loc3_:HeroicMissionStructure = §6J§.getInstance().§,$e§(param2);
         §"#R§(param1,_loc3_);
         var _loc4_:SimpleButton = param1.getContainer() as SimpleButton;
         this.§8%v§(_loc4_.upState,_loc3_,param2);
         this.§8%v§(_loc4_.overState,_loc3_,param2);
         this.§8%v§(_loc4_.downState,_loc3_,param2);
      }
      
      private function §8%v§(param1:DisplayObject, param2:HeroicMissionStructure, param3:uint) : void
      {
         var _loc4_:MovieClip = param1 as MovieClip;
         §&$9§.§>&F§(_loc4_["text"],§"-§.§+$m§,§8"e§.§["V§(param3).§@$+§());
         §+"S§(_loc4_["avatar1"],param2.bossId1,null);
         §+"S§(_loc4_["avatar2"],param2.bossId2,null);
      }
   }
}


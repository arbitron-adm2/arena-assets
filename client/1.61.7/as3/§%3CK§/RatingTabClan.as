package §<K§
{
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §"%H§.§1! §;
   import §#P§.§`o§;
   import §%"Z§.§'$2§;
   import §%L§.§%%w§;
   import §'!Z§.§2!H§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0!§.§6#z§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2!-§.HpChangeEvent;
   import §2B§.§^%y§;
   import §4#2§.§,%g§;
   import §4'§.§^"p§;
   import §4u§.§#"d§;
   import §7!B§.§&"T§;
   import §7!n§.§[&#§;
   import §7"Q§.§"&=§;
   import §7"Q§.§0$L§;
   import §7$1§.§;#&§;
   import §7$t§.§&!e§;
   import §<$2§.§##<§;
   import §<$2§.§+$9§;
   import §>%S§.§^!V§;
   import §?#g§.*;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]$v§.§+%n§;
   import §^"y§.§]#i§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.LocalConnection;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.*;
   import ru.pragmatix.wormix.messages.clans.response.TopClansResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class RatingTabClan extends §@&§
   {
      
      private static const §&$[§:uint = 100;
      
      private var §<#a§:int = -1;
      
      private var §>"_§:int;
      
      private var §0b§:TopClansResponse;
      
      private var §0#6§:Boolean = false;
      
      private var §["2§:TextField;
      
      private var description:TextField;
      
      public function RatingTabClan(param1:String)
      {
         super(param1);
         §<$k§ = 3;
         §6%=§ = §+"'§.§3#X§;
         delay = 5 * 60 * 1000;
         this.§["2§ = §'%s§("title");
         this.§["2§.visible = false;
         this.description = §'%s§("description");
         this.description.visible = false;
         scrollPane.§^s§(200);
         §+"G§ = 5;
         §%d§ = new §`&-§(§6#A§.§!&6§("NobodyInRatingTopMsg"));
         §7&5§.§>&<§(§%d§.§'%s§("text"),§0$N§.§%! §("NOBODY_IN_TOPCLAN_TEXT"));
         addChild(§%d§);
         §%d§.setVisible(false);
         §`o§.§4!F§(§%d§.getContainer());
      }
      
      private static function §,$E§(param1:Vector.<ClanTO>, param2:ClanTO) : int
      {
         var _loc5_:ClanTO = null;
         var _loc3_:int = 0;
         var _loc4_:int = int(param1.length);
         while(_loc3_ < _loc4_)
         {
            _loc5_ = param1[_loc3_];
            if(_loc5_.id == param2.id)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      private function §"!a§() : void
      {
         var _loc4_:uint = 0;
         var _loc1_:Date = new Date();
         var _loc2_:Date = Social.settings.§#$I§();
         var _loc3_:int = _loc1_.fullYear - _loc2_.fullYear;
         if(_loc3_ < 0)
         {
            _loc3_ = 0;
         }
         _loc4_ = _loc1_.month + 1 - _loc2_.month + _loc3_ * 12;
         var _loc5_:String = §<"G§.§%! §("CLAN_SEASON_DATES").replace("{numberSeason}",_loc4_.toString()).replace("{month}",§0#2§.§>#`§(_loc1_.month)).replace("{year}",_loc1_.fullYear.toString());
         this.§["2§.visible = true;
         §&$9§.§>&F§(this.§["2§,§"-§.§+$m§,_loc5_);
         this.description.visible = true;
         this.description.text = §<"G§.§%! §("CLAN_SEASON_AWARD");
      }
      
      override protected function §<#X§() : void
      {
         var _loc3_:DisplayObject = null;
         if(!§4#B§)
         {
            §4#B§ = §&%p§();
         }
         cells = [];
         var _loc1_:int = §4#B§.numChildren - (§<"S§ ? 1 : 0);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = §4#B§.getChildAt(_loc2_);
            §"%F§(_loc3_,_loc2_);
            _loc2_++;
         }
      }
      
      override protected function §0W§(param1:DisplayObject) : §0$L§
      {
         var _loc2_:§##<§ = new §##<§(param1 as MovieClip);
         §4"0§.§^%T§(_loc2_,3);
         return _loc2_;
      }
      
      override protected function §3u§(param1:§0$L§, param2:Object, param3:uint) : void
      {
         var _loc9_:int = 0;
         param1.§^3§(param3);
         if(§[%T§ && !param2)
         {
            param1.setVisible(false);
         }
         else
         {
            param1.setVisible(true);
            param1.setItem(param2);
         }
         var _loc4_:§##<§ = §##<§(param1);
         var _loc5_:ClanTO = ClanTO(param2);
         if(Boolean(§]#i§.userClan) && §]#i§.userClan.id == _loc5_.id)
         {
            this.§<#a§ = param3 + 1;
         }
         var _loc6_:int = §,$E§(this.§0b§.topClans,_loc5_) + 1;
         var _loc7_:int = int(this.§0b§.oldPlaces[param3]);
         if(_loc7_ == 0)
         {
            _loc4_.§9%@§();
         }
         else
         {
            _loc9_ = _loc7_ - _loc6_;
            _loc4_.§?#,§(_loc9_);
            if(Boolean(§]#i§.userClan) && §]#i§.userClan.id == _loc5_.id)
            {
               this.§>"_§ = _loc9_;
               this.§0#6§ = true;
            }
         }
         _loc4_.setIndexNumber(param3 + 1);
         _loc4_.showRating(_loc5_.seasonRating);
         var _loc8_:uint = uint(ClanTO(param2).seasonRating);
         §##<§(param1).setIndexNumber(param3 + 1);
         if(!§<"S§ && _loc8_ < §@C§.§7$T§)
         {
            §<"S§ = true;
            §<#s§ = param3;
         }
      }
      
      override public function §&#F§(param1:Boolean) : void
      {
         super.§&#F§(param1);
         RatingWindow.§0"F§(false,false,true).setVisible(!param1);
      }
      
      override public function loadIfNeeded() : void
      {
         RatingWindow.§0"F§(false,false,true);
         if((Boolean(!§,$H§ || new Date().time > §,$H§ + delay)) && Boolean(RatingWindow.§]#h§()) && RatingWindow.§]#h§() is RatingTabClan)
         {
            this.§&#F§(true);
            §8"%§.§!&I§.common.§+,§(this.§3$V§);
         }
      }
      
      protected function §3$V§(param1:TopClansResponse) : void
      {
         var _loc5_:ClanTO = null;
         this.§&#F§(false);
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         var _loc4_:int = int(param1.topClans.length);
         while(_loc3_ < _loc4_)
         {
            _loc5_ = param1.topClans[_loc3_];
            if(_loc5_.rating <= 0)
            {
               param1.topClans = param1.topClans.slice(0,_loc3_);
               break;
            }
            _loc2_.push(_loc5_);
            _loc3_++;
         }
         this.§0b§ = param1;
         this.§<#a§ = param1.playerClanPosition;
         §,$H§ = new Date().time;
         §="3§(param1.topClans.length);
         setData(_loc2_);
         §;""§(_loc2_);
         §=%D§();
         this.§"!a§();
         §%d§.setVisible(_loc2_.length == 0);
         §3$Q§ = !§%d§.isVisible();
         if(§3$Q§)
         {
            this.§?%c§();
         }
      }
      
      override protected function §^$x§(param1:§+$9§) : void
      {
         if(this.§<#a§ > 0 && this.§<#a§ <= §&$[§)
         {
            param1.setIndexNumber(this.§<#a§);
            if(this.§0#6§)
            {
               param1.§?#,§(this.§>"_§);
            }
            else
            {
               param1.§9%@§();
            }
         }
         else
         {
            param1.setIndexNumber(-1);
            this.§<#a§ = -1;
            param1.§9%@§();
         }
         if(this.§0b§)
         {
            param1.showRating(this.§0b§.rating);
         }
      }
      
      override protected function §?%c§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:§"&=§ = null;
         if(cells.length > 0 && §<"S§)
         {
            if(!divider)
            {
               this.§'&9§(§@C§.§7$T§);
            }
            §4#B§.addChild(divider);
            _loc1_ = 50;
            _loc2_ = 0;
            while(_loc2_ < cells.length)
            {
               _loc3_ = cells[_loc2_];
               _loc3_.getContainer().y = _loc1_ * _loc2_ + (_loc2_ >= §<#s§ ? _loc1_ : 0);
               if(_loc2_ == §<#s§)
               {
                  divider.y = _loc3_.getContainer().y - _loc1_;
               }
               _loc2_++;
            }
            scrollPane.update();
            §<"S§ = false;
            §<#s§ = 0;
         }
         else if(Boolean(divider) && Boolean(divider.parent))
         {
            §4#B§.removeChild(divider);
         }
      }
      
      override protected function §'&9§(param1:int) : void
      {
         super.§'&9§(param1);
         var _loc2_:DisplayObject = divider.getChildByName("dividerBack");
         _loc2_.height = 50;
         §`o§.§8#y§(divider.getChildByName("text"),_loc2_);
         §`o§.§8#y§(divider.getChildByName("count"),_loc2_);
         §`o§.§8#y§(divider.getChildByName("ratingIcon"),_loc2_);
         §`o§.§8#y§(divider.getChildByName("lineLeft"),_loc2_);
         §`o§.§8#y§(divider.getChildByName("lineRight"),_loc2_);
      }
   }
}


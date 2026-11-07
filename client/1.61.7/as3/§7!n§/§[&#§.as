package §7!n§
{
   import § "L§.§1%b§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"% §.*;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%$!§.§@!o§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&"c§.§5$n§;
   import §&#W§.§4#T§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§-$s§;
   import §+%S§.§2$#§;
   import §+%S§.§[0§;
   import §-8§.§3!x§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §2#x§.*;
   import §3#T§.*;
   import §3%?§.§=E§;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^%%§;
   import §9%W§.§&!P§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §>%S§.§^!V§;
   import §@!N§.*;
   import §@!i§.§"-§;
   import §@!i§.§7$_§;
   import §@!i§.§<!9§;
   import §@!i§.§<#&§;
   import §@#K§.§-§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import com.greensock.loading.*;
   import config.§;"I§;
   import config.achievements.*;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.media.SoundTransform;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.*;
   import ru.pragmatix.wormix.controller.§!#v§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.messages.client.SelectRace;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §[&#§ extends §`&-§
   {
      
      public static const §>$U§:String = "available";
      
      public static const §@!n§:String = "unavailable";
      
      public static const §;!&§:String = "unavailableTeamsize";
      
      public static const §]"Z§:String = "unavailablePrimetime";
      
      public static const §8"2§:String = "hint";
      
      public static const §^#T§:String = "hintBack";
      
      public static const §`R§:String = "cardName";
      
      public static const §[$[§:String = "rateCount";
      
      public static const §>![§:String = "level";
      
      public static const §=!k§:String = "levelAccess";
      
      public static const §%#e§:String = "profit";
      
      public static const §]!k§:String = "profitCount";
      
      public static const §0$u§:String = "bonusRating";
      
      public static const §4k§:String = "bonusRatingCount";
      
      public static const §?%#§:String = "experience";
      
      public static const §<#2§:String = "experienceCount";
      
      public static const §&"1§:String = "experienceIcon";
      
      protected var wager:§<#&§;
      
      protected var §0"X§:§?%>§;
      
      protected var §"!B§:§?%>§;
      
      protected var §>$O§:§?%>§;
      
      protected var §0"8§:§?%>§;
      
      public function §[&#§(param1:DisplayObjectContainer, param2:String)
      {
         super(param1);
         this.init(param2);
      }
      
      protected function init(param1:String) : void
      {
         if(getChildByName(§>$U§))
         {
            this.§0"X§ = §!&5§.§7#[§(getChildByName(§>$U§));
            this.§0"X§.§[!u§(this.§3#,§);
         }
         if(getChildByName(§@!n§))
         {
            this.§"!B§ = §!&5§.§7#[§(getChildByName(§@!n§));
         }
         if(getChildByName(§;!&§))
         {
            this.§>$O§ = §!&5§.§7#[§(getChildByName(§;!&§));
         }
         if(getChildByName(§]"Z§))
         {
            this.§0"8§ = §!&5§.§7#[§(getChildByName(§]"Z§));
         }
         this.setText(param1,§`R§,§"-§.§+$m§);
         this.setText(§0$N§.PVP_PRIZE_LABEL,§%#e§,§"-§.§+$m§);
      }
      
      protected function §3#,§(param1:Event = null) : void
      {
         if(§4! §.§7"-§(Application.userProfile,§+$A§.INGAME,this.wager))
         {
            §8"%§.§%w§.getArenaMenu().hide();
            §8"%§.§?!W§.§`";§(this.wager);
         }
      }
      
      public function §%!0§() : §<#&§
      {
         return this.wager;
      }
      
      public function setData(param1:§<#&§) : void
      {
         this.wager = param1;
         this.setText(param1.award.toString(),§]!k§,§"-§.§6"j§);
         this.setText(param1.value.toString(),§[$[§,§"-§.§6"j§);
         if(param1.§#!n§)
         {
            this.setText(§0$N§.PVP_BONUS_LABEL,§0$u§,§"-§.§+$m§);
            this.setText("+" + Math.round(param1.§#!n§ * 100) + "%",§4k§,§"-§.§6"j§);
         }
         var _loc2_:Boolean = Boolean(param1.experience) && Application.userProfile.getLevel() < §<!9§.getMaxLevel();
         if(_loc2_)
         {
            if(this.§0"X§)
            {
               this.§2$ §(this.§0"X§);
            }
            if(this.§"!B§)
            {
               this.§2$ §(this.§"!B§);
            }
            if(this.§>$O§)
            {
               this.§2$ §(this.§>$O§);
            }
            if(this.§0"8§)
            {
               this.§2$ §(this.§0"8§);
            }
         }
         else
         {
            if(this.§0"X§)
            {
               §4"0§.§@F§(this.§0"X§,§&"1§,§8"2§,false);
            }
            if(this.§"!B§)
            {
               §4"0§.§@F§(this.§"!B§,§&"1§,§8"2§,false);
            }
            if(this.§>$O§)
            {
               §4"0§.§@F§(this.§>$O§,§&"1§,§8"2§,false);
            }
            if(this.§0"8§)
            {
               §4"0§.§@F§(this.§0"8§,§&"1§,§8"2§,false);
            }
         }
         this.setText(_loc2_ ? §0$N§.EXPERIENCE : "",§?%#§,§"-§.§+$m§);
         this.setText(_loc2_ ? param1.experience.toString() : "",§<#2§,§"-§.§6"j§);
      }
      
      private function §2$ §(param1:§?%>§) : void
      {
         var _loc2_:Array = §4"0§.§[#b§(param1,§^#T§,§8"2§);
         var _loc3_:int = 0;
         var _loc4_:int = int(_loc2_.length);
         while(_loc3_ < _loc4_)
         {
            if(_loc2_[_loc3_])
            {
               _loc2_[_loc3_].height += 25;
            }
            _loc3_++;
         }
      }
      
      public function update() : void
      {
         var _loc1_:UserProfile = null;
         var _loc7_:uint = 0;
         var _loc10_:Boolean = false;
         var _loc12_:Object = null;
         var _loc13_:String = null;
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:String = null;
         var _loc17_:uint = 0;
         var _loc18_:String = null;
         var _loc19_:String = null;
         this.setText(this.wager.award.toString(),§]!k§,§"-§.§6"j§);
         this.setText(this.wager.value.toString(),§[$[§,§"-§.§6"j§);
         _loc1_ = Application.userProfile;
         var _loc2_:Vector.<UserProfile> = _loc1_.§7$F§();
         var _loc3_:uint = _loc2_.length;
         var _loc4_:Boolean = false;
         var _loc5_:int = int(this.wager.minUnits);
         var _loc6_:Boolean = this.wager is §7$_§;
         if(_loc6_)
         {
            _loc12_ = §0$c§.§0,§(_loc1_,this.wager.minUnits);
            _loc4_ = Boolean(_loc12_.ready);
            _loc5_ = int(_loc12_.teamNeed);
            _loc3_ = uint(_loc12_.teamLength);
         }
         _loc7_ = §8"%§.§-"p§.§&#i§(this.wager.id);
         var _loc8_:Boolean = _loc7_ == 0;
         var _loc9_:Boolean = _loc6_ ? _loc4_ : _loc3_ >= this.wager.minUnits;
         _loc10_ = _loc1_.getLevel() >= this.wager.minLevel;
         var _loc11_:Boolean = (_loc10_) && _loc9_ && _loc8_ && Social.settings.§7%N§();
         this.§ $E§(_loc11_,_loc10_,_loc9_,_loc8_);
         if(!Social.settings.§7%N§())
         {
            this.§#%b§(this.§"!B§,§0$N§.COMING_SOON);
         }
         if(!_loc10_)
         {
            _loc13_ = this.wager.minLevel.toString();
            _loc14_ = §0%§.format(§0$N§.PVP_WAGER_AVAILABLE_FOR,{"level":_loc13_});
            this.§#%b§(this.§"!B§,_loc14_,_loc13_);
         }
         else if(!_loc9_)
         {
            _loc15_ = _loc6_ ? _loc5_.toString() : this.wager.minUnits.toString();
            _loc16_ = §0%§.format(§0$N§.PVP_WAGER_AVAILABLE_FOR_TEAM + (_loc6_ && _loc5_ > this.wager.minUnits ? ", " + §0$N§.PVP_WAGER_CLANMATE_REPLACE : ""),{"count":(_loc6_ ? _loc5_ : _loc15_)});
            this.§#%b§(this.§>$O§,_loc16_,_loc15_);
         }
         else if(!_loc8_)
         {
            _loc17_ = §8"%§.§!"F§ + _loc7_;
            _loc18_ = §0#2§.§1" §(_loc17_);
            _loc19_ = §0%§.format(§0$N§.PVP_WAGER_AVAILABLE_FOR_PRIME,{
               "br":"\n",
               "time":_loc18_
            });
            this.§#%b§(this.§0"8§,_loc19_);
         }
      }
      
      protected function §#%b§(param1:§?%>§, param2:String, param3:String = "") : void
      {
         if(param1)
         {
            §4"0§.§2!,§(param1,§>![§,param2,"",§"-§.§+$m§);
            this.setText(param3,§=!k§,§"-§.§6"j§);
         }
      }
      
      protected function § $E§(param1:Boolean, param2:Boolean, param3:Boolean, param4:Boolean) : void
      {
         if(this.§0"X§)
         {
            this.§0"X§.setDisabled(!param1);
         }
         if(this.§"!B§)
         {
            this.§"!B§.setVisible(!param1 && !param2);
         }
         if(this.§>$O§)
         {
            this.§>$O§.setVisible(!param1 && !param3 && param2);
         }
         if(this.§0"8§)
         {
            this.§0"8§.setVisible(!param1 && !param4 && param3);
         }
      }
      
      protected function setText(param1:String, param2:String = "text", param3:TextFormat = null) : void
      {
         var _loc4_:String = "";
         switch(param2)
         {
            case §%#e§:
            case §]!k§:
            case §0$u§:
            case §4k§:
            case §?%#§:
            case §<#2§:
               _loc4_ = §8"2§;
         }
         if(this.§0"X§)
         {
            §4"0§.§2!,§(this.§0"X§,param2,param1,_loc4_,param3);
         }
         if(this.§"!B§)
         {
            §4"0§.§2!,§(this.§"!B§,param2,param1,_loc4_,param3);
         }
         if(this.§>$O§)
         {
            §4"0§.§2!,§(this.§>$O§,param2,param1,_loc4_,param3);
         }
         if(this.§0"8§)
         {
            §4"0§.§2!,§(this.§0"8§,param2,param1,_loc4_,param3);
         }
      }
      
      override public function setDisabled(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0"X§.removeHandler(this.§3#,§);
         }
         else
         {
            this.§0"X§.§[!u§(this.§3#,§);
         }
      }
   }
}


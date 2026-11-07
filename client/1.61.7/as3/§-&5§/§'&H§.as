package §-&5§
{
   import § "d§.§,!c§;
   import § #9§.§"$t§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"%H§.§`"w§;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §&!?§.§@&@§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0%"§.§`"`§;
   import §0%z§.*;
   import §0&F§.SelectObjectEvent;
   import §1#p§.§"Z§;
   import §3#a§.§-!`§;
   import §4$b§.§6!G§;
   import §4'§.§^"p§;
   import §7"Q§.§0$L§;
   import §7$t§.§=?§;
   import §7$t§.§??§;
   import §7$t§.§[!X§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#a§.*;
   import §9%W§.§&!P§;
   import §;#O§.§+%7§;
   import §;$%§.§0%%§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§6%k§;
   import §?$7§.§6J§;
   import §@!i§.§<!9§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^"y§.§]#i§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.server.AchieveLoginError;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.messages.server.WhoPumpedReactionResult;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.messages.structures.ProfileDoubleKeyStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.serialization.server.*;
   
   public class §'&H§ extends §,##§
   {
      
      private var charIcon:§6!G§;
      
      private var §>%-§:§1$!§;
      
      public function §'&H§(param1:DisplayObject)
      {
         super(param1 as DisplayObjectContainer);
         this.§>%-§ = new §1$!§();
         addChild(this.§>%-§);
      }
      
      override public function setItem(param1:§??§) : void
      {
         super.setItem(param1);
         var _loc2_:Vector.<Object> = §`"`§.§+o§(param1 as §=?§);
         var _loc3_:uint = §%Z§.§<#7§.§>#]§();
         if(Boolean(_loc2_) && Boolean(_loc2_.length))
         {
            if(_loc2_[0].isAnti)
            {
               _loc3_ = §%Z§.ANTISET_ITEMS.§>#]§();
            }
            else if(!_loc2_[0].isHidden)
            {
               _loc3_ = §%Z§.SET_ITEMS.§>#]§();
            }
         }
         §4&D§.textColor = _loc3_;
         this.§ #Y§(param1);
         if(§^"o§.visible)
         {
            this.§>%-§.y = §^"o§.y + §^"o§.numLines * 15 + 7;
         }
         else
         {
            this.§>%-§.y = §^"o§.y + 3;
         }
         this.§>%-§.update(param1 as §=?§);
      }
      
      override protected function §&!U§(param1:§??§) : void
      {
         var _loc5_:§@"I§ = null;
         var _loc6_:Vector.<Object> = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§[!X§ = null;
         var _loc2_:§=?§ = param1 as §=?§;
         var _loc3_:String = "";
         var _loc4_:String = "";
         if(param1.§##m§() == §^"p§.§;#'§)
         {
            _loc4_ = §0$N§.HOLIDAY_DESCR;
         }
         for each(_loc5_ in _loc2_.getBonusList().§<%i§())
         {
            if(!_loc5_.§17§())
            {
               _loc3_ += _loc5_.§@$+§() + ". ";
            }
         }
         _loc6_ = §`"`§.§+o§(param1 as §=?§);
         if((Boolean(_loc6_)) && Boolean(_loc6_.length))
         {
            _loc7_ = "";
            for each(_loc8_ in _loc6_)
            {
               if(!_loc8_.isHidden)
               {
                  _loc9_ = §<$c§.§#$m§(_loc8_.id);
                  _loc7_ += (_loc7_.length ? "\n" : "") + "(" + _loc9_.§0F§ + ")";
               }
            }
            if(_loc7_)
            {
               _loc3_ += (_loc3_.length ? "\n" : "") + _loc7_;
            }
         }
         if(_loc3_ == "")
         {
            §^"o§.visible = false;
         }
         else
         {
            §^"o§.htmlText = _loc3_;
            §^"o§.visible = true;
         }
      }
      
      private function § #Y§(param1:§??§) : void
      {
         var _loc2_:UserProfile = Application.userProfile;
         var _loc3_:MovieClip = getChildByName("worm") as MovieClip;
         var _loc4_:§^$E§ = param1 is §^$E§ ? param1 as §^$E§ : _loc2_.§2u§();
         if(_loc4_)
         {
            _loc4_ = §<$c§.§^&1§(_loc4_.getId(),_loc2_.getRace());
         }
         var _loc5_:§^%%§ = param1 is §^%%§ ? param1 as §^%%§ : _loc2_.§+!b§();
         this.charIcon = §"$t§.§!!1§(this.charIcon,_loc2_,_loc3_,_loc2_.getRace(),_loc4_,_loc5_);
      }
      
      override protected function §="H§(param1:§??§) : String
      {
         return "";
      }
   }
}


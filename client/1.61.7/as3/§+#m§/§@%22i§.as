package §+#m§
{
   import § !P§.*;
   import § K§.§]"D§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&#h§.*;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §2#W§.§ #,§;
   import §2B§.§8"n§;
   import §4'§.§^"p§;
   import §7!n§.§'#n§;
   import §7!n§.§-!!§;
   import §7!n§.§2!j§;
   import §7!n§.§>!k§;
   import §7!n§.§@!g§;
   import §7!n§.§[&#§;
   import §7!n§.§`$m§;
   import §<%k§.§`!v§;
   import §@!i§.§<#&§;
   import §^"y§.§]#i§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.StatusEvent;
   import flash.net.LocalConnection;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.treasury.CashMedalsClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.ChooseBonusItemResult;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §@"i§ extends §1#g§ implements §]"D§
   {
      
      public static const §@%f§:String = "title";
      
      public static const §?"i§:String = "classicDuelCard";
      
      public static const §9!B§:String = "survivalCard";
      
      public static const §0&H§:String = "twoVsTwoCard";
      
      public static const §4!z§:String = "epicDuelCard";
      
      public static const §8"1§:String = "actionDuelCard";
      
      public static const §]$!§:String = "gladiatorDuelCard";
      
      public static const §,";§:String = "mercenariesDuelCard";
      
      public static const §4#!§:String = "ropeRaceCard";
      
      protected var cells:Vector.<§[&#§> = new Vector.<§[&#§>(0);
      
      private var chests:§ #,§;
      
      public function §@"i§(param1:String)
      {
         super();
         this.id = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         dispatchEvent(new §8"n§(§8"n§.ACTIVATE));
         this.§>$V§();
      }
      
      protected function §>$V§() : void
      {
         var _loc1_:§[&#§ = null;
         for each(_loc1_ in this.cells)
         {
            _loc1_.update();
         }
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.§<#X§();
         this.chests = new § #,§(§'$a§("chests"));
      }
      
      public function chestsUpdate() : void
      {
         this.chests.update();
      }
      
      private function §3"S§() : void
      {
         var _loc4_:DisplayObjectContainer = null;
         var _loc9_:§[&#§ = null;
         var _loc1_:Boolean = Boolean(1);
         var _loc2_:Boolean = Boolean(1);
         var _loc3_:Number = §0#2§.§@&1§().date;
         _loc4_ = this.cells[0].getContainer().parent;
         var _loc5_:Number = _loc4_.width * 0.5;
         var _loc6_:int = 200;
         var _loc7_:int = 160;
         var _loc8_:int = 10;
         var _loc10_:int = 0;
         var _loc11_:int = int(this.cells.length);
         while(_loc10_ < _loc11_)
         {
            _loc9_ = this.cells[_loc10_];
            if(_loc9_.§%!0§().id == §-"P§.§,%@§)
            {
               if(_loc2_)
               {
                  _loc9_.x = _loc5_ + _loc8_;
                  _loc9_.y = _loc7_;
               }
               if(_loc1_)
               {
                  _loc9_.setVisible(_loc3_ % 3 == 0);
               }
            }
            if(_loc9_.§%!0§().id == §-"P§.§>!x§)
            {
               if(_loc2_)
               {
                  _loc9_.x = _loc5_ + _loc8_;
                  _loc9_.y = _loc7_;
               }
               if(_loc1_)
               {
                  _loc9_.setVisible(_loc3_ % 3 != 0 && _loc3_ % 2 == 0);
               }
            }
            if(_loc9_.§%!0§().id == §-"P§.MERCENARIES_DUEL)
            {
               if(_loc2_)
               {
                  _loc9_.x = _loc5_ + _loc8_;
                  _loc9_.y = _loc7_;
               }
               if(_loc1_)
               {
                  _loc9_.setVisible(_loc3_ % 3 != 0 && _loc3_ % 2 != 0);
               }
            }
            if(_loc9_.§%!0§().id == §-"P§.§`$=§)
            {
               if(_loc2_)
               {
                  _loc9_.x = _loc5_ - _loc6_;
                  _loc9_.y = _loc7_;
               }
            }
            if(_loc9_.§%!0§().id == §-"P§.§68§)
            {
               if(_loc2_)
               {
                  _loc9_.x = _loc5_ + _loc8_;
                  _loc9_.y = _loc7_;
               }
               if(_loc1_)
               {
                  _loc9_.setVisible(false);
               }
            }
            _loc10_++;
         }
      }
      
      protected function §<#X§() : void
      {
         §'%s§(§@%f§).text = §0$N§.PVP_MESSAGE;
         this.§3u§(getChildByName(§?"i§),§<#&§.valueOf(§-"P§.§"#p§),§0$N§.PVP_DUEL_CARD);
         this.§3u§(getChildByName(§0&H§),§<#&§.valueOf(§-"P§.§'$L§),§0$N§.PVP_TWO_VS_TWO_CARD,false);
         this.§3u§(getChildByName(§9!B§),§<#&§.valueOf(§-"P§.§"!0§),§0$N§.PVP_SURVIVAL_CARD);
         this.§3u§(getChildByName(§]$!§),§<#&§.valueOf(§-"P§.§,%@§),§0$N§.PVP_GLADIATOR_CARD);
         this.§3u§(getChildByName(§,";§),§<#&§.valueOf(§-"P§.MERCENARIES_DUEL),§0$N§.MINI_COLISEUM);
         this.§3u§(getChildByName(§4#!§),§<#&§.valueOf(§-"P§.§`$=§),§0$N§.RACE_QUEST_TITLE);
         this.§3u§(getChildByName(§4!z§),§<#&§.valueOf(§-"P§.§>!x§),§0$N§.PVP_DEATH_MATCH_CARD);
         this.§3u§(getChildByName(§8"1§),§<#&§.valueOf(§-"P§.§68§),§0$N§.ACTION_QUEST_LABEL);
         this.cells[this.cells.length - 2].setVisible(false);
         this.cells[this.cells.length - 2].setDisabled(true);
         this.cells[this.cells.length - 1].setVisible(false);
         this.cells[this.cells.length - 1].setDisabled(true);
      }
      
      protected function §3u§(param1:DisplayObject, param2:§<#&§, param3:String, param4:Boolean = true) : void
      {
         var _loc5_:§[&#§ = null;
         if(param4)
         {
            if(param2.id == §-"P§.§"#p§)
            {
               _loc5_ = new §>!k§(param1 as DisplayObjectContainer,param3);
            }
            else if(param2.id == §-"P§.§68§)
            {
               _loc5_ = new §@!g§(param1 as DisplayObjectContainer,param3);
            }
            else if(param2.id == §-"P§.§,%@§)
            {
               _loc5_ = new §'#n§(param1 as DisplayObjectContainer,param3);
            }
            else if(param2.id == §-"P§.MERCENARIES_DUEL)
            {
               _loc5_ = new §-!!§(param1 as DisplayObjectContainer,param3);
            }
            else if(param2.id == §-"P§.§`$=§)
            {
               _loc5_ = new §`$m§(param1 as DisplayObjectContainer,param3);
            }
            else
            {
               _loc5_ = new §[&#§(param1 as DisplayObjectContainer,param3);
            }
         }
         else
         {
            _loc5_ = new §2!j§(param1 as DisplayObjectContainer,param3);
         }
         _loc5_.setData(param2);
         _loc5_.setDisabled(false);
         this.cells.push(_loc5_);
      }
      
      protected function §[w§(param1:DisplayObject, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:§[&#§ = null;
         if(param3)
         {
            _loc4_ = new §[&#§(param1 as DisplayObjectContainer,param2);
         }
         else
         {
            _loc4_ = new §2!j§(param1 as DisplayObjectContainer,param2);
         }
         _loc4_.setDisabled(true);
      }
      
      override public function setDisabled(param1:Boolean) : void
      {
         var _loc2_:§[&#§ = null;
         for each(_loc2_ in this.cells)
         {
            _loc2_.setDisabled(param1);
         }
      }
      
      public function get isDefault() : Boolean
      {
         return true;
      }
      
      public function get hasExperience() : Boolean
      {
         return false;
      }
   }
}


package ru.pragmatix.wormix.gui.window
{
   import § !8§.§`!d§;
   import § #9§.§3L§;
   import § $q§.§3U§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §##j§.§!%&§;
   import §##j§.§#$!§;
   import §##j§.§'"%§;
   import §##j§.§0!-§;
   import §##j§.§0%=§;
   import §##j§.§0m§;
   import §##j§.§9x§;
   import §##j§.§>"M§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%&6§.§2$v§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+%S§.§2$#§;
   import §+%S§.§[0§;
   import §-8§.§3!x§;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §2!-§.DamageEvent;
   import §4f§.§-&§;
   import §4u§.§!!o§;
   import §4u§.ReagentHint;
   import §6%2§.§!"x§;
   import §6%2§.§+§;
   import §7"Q§.§"&=§;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §8#o§.§1@§;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §=&!§.§<$Z§;
   import §=&6§.*;
   import §?$K§.§=z§;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@<§.§+%]§;
   import §^!"§.§0^§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.GladiatorUnitStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §^%3§ extends §"&=§
   {
      
      protected var icon:§3U§;
      
      protected var countField:TextField;
      
      protected var trophy:MovieClip;
      
      protected var plus:String;
      
      public function §^%3§(param1:MovieClip, param2:String, param3:Number = 1)
      {
         this.plus = param2;
         super(param1);
         this.icon = new §[%l§(param1.getChildByName("icon"),true);
         this.§^"W§();
         if(param1.getChildByName("trophy"))
         {
            this.trophy = param1.getChildByName("trophy") as MovieClip;
         }
         this.icon.§1&!§(param3);
      }
      
      protected function §^"W§() : void
      {
         this.countField = §#!`§().getChildByName("count") as TextField;
         this.countField.mouseEnabled = false;
         this.countField.text = "";
      }
      
      override public function setItem(param1:Object) : void
      {
         var _loc2_:§&!e§ = null;
         var _loc3_:§;#_§ = null;
         var _loc4_:String = null;
         var _loc5_:§=?§ = null;
         var _loc6_:§3L§ = null;
         var _loc7_:§9x§ = null;
         var _loc8_:§&!e§ = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(this.trophy)
         {
            this.trophy.visible = false;
         }
         §7&5§.§?$k§(this.countField," ");
         this.icon.setVisible(param1);
         if(this.icon.§&k§())
         {
            this.icon.§&k§().visible = param1;
         }
         if(param1 == null)
         {
            return;
         }
         super.setItem(param1);
         if(param1 is §`%g§ || param1 is §]$X§)
         {
            if(param1 is §`%g§)
            {
               _loc2_ = §<$c§.§ !=§(§`%g§(param1).getId());
               if(§`%g§(param1).getCount() > 0)
               {
                  _loc3_ = §;#_§(_loc2_);
                  if(_loc3_.isComplex())
                  {
                     _loc4_ = §`%g§(param1).getCount() + "/" + _loc3_.getMaxLevel();
                  }
                  else
                  {
                     _loc4_ = this.plus + §`%g§(param1).getCount();
                  }
                  this.countField.text = _loc4_;
               }
               this.icon.setItem(_loc2_);
            }
            else if(param1 is §]$X§)
            {
               _loc2_ = §]$X§(param1).getRecord();
               _loc5_ = new §=?§(§=?§(_loc2_).getBonusList().getSourceType());
               §=?§(_loc2_).cloneEquipRecord(_loc5_);
               if(§=?§(_loc2_).temp)
               {
                  if(this.trophy != null)
                  {
                     this.trophy.visible = true;
                  }
                  if(§]$X§(param1).getExpireHours() > 0)
                  {
                     _loc5_.setDuration(§]$X§(param1).getExpireHours());
                  }
               }
               this.icon.setItem(_loc5_);
            }
         }
         else if(param1 is §!%&§)
         {
            _loc2_ = §1@§.§`$M§(§!%&§(param1).getId());
            if(§!%&§(param1).getCount() > 0)
            {
               this.countField.text = String(this.plus + §!%&§(param1).getCount());
            }
            this.icon.setItem(_loc2_,new ReagentHint(_loc2_));
         }
         else if(!(param1 is §`!d§))
         {
            if(param1 is §0%=§)
            {
               _loc6_ = new §3L§(container as MovieClip,true);
               _loc6_.§4!H§();
               _loc6_.§3%,§(§0%=§(param1).getProfile());
               this.icon.§3#2§(_loc6_);
            }
            else
            {
               _loc7_ = §9x§(param1);
               if(_loc7_.getCount() != 0)
               {
                  this.countField.text = String(this.plus + _loc7_.getCount());
               }
               if(param1 is §#$!§)
               {
                  _loc9_ = §#$!§(param1).getRewardType() == §+$A§.INGAME ? §!"x§.FUZY : §!"x§.RUBY;
                  _loc8_ = §+#7§.§8&E§(_loc9_);
               }
               else if(param1 is §'"%§)
               {
                  _loc8_ = §+#7§.§8&E§(§!"x§.EXPERIENCE);
               }
               else if(param1 is §0m§)
               {
                  _loc8_ = §+#7§.§8&E§(§!"x§.REACTION);
               }
               else if(param1 is §>"M§)
               {
                  _loc8_ = §+#7§.§8&E§(§!"x§.BATTLE_TOKENS);
               }
               else if(_loc7_.§7%z§() == §+#7§.§8&E§(§!"x§.BONUS_EXPERIENCE).§7%z§())
               {
                  _loc8_ = §+#7§.§8&E§(§!"x§.BONUS_EXPERIENCE);
               }
               else if(_loc7_.§7%z§() == §+#7§.§8&E§(§!"x§.RANK_POINTS).§7%z§())
               {
                  _loc8_ = §+#7§.§8&E§(§!"x§.RANK_POINTS);
               }
               else
               {
                  _loc10_ = _loc7_.§7%z§().toUpperCase();
                  _loc8_ = §+#7§.§8&E§(§!"x§.RATING);
                  if(_loc10_ != _loc8_.§7%z§().toUpperCase())
                  {
                     if(param1 is §0!-§)
                     {
                        _loc10_ += "_" + §0!-§(param1).getType();
                        this.icon.§1&!§(1);
                     }
                     _loc8_ = §+#7§.§7%7§(_loc10_);
                  }
               }
               if(_loc8_)
               {
                  this.icon.setItem(_loc8_,new §!!o§(_loc8_.§7%z§()));
               }
            }
         }
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this.icon = null;
         this.countField = null;
         if(this.trophy)
         {
            this.trophy = null;
         }
      }
   }
}


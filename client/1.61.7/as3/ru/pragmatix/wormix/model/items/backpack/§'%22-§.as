package ru.pragmatix.wormix.model.items.backpack
{
   import § !8§.§`!d§;
   import § &5§.§%$O§;
   import §!$d§.§<$c§;
   import §!K§.§!!n§;
   import §!K§.§"%$§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §"$+§.*;
   import §"% §.LevelUpDialog;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.§9§;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#P§.§`o§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%# §.*;
   import §%$!§.§@!o§;
   import §%L§.§%%w§;
   import §&#E§.§4##§;
   import §&#h§.§-"F§;
   import §&&6§.*;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'"N§.§4&5§;
   import §+%S§.§+m§;
   import §+%S§.§2!x§;
   import §+&<§.*;
   import §-!U§.*;
   import §-%B§.*;
   import §-@§.*;
   import §0!Y§.§#!Z§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §2#H§.§#$A§;
   import §2#H§.§,#V§;
   import §2#i§.§+%z§;
   import §2#s§.*;
   import §3#a§.§-#M§;
   import §3%?§.§=E§;
   import §4'§.§^"p§;
   import §4B§.§=%8§;
   import §5!,§.§?!P§;
   import §6",§.§[%w§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §;!Z§.*;
   import §<!W§.§9%,§;
   import §<$q§.§,%3§;
   import §<%E§.§'$g§;
   import §<%E§.§,$2§;
   import §<%E§.§6$=§;
   import §<%E§.§=$u§;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §="z§.§7%-§;
   import §="z§.§9%1§;
   import §=&!§.§&$a§;
   import §=&!§.§4$z§;
   import §=&!§.§]$d§;
   import §=7§.§?%4§;
   import §?#g§.Race;
   import §?$7§.§8"e§;
   import §?$K§.§+G§;
   import §?$K§.§3#j§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?%J§.*;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§'#E§;
   import §@!i§.§<!9§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@%I§.§7%K§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §^"y§.§]#i§;
   import §`"x§.§-#z§;
   import §`"x§.SearchFriendMenu;
   import §`%&§.§2§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.loading.*;
   import com.greensock.plugins.*;
   import config.achievements.§!$L§;
   import config.achievements.BossAchieves;
   import flash.display.*;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.media.SoundTransform;
   import flash.net.URLRequestMethod;
   import flash.text.TextFieldAutoSize;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.BossBattleOfferDialog;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.gui.window.§^$7§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.GetDailyBonus;
   import ru.pragmatix.wormix.messages.server.GetDailyBonusResult;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §'"-§ extends §6#Q§
   {
      
      private var §2%v§:int = 0;
      
      private var layouts:Array = [];
      
      public function §'"-§()
      {
         super();
      }
      
      override public function §0%8§(param1:§&!e§, param2:int = -1, param3:uint = 0, param4:uint = 1) : BackpackItem
      {
         var _loc5_:BackpackItem = null;
         var _loc6_:§;#_§ = null;
         var _loc7_:BackpackItem = null;
         if(Boolean(param1) && param1 is §;#_§)
         {
            _loc6_ = param1 as §;#_§;
            if(_loc6_.getRefId() != 0 && param2 == 0)
            {
               return null;
            }
            if(_loc6_.getRefId() != 0)
            {
               for each(_loc5_ in §+$!§())
               {
                  if(_loc6_.getRefId() == _loc5_.getId())
                  {
                     return null;
                  }
               }
            }
            else if(_loc6_.getInfinite())
            {
               for each(_loc5_ in §+$!§())
               {
                  if(!_loc5_.isInfinite() && §;#_§(_loc5_.getRecord()).getRefId() == _loc6_.getId())
                  {
                     this.§2$I§(_loc5_.getId());
                  }
               }
            }
            if(§+$!§()[_loc6_.getId()])
            {
               this.§2$I§(_loc6_.getId(),-1,false);
            }
            _loc7_ = super.§0%8§(param1,param2,param3,param4);
            _loc7_.§-?§();
            return _loc7_;
         }
         return null;
      }
      
      override public function §2$I§(param1:int, param2:int = -1, param3:Boolean = true) : void
      {
         super.§2$I§(param1,param2);
         if((§8&E§(param1) == null || §8&E§(param1).isEmpty()) && param3)
         {
            this.§ %7§().remove(param1);
         }
      }
      
      public function §-#7§(param1:Array) : void
      {
         var _loc2_:WeaponStructure = null;
         var _loc3_:BackpackItem = null;
         var _loc4_:§;#_§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = §8&E§(_loc2_.getId());
            if(_loc3_)
            {
               _loc4_ = §;#_§(_loc3_.getRecord());
               if(!_loc3_.isInfinite() || _loc4_.§]!C§() > 0)
               {
                  _loc3_.setCount(_loc3_.getCount() - _loc2_.getCount());
                  if(_loc3_.isEmpty())
                  {
                     this.§2$I§(_loc3_.getId());
                  }
               }
            }
         }
      }
      
      public function §2$=§(param1:UserProfile) : §;#X§
      {
         return §;#X§.§!%9§(this.§ %7§(),this);
      }
      
      public function § %7§() : §#$R§
      {
         if(this.layouts.length == 0 || !this.layouts[this.§2%v§])
         {
            this.layouts[this.§2%v§] = §@$l§.§2#p§(this);
         }
         return this.layouts[this.§2%v§];
      }
      
      public function §^"x§(param1:int) : §#$R§
      {
         if(param1 < 0 || param1 > §#$R§.§"$S§ - 1)
         {
            return null;
         }
         if(this.layouts.length == 0 || !this.layouts[param1])
         {
            this.layouts[param1] = §@$l§.§2#p§(this);
         }
         return this.layouts[param1];
      }
      
      public function §4#n§() : §#$R§
      {
         return this.§^"x§(this.§2%v§);
      }
      
      public function §%!§(param1:§#$R§) : void
      {
         this.layouts[this.§2%v§] = param1;
      }
      
      public function §-&,§(param1:int, param2:Boolean = false, param3:Function = null) : void
      {
         var _loc4_:Boolean = this.§2%v§ != param1;
         this.§2%v§ = param1;
         if(_loc4_ && param2)
         {
            §@$l§.§@$5§(param3);
         }
         else if(param3 != null)
         {
            param3();
         }
      }
      
      public function §;#@§() : int
      {
         return this.§2%v§;
      }
      
      private function §5#X§() : uint
      {
         var _loc3_:uint = 0;
         var _loc1_:uint = 0;
         var _loc2_:Vector.<uint> = this.§ %7§().getWeapons();
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_ > 0)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §@&0§(param1:Array) : void
      {
         this.layouts = param1;
      }
      
      public function §;$!§(param1:Array, param2:int) : void
      {
         this.§@&0§(param1);
         this.§-&,§(param2);
      }
      
      public function §4"G§() : Array
      {
         return this.layouts;
      }
      
      public function §]K§() : int
      {
         return §#$R§.§0%&§ - this.§5#X§();
      }
   }
}


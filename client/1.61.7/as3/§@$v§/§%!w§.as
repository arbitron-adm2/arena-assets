package §@$v§
{
   import § !8§.§`!d§;
   import § "d§.§,!c§;
   import § #k§.*;
   import § $q§.§3U§;
   import § &5§.§!$#§;
   import §!$d§.§<$c§;
   import §!K§.§&#Q§;
   import §#"V§.§8"@§;
   import §#%!§.§ §;
   import §#%!§.§7V§;
   import §#%!§.§=-§;
   import §#%!§.§[%U§;
   import §#P§.§`o§;
   import §%"1§.§7#P§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%# §.*;
   import §%L§.§%%w§;
   import §&!m§.§-$6§;
   import §&#h§.§-"F§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §'!Z§.§]!&§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§ #R§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-@§.*;
   import §0!§.§9"u§;
   import §0!§.§[k§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1#p§.§2=§;
   import §2!-§.NewUnitEvent;
   import §2!0§.§%$t§;
   import §2!0§.§'$x§;
   import §2!0§.§-"Y§;
   import §2!0§.§=&%§;
   import §2#i§.§+%z§;
   import §2#s§.*;
   import §2B§.§#&E§;
   import §3#a§.§-!`§;
   import §4$b§.§6!G§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5"J§.§4!m§;
   import §6",§.§[%w§;
   import §65§.§6%E§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §<!^§.§["l§;
   import §<%k§.§`!v§;
   import §<K§.RatingTabAllTime;
   import §=&!§.§]$d§;
   import §=7§.§?%4§;
   import §?#g§.§&"P§;
   import §?#g§.Race;
   import §?$L§.§ "N§;
   import §?$L§.§0"-§;
   import §?>§.§0!7§;
   import §?>§.§4#o§;
   import §@!N§.§-!Y§;
   import §@!N§.§2"e§;
   import §@<§.*;
   import §[$<§.§;%S§;
   import §[$P§.§+H§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`%&§.§@&,§;
   import com.greensock.TweenMax;
   import config.§5%T§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.*;
   import ru.pragmatix.wormix.gui.menu.rating.§ %`§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.menu.rating.RatingWindow;
   import ru.pragmatix.wormix.messages.client.GetRating;
   import ru.pragmatix.wormix.messages.server.ArenaResult;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.server.BuyRaceResponse;
   import ru.pragmatix.wormix.messages.server.GetRatingResult;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardsStructure;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionDailyProgressTO;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.bonus.§^%'§;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §%!w§ extends §`&-§
   {
      
      private var mask:DisplayObject;
      
      private var §<$@§:int;
      
      private var §8m§:int;
      
      protected var maxValue:Number;
      
      protected var value:Number = 0;
      
      protected var §#$Q§:Boolean;
      
      protected var §`"<§:Boolean;
      
      private var §9!X§:Object = {};
      
      public function §%!w§(param1:DisplayObjectContainer, param2:Boolean = false, param3:Number = 1, param4:Boolean = false)
      {
         super(param1);
         this.mask = getChildByName("mask_panel");
         this.§<$@§ = this.mask.width;
         this.§8m§ = this.mask.height;
         this.maxValue = param3;
         this.§#$Q§ = param2;
         this.§`"<§ = param4;
      }
      
      private function update(param1:Object) : void
      {
         this.§[$'§(param1.value);
      }
      
      protected function §[$'§(param1:Number) : void
      {
         this.value = param1;
         if(this.§`"<§)
         {
            if(this.mask.width != this.§<$@§)
            {
               this.mask.width = this.§<$@§;
            }
            this.mask.height = this.§8m§ * Math.min(1,param1 / this.maxValue);
         }
         else
         {
            if(this.mask.height != this.§8m§)
            {
               this.mask.height = this.§8m§;
            }
            this.mask.width = this.§<$@§ * Math.min(1,param1 / this.maxValue);
         }
      }
      
      public function getValue() : Number
      {
         return this.value;
      }
      
      public function setValue(param1:Number) : void
      {
         if(this.§#$Q§)
         {
            TweenMax.killTweensOf(this.§9!X§);
            this.§9!X§.value = this.value;
            TweenMax.to(this.§9!X§,1,{
               "value":param1,
               "onUpdate":this.update,
               "onUpdateParams":[this.§9!X§]
            });
         }
         else
         {
            this.§[$'§(param1);
         }
      }
      
      public function §"D§() : Number
      {
         return this.maxValue;
      }
      
      public function §]"M§(param1:Number) : void
      {
         this.maxValue = param1;
      }
      
      public function §!#A§() : Boolean
      {
         return this.§#$Q§;
      }
      
      public function §%%M§(param1:Boolean) : void
      {
         this.§#$Q§ = param1;
      }
      
      public function get §,"2§() : Boolean
      {
         return this.§`"<§;
      }
      
      public function set §,"2§(param1:Boolean) : void
      {
         this.§`"<§ = param1;
      }
   }
}


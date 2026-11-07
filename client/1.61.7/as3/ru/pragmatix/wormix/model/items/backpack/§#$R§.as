package ru.pragmatix.wormix.model.items.backpack
{
   import § #9§.§9j§;
   import § #m§.§[&H§;
   import § &5§.§=#P§;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §!L§.§7%0§;
   import §"!C§.§2v§;
   import §"!C§.§3#n§;
   import §"%H§.§1! §;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%# §.§##U§;
   import §%L§.§%%w§;
   import §&"R§.§`&7§;
   import §&#E§.§;"v§;
   import §&#E§.§>"4§;
   import §&#h§.*;
   import §&%7§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.§'-§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+$=§.§;!d§;
   import §+%S§.§["4§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §-@§.*;
   import §0!§.§8$Y§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%j§.§#!U§;
   import §0%j§.§-,§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2"L§.§,'§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §3#a§.§-#M§;
   import §4'§.§^"p§;
   import §5!,§.§9$h§;
   import §5$]§.§3& §;
   import §5%S§.§>&-§;
   import §6"'§.§9$Z§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §8#<§.§!#^§;
   import §8$V§.§`"c§;
   import §9&+§.§>&5§;
   import §;!J§.§8!a§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §<!W§.§9%,§;
   import §<$2§.§+$9§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §<K§.*;
   import §=!p§.§8#x§;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §?#g§.§-!k§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$K§.§=z§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?>§.§0!7§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@$§.§+%>§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^#[§.SpeedhackDetectedEvent;
   import §^4§.§@#J§;
   import §^4§.§]"8§;
   import api.com.odnoklassniki.*;
   import api.com.odnoklassniki.net.OdnoklassnikiRequest;
   import com.greensock.TweenLite;
   import com.greensock.loading.*;
   import com.greensock.loading.core.LoaderCore;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.EnterAccount;
   import ru.pragmatix.wormix.messages.server.GetQuestProgressResult;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.pvp.messages.server.*;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FacebookBankController;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.interfaces.§##=§;
   
   public class §#$R§
   {
      
      public static const §"#F§:uint = 0;
      
      public static const §,%h§:uint = 1;
      
      public static const §-%p§:uint = 2;
      
      public static const §8d§:uint = 3;
      
      public static const §^!p§:uint = 4;
      
      public static const §#E§:uint = 5;
      
      public static const §1!L§:uint = 6;
      
      public static const §"$S§:uint = 7;
      
      public static const §><§:uint = 10;
      
      public static const §5$4§:uint = 8;
      
      public static const §0%&§:uint = §><§ * §5$4§;
      
      private var layout:Vector.<uint>;
      
      private var §<!%§:Boolean = true;
      
      public function §#$R§(param1:Array, param2:uint = 80, param3:Boolean = true)
      {
         super();
         §@$l§.§<=§(param1);
         this.layout = new Vector.<uint>(param2,true);
         this.§<!%§ = param3;
         var _loc4_:int = 0;
         var _loc5_:int = int(param1.length);
         while(_loc4_ < _loc5_)
         {
            if(_loc4_ >= param2)
            {
               break;
            }
            this.layout[_loc4_] = this.§@#[§(param1[_loc4_]);
            _loc4_++;
         }
      }
      
      public static function §,p§(param1:uint, param2:uint = 1) : int
      {
         switch(param1)
         {
            case §-"P§.§"#p§:
               switch(param2)
               {
                  case 1:
                     return §"#F§;
                  case 2:
                     return §,%h§;
                  case 3:
                     return §-%p§;
                  case 4:
                     return §8d§;
               }
               break;
            case §-"P§.§'$L§:
            case §-"P§.§,$^§:
               return §8d§;
            case §-"P§.§"!0§:
               return §-%p§;
            case §-"P§.§>!x§:
               return §8d§;
            case §-"P§.§68§:
               return §"#F§;
            case §-"P§.§3%k§:
            case §-"P§.§&$'§:
               return §^!p§;
         }
         return Application.userProfile.§3%^§().§;#@§();
      }
      
      public function getWeapons() : Vector.<uint>
      {
         return this.layout.concat();
      }
      
      public function §="h§(param1:Boolean = false) : uint
      {
         var _loc3_:uint = 0;
         var _loc4_:BackpackItem = null;
         var _loc2_:int = 0;
         for each(_loc3_ in this.layout)
         {
            if(_loc3_ > 0)
            {
               if(param1)
               {
                  _loc2_++;
               }
               else
               {
                  _loc4_ = Application.userProfile.§3%^§().§8&E§(_loc3_) || §1!S§.§@!&§(_loc3_,Application.userProfile.§3%^§());
                  if((Boolean(_loc4_)) && _loc4_.isInfinite())
                  {
                     _loc2_++;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function contains(param1:uint) : Boolean
      {
         var _loc2_:uint = 0;
         param1 = this.§@#[§(param1);
         for each(_loc2_ in this.layout)
         {
            if(_loc2_ == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function push(param1:uint) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(param1 > 0)
         {
            _loc2_ = 0;
            _loc3_ = int(this.layout.length);
            while(_loc2_ < _loc3_)
            {
               if(this.layout[_loc2_] == 0)
               {
                  this.layout[_loc2_] = this.§@#[§(param1);
                  return true;
               }
               _loc2_++;
            }
         }
         return false;
      }
      
      public function indexOf(param1:uint) : int
      {
         var _loc2_:int = int(this.§@#[§(param1));
         var _loc3_:int = 0;
         var _loc4_:int = int(this.layout.length);
         while(_loc3_ < _loc4_)
         {
            if(this.layout[_loc3_] == _loc2_)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      public function §9$]§(param1:uint, param2:uint) : void
      {
         if(param2 >= 0 && param2 < this.layout.length)
         {
            this.layout[param2] = this.§@#[§(param1);
         }
      }
      
      public function swap(param1:uint, param2:uint) : void
      {
         var _loc5_:uint = 0;
         var _loc3_:int = this.indexOf(param1);
         var _loc4_:int = this.indexOf(param2);
         if(_loc3_ != -1 && _loc4_ != -1)
         {
            _loc5_ = this.layout[_loc3_];
            this.layout[_loc3_] = this.layout[_loc4_];
            this.layout[_loc4_] = _loc5_;
         }
      }
      
      public function remove(param1:uint) : void
      {
         var _loc2_:int = this.indexOf(param1);
         if(_loc2_ != -1)
         {
            this.layout[_loc2_] = 0;
         }
      }
      
      public function clone() : §#$R§
      {
         var _loc2_:uint = 0;
         var _loc1_:Array = [];
         for each(_loc2_ in this.layout)
         {
            _loc1_.push(_loc2_);
         }
         return new §#$R§(_loc1_,_loc1_.length,this.§<!%§);
      }
      
      public function §[!d§(param1:Vector.<uint>) : Boolean
      {
         var _loc2_:int = int(this.layout.length);
         if(_loc2_ != param1.length)
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(param1[_loc3_] != this.layout[_loc3_])
            {
               return false;
            }
            _loc3_++;
         }
         return true;
      }
      
      public function §7#1§(param1:Boolean) : void
      {
         this.§<!%§ = param1;
      }
      
      private function §@#[§(param1:uint) : uint
      {
         return this.§<!%§ ? uint(§@$l§.§]J§(param1)) : param1;
      }
      
      public function §^$o§() : Array
      {
         return §""L§.§,"=§(this.layout);
      }
      
      public function §2t§() : Boolean
      {
         return this.§"x§() > 0;
      }
      
      public function §"x§() : int
      {
         var rows:int;
         var weightLimit:uint;
         var weightCapacityLeft:int;
         var weightSum:int;
         var i:int;
         var columns:int = 0;
         var rowsLimit:int = 0;
         var cellsLimit:int = 0;
         var str:String = null;
         var j:int = 0;
         var cellNum:int = 0;
         var item:BackpackItem = null;
         var getOrderedWeapons:Function = function():Vector.<BackpackItem>
         {
            var _loc3_:int = 0;
            var _loc1_:Vector.<BackpackItem> = new Vector.<BackpackItem>(0);
            var _loc2_:Vector.<uint> = getWeapons();
            for each(_loc3_ in _loc2_)
            {
               _loc1_.push(§1!S§.§@!&§(_loc3_,Application.userProfile.§3%^§()));
            }
            return _loc1_;
         };
         var weapons:Vector.<BackpackItem> = getOrderedWeapons();
         var layoutId:int = Application.userProfile.§3%^§().§4"G§().indexOf(this);
         var squadLength:int = 4;
         switch(layoutId)
         {
            case §#$R§.§"#F§:
               squadLength = 1;
               break;
            case §#$R§.§,%h§:
               squadLength = 2;
               break;
            case §#$R§.§-%p§:
               squadLength = 3;
         }
         rows = int(§#$R§.§5$4§);
         columns = int(§#$R§.§><§);
         rowsLimit = Math.min(4 + squadLength,§#$R§.§5$4§);
         cellsLimit = rowsLimit * columns;
         weightLimit = cellsLimit * §;#_§.§+Y§.value;
         weightCapacityLeft = int(weightLimit);
         weightSum = 0;
         i = 0;
         while(i < rows)
         {
            str = i + " line ";
            j = 0;
            while(j < columns)
            {
               cellNum = j + columns * i;
               item = weapons[cellNum];
               if(item)
               {
                  weightSum += item.getRecord().§9#p§();
                  weightCapacityLeft -= item.getRecord().§9#p§();
                  if(weightSum > weightLimit)
                  {
                     str += cellNum + "b, ";
                  }
                  else
                  {
                     str += cellNum + ", ";
                  }
               }
               else
               {
                  if(!(weightSum > weightLimit || weightCapacityLeft <= 0))
                  {
                     weightCapacityLeft -= §;#_§.§+Y§.value;
                  }
                  str += cellNum + "-, ";
               }
               j++;
            }
            i++;
         }
         return weightLimit - weightSum;
      }
   }
}


package §5"J§
{
   import §!$d§.§<$c§;
   import §#"V§.§8"@§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'"N§.*;
   import §,#_§.FrameTimer;
   import §-@§.§3%9§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.*;
   import §2"L§.§,!t§;
   import §2#i§.§+%z§;
   import §4'§.§`"q§;
   import §6"'§.§&"3§;
   import §7"Q§.*;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §8#o§.§1@§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §<%k§.§`!v§;
   import §=;§.§>%>§;
   import §@!N§.§""L§;
   import §@<§.§+%]§;
   import §]#[§.§2%o§;
   import §^#[§.§&$2§;
   import §`%&§.§2z§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.DeleteClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.response.DeleteClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §7@§
   {
      
      public static const §89§:§&$2§ = new §&$2§(3);
      
      public static const §%"3§:Vector.<WeaponStructure> = new <WeaponStructure>[new WeaponStructure(§+%z§.ANTITOXIN,2),new WeaponStructure(§+%z§.BANDAGE,2)];
      
      protected static const §-%^§:Array = [[§+%z§.BAZOOKA,-1],[§+%z§.GRENADE,-1],[§+%z§.RIFLE,-1],[§+%z§.BLOW_TORCH,-1],[§+%z§.ROPE,3]];
      
      private static const §]#d§:Array = [[§+%z§.ANTITOXIN,2],[§+%z§.BANDAGE,2]];
      
      private static const §[#8§:Array = [[§+%z§.SUPER_DRILL_MISSILE,2],[§+%z§.STICKY_MINE,2],[§+%z§.ANTIDOTE,2],[§+%z§.ADRENALINE,2],[§+%z§.FOUL_WATERMELON,2],[§+%z§.ARTILLERY,2],[§+%z§.§;%Z§,2],[§+%z§.DOCTOR_BAG,2],[§+%z§.§&$x§,2]];
      
      private static const §!$m§:Array = [].concat([§+%z§.BAZOOKA,§+%z§.GRENADE,§+%z§.RIFLE,§+%z§.BLOW_TORCH]).concat(§+%z§.§=#O§).concat(§+%z§.§5&$§).concat(§+%z§.§9"p§).concat(§+%z§.§+#l§).concat(§+%z§.§!#d§);
      
      private static const §-$5§:Array = [§+%z§.§]h§,§+%z§.LASER_BARRIER_UPG_1,§+%z§.LASER_BARRIER_UPG_2];
      
      private static const §#O§:Array = [§+%z§.SWITCH_TURN,§+%z§.§&$x§];
      
      private static const §<#B§:Array = [];
      
      private static const §<!X§:Array = [];
      
      public function §7@§()
      {
         var _loc1_:Object = null;
         var _loc2_:§;#_§ = null;
         super();
         if(§<#B§.length == 0)
         {
            _loc1_ = §<$c§.getWeapons();
            for each(_loc2_ in _loc1_)
            {
               if(_loc2_.getId() < 300 && !_loc2_.bossWeapon && §!$m§.indexOf(_loc2_.getId()) == -1)
               {
                  §<#B§.push(_loc2_.getId());
               }
            }
         }
      }
      
      private static function §'"U§(param1:§;#X§, param2:§6#Q§, param3:uint) : WeaponStructure
      {
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:BackpackItem = null;
         var _loc9_:BackpackItem = null;
         var _loc4_:int = 0;
         do
         {
            _loc6_ = §""L§.§=!W§(§<#B§,§8"%§.randomSeed);
            _loc7_ = param3 != 1 || §#O§.indexOf(_loc6_) == -1;
            if(_loc7_)
            {
               _loc8_ = §1!S§.§@!&§(_loc6_,param1);
               _loc9_ = §1!S§.§@!&§(_loc6_,param2);
               if(Boolean(_loc8_) || Boolean(_loc9_))
               {
                  if(§+"j§(_loc8_,_loc9_))
                  {
                     _loc4_ = _loc8_ ? _loc8_.getId() : _loc9_.getId();
                  }
               }
               else
               {
                  _loc4_ = int(§]#D§(_loc6_));
               }
            }
         }
         while(_loc4_ == 0);
         var _loc5_:uint = §-$5§.indexOf(_loc4_) == -1 ? 1 : 2;
         return new WeaponStructure(_loc4_,_loc5_);
      }
      
      private static function §+"j§(param1:BackpackItem, param2:BackpackItem) : Boolean
      {
         var _loc3_:int = (param1 ? param1.getCount() : 0) + (param2 ? param2.getCount() : 0);
         var _loc4_:int = param1 ? param1.getId() : param2.getId();
         var _loc5_:int = int(§<$c§.§ !=§(_loc4_).§]!C§());
         return _loc5_ == 0 || _loc3_ < _loc5_;
      }
      
      private static function §]#D§(param1:uint) : uint
      {
         var _loc3_:Vector.<int> = null;
         var _loc2_:§&"3§ = §1@§.§&%u§(param1);
         if(_loc2_)
         {
            _loc3_ = _loc2_.§!"_§;
            return _loc3_[int(§8"%§.randomSeed.§,!q§(0,_loc3_.length - 1))];
         }
         return param1;
      }
      
      public function § "a§(param1:uint) : void
      {
         if(param1 == 1)
         {
            this.§'$'§();
         }
         this.§35§();
      }
      
      private function §'$'§() : void
      {
         var _loc3_:§"Z§ = null;
         var _loc1_:Array = §8"%§.§?!W§.§4"m§.§+!0§();
         var _loc2_:§3%9§ = §8"%§.§%$r§;
         for each(_loc3_ in _loc1_)
         {
            if(§8"%§.§?!W§.§^!U§().§@%&§())
            {
               if(§4! §.isMe(_loc3_.§&!G§()))
               {
                  this.§[!8§(_loc3_.getNumber(),_loc2_.winCount,_loc2_.defeatCount);
               }
               else
               {
                  this.§[!8§(_loc3_.getNumber(),_loc2_.§,$f§.winCount,_loc2_.§,$f§.defeatCount);
               }
            }
            _loc3_.§&!G§().§>%q§(this.§%#k§(_loc3_.§&!G§().§3%^§(),_loc3_.getNumber()));
         }
      }
      
      private function §[!8§(param1:int, param2:uint, param3:uint) : void
      {
         var _loc4_:Array = §-%^§.concat(§]#d§);
         §<!X§[param1] = _loc4_;
      }
      
      protected function §%#k§(param1:§'"-§, param2:int) : §;#X§
      {
         var _loc5_:Array = null;
         var _loc6_:BackpackItem = null;
         var _loc7_:int = 0;
         var _loc3_:§;#X§ = new §;#X§();
         var _loc4_:Array = §8"%§.§?!W§.§^!U§().§@%&§() ? §<!X§[param2] : §-%^§;
         for each(_loc5_ in _loc4_)
         {
            _loc6_ = §1!S§.§@!&§(_loc5_[0],param1);
            if(_loc6_)
            {
               if(_loc5_[1] == -1)
               {
                  _loc7_ = _loc6_.getCount();
               }
               else
               {
                  _loc7_ = _loc6_.getCount() >= 0 ? int(Math.min(_loc5_[1],_loc6_.getCount())) : int(_loc5_[1]);
               }
               _loc3_.§0%8§(_loc6_.getRecord(),_loc7_,_loc6_.§]!C§());
            }
         }
         return _loc3_;
      }
      
      private function §35§() : void
      {
         var _loc1_:§]$;§ = null;
         var _loc2_:§;#X§ = null;
         var _loc3_:§+%]§ = null;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:Vector.<WeaponStructure> = null;
         _loc1_ = §8"%§.§?!W§.§4"m§;
         _loc2_ = _loc1_.§+"@§().getBattleBackpack();
         _loc3_ = _loc1_.activeUnit;
         _loc4_ = _loc1_.activeSquad.§'"H§();
         _loc5_ = Math.max(_loc4_,§89§.value);
         _loc6_ = this.§9&8§(_loc2_,_loc5_,_loc4_);
         var _loc7_:§>%>§ = new §>%>§(new Point(_loc3_.x,_loc3_.y),_loc6_);
         _loc7_.§6y§(_loc3_.squad);
      }
      
      protected function §9&8§(param1:§;#X§, param2:uint, param3:uint) : Vector.<WeaponStructure>
      {
         var _loc7_:int = 0;
         var _loc4_:§6#Q§ = new §6#Q§();
         var _loc5_:Vector.<WeaponStructure> = new Vector.<WeaponStructure>();
         var _loc6_:int = 0;
         while(_loc6_ < param2)
         {
            _loc5_[_loc6_] = §'"U§(param1,_loc4_,param3);
            _loc7_ = _loc4_.§ %n§(_loc5_[_loc6_].getId()) + _loc5_[_loc6_].getCount();
            _loc4_.§0%8§(§<$c§.§ !=§(_loc5_[_loc6_].getId()),_loc7_);
            _loc6_++;
         }
         return _loc5_;
      }
   }
}


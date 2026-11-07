package §=;§
{
   import §!$d§.§<$c§;
   import §##j§.§`%g§;
   import §%$!§.§9$p§;
   import §'!Z§.§1"-§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §3"_§.*;
   import §5#`§.§7%g§;
   import §6"'§.§&"3§;
   import §7$t§.§;#_§;
   import §8#o§.§1@§;
   import §;!Z§.*;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §[$<§.§;"E§;
   import §^#[§.§&$2§;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §>%>§ extends §@#3§
   {
      
      private var weapons:Vector.<WeaponStructure>;
      
      public function §>%>§(param1:Point, param2:Vector.<WeaponStructure>)
      {
         super(param1,null,1);
         this.weapons = param2;
      }
      
      override protected function §0$j§(param1:§+%]§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:§&"3§ = null;
         var _loc7_:§;#_§ = null;
         var _loc8_:int = 0;
         var _loc9_:BackpackItem = null;
         var _loc2_:§;#X§ = param1.squad.§?"#§().getBattleBackpack();
         var _loc3_:int = 0;
         while(_loc3_ < this.weapons.length)
         {
            _loc4_ = int(this.weapons[_loc3_].getId());
            _loc5_ = §;%5§ * (_loc3_ - length / 2) + 5 * _loc3_;
            var _temp_1:* = §1@§.§&%u§(_loc4_);
            _loc6_ = §1@§.§&%u§(_loc4_);
            if(_loc6_)
            {
               for each(_loc8_ in _loc6_.§!"_§)
               {
                  _loc9_ = _loc2_.§8&E§(_loc8_);
                  if(_loc9_)
                  {
                     _loc4_ = _loc9_.getId();
                  }
               }
            }
            _loc7_ = §<$c§.§ !=§(_loc4_);
            §7%g§.§?!]§(param1,_loc7_,this.weapons[_loc3_].getCount());
            §1"-§.§3#=§(_loc7_.getMenuIcon(),x + _loc5_,y,§;%5§,60);
            _loc3_++;
         }
      }
   }
}


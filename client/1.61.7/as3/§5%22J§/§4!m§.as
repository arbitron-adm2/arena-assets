package §5"J§
{
   import §"!C§.§3#n§;
   import §#k§.§9$v§;
   import §%$[§.§!#l§;
   import §%$[§.§1$J§;
   import §&!m§.§-$6§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §1#p§.§"Z§;
   import §4!K§.§^%A§;
   import §6"'§.§9$Z§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §<%c§.§>!^§;
   import §@<§.§+%]§;
   import §]#[§.§2%o§;
   import §^#[§.§?"&§;
   import §`%&§.§@&,§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.server.ChooseBonusItemResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §4!m§
   {
      
      private static const §5%l§:int = 19;
      
      private var §[z§:§^%A§;
      
      private var §1!g§:uint;
      
      private var §4"C§:int;
      
      private var mapRecord:§9$Z§;
      
      private var §]]§:String;
      
      public function §4!m§(param1:String, param2:§9$Z§)
      {
         super();
         this.mapRecord = param2;
         this.§]]§ = param1;
      }
      
      public function § "a§(param1:uint) : void
      {
         var _loc4_:§"Z§ = null;
         var _loc8_:§+%]§ = null;
         var _loc2_:Vector.<§"Z§> = §8"%§.§?!W§.§4"m§.§4$C§();
         var _loc3_:int = 0;
         for each(_loc4_ in _loc2_)
         {
            if(!_loc4_.§^$b§() && _loc4_.§'"H§() > 0)
            {
               _loc3_++;
            }
         }
         if(param1 == 1)
         {
            this.§[z§ = §^%A§.create(this.§]]§,this.mapRecord);
            §8"%§.§?!W§.§!#S§(§0$N§.ZONE_ACTIVATED);
            this.§1!g§ = Application.scene.§7#o§.§1"§.§<#-§(§2%o§.§6,§,§0$N§.ZONE_ACTIVATED);
         }
         else
         {
            if(_loc3_ < this.§4"C§)
            {
               this.§[z§.§@!$§();
            }
            if(param1 >= _loc3_ && (param1 - 1) % _loc3_ == 0)
            {
               this.§[z§.§6!2§();
            }
         }
         if(param1 == §5%l§ + 1)
         {
            §8"%§.§?!W§.§!#S§(§0$N§.RED_ZONE_ACTIVATED);
            Application.scene.§7#o§.§1"§.§]& §(this.§1!g§);
            this.§1!g§ = Application.scene.§7#o§.§1"§.§<#-§(§2%o§.§5m§,§0$N§.RED_ZONE_ACTIVATED);
            this.§[z§.§3^§();
         }
         this.§4"C§ = _loc3_;
         var _loc5_:Vector.<§+%]§> = this.§[z§.§#%J§();
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         for each(_loc8_ in _loc5_)
         {
            if(_loc8_.buffs.hasBuff(§1$J§.NAME))
            {
               _loc8_.buffs.§6C§(§1$J§.NAME);
               _loc6_++;
            }
            if(!_loc8_.buffs.hasBuff(§!#l§.NAME))
            {
               _loc8_.buffs.place(new §!#l§(this.§[z§));
               _loc7_++;
            }
         }
      }
      
      public function §6&§(param1:uint) : void
      {
         var _loc3_:§]$;§ = null;
         var _loc6_:§+%]§ = null;
         var _loc7_:Vector.<§+%]§> = null;
         var _loc8_:int = 0;
         var _loc9_:Vector.<§+%]§> = null;
         var _loc10_:int = 0;
         var _loc2_:Boolean = §8"%§.§?!W§.§^!U§().§+#<§();
         _loc3_ = §8"%§.§?!W§.§4"m§;
         var _loc4_:§+%]§ = §>!^§.currentUnit;
         var _loc5_:Boolean = _loc3_.activeSquad.isLocal();
         if(_loc5_)
         {
            _loc7_ = this.§[z§.§#%J§();
            _loc8_ = 0;
            for each(_loc6_ in _loc3_.§5#h§())
            {
               if(_loc7_.indexOf(_loc6_) == -1 && !_loc6_.§+&,§(_loc4_))
               {
                  if(_loc6_.buffs.hasBuff(§!#l§.NAME))
                  {
                     _loc6_.buffs.§6C§(§!#l§.NAME);
                     _loc6_.buffs.place(new §1$J§(_loc4_,this.§[z§));
                     _loc8_++;
                  }
               }
            }
            if(_loc2_ && _loc8_ > 0)
            {
               §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§%"x§,_loc8_);
            }
         }
         if(param1 > §5%l§)
         {
            _loc9_ = this.§[z§.§^"w§(_loc4_);
            if(!_loc5_)
            {
               _loc10_ = 0;
               for each(_loc6_ in _loc9_)
               {
                  if(_loc6_.§+&,§(_loc4_) && _loc6_.buffs.hasBuff(§1$J§.NAME))
                  {
                     _loc10_++;
                  }
               }
               if(_loc2_ && _loc10_ > 0)
               {
                  §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§@#1§,_loc10_);
               }
            }
            for each(_loc6_ in _loc9_)
            {
               §1"-§.explode(§;n§.§@"W§,_loc6_.x,_loc6_.y,10);
               _loc6_.disposed = true;
            }
         }
      }
   }
}


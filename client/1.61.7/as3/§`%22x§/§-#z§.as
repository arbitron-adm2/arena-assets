package §`"x§
{
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §3#a§.§-#M§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §="z§.§9%1§;
   import §@<§.§+%]§;
   import §[$<§.§;%S§;
   import §[$<§.§>"9§;
   import §]$v§.§1>§;
   import §^#[§.§?"&§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.getTimer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetBundles;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.GetBundlesResult;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.messages.structures.SimpleProfileStructure;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §-#z§
   {
      
      private var §?L§:Vector.<§'%#§> = new Vector.<§'%#§>(0);
      
      private var §?$[§:String;
      
      public function §-#z§()
      {
         super();
         this.§?$[§ = §8"%§.§[f§.§>#8§();
      }
      
      public function §0R§(param1:Vector.<§'%#§>) : void
      {
         this.§?L§ = this.§?L§.concat(param1);
      }
      
      public function search(param1:String) : Vector.<§'%#§>
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:§'%#§ = null;
         var _loc2_:Vector.<§'%#§> = new Vector.<§'%#§>(0);
         for each(_loc5_ in this.§?L§)
         {
            param1 = this.§7"q§(param1);
            _loc3_ = _loc5_.§"%D§();
            if(_loc3_ == param1)
            {
               _loc2_.push(_loc5_);
               break;
            }
            _loc4_ = _loc5_.§#$5§() + " " + _loc5_.§8!_§();
            _loc4_ = _loc4_.toLowerCase();
            if(_loc4_.indexOf(param1) != -1)
            {
               _loc2_.push(_loc5_);
            }
            else if(_loc5_.§6#2§())
            {
               _loc4_ = _loc5_.§6#2§().toLowerCase();
               if(_loc4_.indexOf(param1) != -1)
               {
                  _loc2_.push(_loc5_);
               }
            }
         }
         return _loc2_;
      }
      
      private function §7"q§(param1:String) : String
      {
         if(this.§?$[§ != "")
         {
            return param1.replace(this.§?$[§,"");
         }
         return param1;
      }
   }
}


package §4#`§
{
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §"$+§.§^$`§;
   import §&#h§.*;
   import §+%S§.*;
   import §0&F§.§0%v§;
   import §0&F§.UpgradeEvent;
   import §2"v§.§@G§;
   import §2#i§.§+%z§;
   import §5!,§.§+"_§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §=&!§.§]$d§;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import com.greensock.loading.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §3!H§ extends §`&-§
   {
      
      private var §=$f§:§""a§;
      
      private var §""§:§""a§;
      
      private var §?Y§:§""a§;
      
      public function §3!H§()
      {
         var _loc1_:MovieClip = new MovieClip();
         super(_loc1_);
         this.§=$f§ = new §""a§(§+"'§.§-%U§,§+"'§.§!$'§,"AmUnspend",§9$h§.§,h§);
         this.§""§ = new §""a§(§+"'§.§;$z§,§+"'§.§8"d§,"AmConsume",§?!P§.§5%'§);
         this.§?Y§ = new §""a§(§+"'§.§1$e§,§+"'§.§?$@§,"RopeTip",§+"_§.§,h§);
         addChild(this.§=$f§);
         addChild(this.§""§);
         addChild(this.§?Y§);
      }
      
      public function update(param1:§+%]§) : void
      {
         var _loc2_:§]$d§ = null;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:int = 0;
         var _loc11_:§+"_§ = null;
         var _loc12_:§9$h§ = null;
         var _loc13_:§?!P§ = null;
         _loc2_ = §8"%§.§?!W§.§^!U§();
         var _loc3_:Boolean = _loc2_.§=M§();
         var _loc4_:Boolean = _loc2_.§^"9§();
         var _loc5_:Boolean = _loc2_.§;#D§();
         if(Boolean(!param1.squad.isAi() && param1.weapon) && (Boolean(param1.weapon.getProperty("unspendingTurn") || param1.weapon.getProperty("consumable") || param1.weapon.getProperty("seasonal"))) && (_loc3_ || _loc4_ || _loc5_))
         {
            _loc6_ = §1!S§.§[!r§(param1.weapon.recordId.value) == §+%z§.ROPE;
            _loc7_ = Boolean(param1.weapon.getProperty("unspendingTurn"));
            _loc8_ = Boolean(param1.weapon.getProperty("consumable"));
            _loc9_ = Boolean(param1.weapon.getProperty("seasonal"));
            _loc10_ = 0;
            if(_loc3_ && _loc6_)
            {
               _loc11_ = §+"_§.§8z§(param1);
               if(_loc11_)
               {
                  _loc10_ = _loc11_.used;
               }
               this.§?Y§.§?$e§(_loc10_);
               this.§?Y§.setVisible(true);
               this.§=$f§.setVisible(false);
               this.§""§.setVisible(false);
               setVisible(true);
            }
            else if(_loc4_ && !_loc6_ && _loc7_)
            {
               _loc12_ = §9$h§.§8z§(param1);
               if(_loc12_)
               {
                  _loc10_ = _loc12_.used;
               }
               this.§=$f§.§?$e§(_loc10_);
               this.§=$f§.setVisible(true);
               this.§""§.setVisible(false);
               this.§?Y§.setVisible(false);
               setVisible(true);
            }
            else if(_loc5_ && !_loc6_ && (_loc8_ || _loc9_))
            {
               _loc13_ = §?!P§.§8z§(param1);
               if(_loc13_)
               {
                  _loc10_ = _loc13_.used;
               }
               this.§""§.§]!K§(§?!P§.§"!W§(param1.squad.§1!Y§));
               this.§""§.§?$e§(_loc10_);
               this.§""§.setVisible(true);
               this.§=$f§.setVisible(false);
               this.§?Y§.setVisible(false);
               setVisible(true);
            }
            else
            {
               setVisible(false);
            }
         }
         else
         {
            setVisible(false);
         }
      }
   }
}


package §-I§
{
   import § #m§.§;#^§;
   import § &5§.§0&$§;
   import §!$D§.§2$^§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#%!§.*;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&#E§.*;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'"N§.*;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §3"@§.§##L§;
   import §3"_§.§?#w§;
   import §4!K§.§^%A§;
   import §4!x§.§@& §;
   import §4'§.§#"l§;
   import §5!,§.§9$h§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §7!B§.§1"?§;
   import §7$t§.§2"y§;
   import §7$t§.§;#_§;
   import §9&+§.§6&=§;
   import §<$q§.§?!d§;
   import §<%E§.§=$u§;
   import §<%k§.§`!v§;
   import §=!C§.§0"l§;
   import §=!p§.§8#x§;
   import §?>§.§'!=§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^!]§.§-$w§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §`"p§.*;
   import §`#x§.§"$r§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import ru.pragmatix.flox.gui.controls.§%%v§;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§-$]§;
   import ru.pragmatix.wormix.game.§1W§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §'&,§
   {
      
      private static const §-$_§:Vector.<int> = new <int>[§+%z§.§5-§,§+%z§.§!%D§];
      
      private var log:§&`§ = new §&`§(§'&,§);
      
      private var §-!>§:§-$]§;
      
      private var §>!@§:IEventDispatcher;
      
      private var §@z§:§1W§;
      
      public function §'&,§(param1:§-$]§, param2:IEventDispatcher, param3:§?!d§)
      {
         super();
         this.§-!>§ = param1;
         this.§>!@§ = param2;
         this.§@z§ = new §1W§(param3);
         param2.addEventListener(§0%v§.SOT,this.§>",§);
         param2.addEventListener(§0%v§.WEAPON_SHOOT,this.§7"O§);
         param2.addEventListener(§0%v§.WEAPON_RESTORE,this.§;Z§);
      }
      
      private function §>",§(param1:Event) : void
      {
         var _loc2_:UserProfile = this.§-!>§.§+"@§();
         if(this.§-!>§.§=%g§() || this.§-!>§.§"%`§())
         {
            _loc2_.getBattleBackpack().§>",§();
         }
      }
      
      private function §7"O§(param1:WeaponShootEvent) : void
      {
         var _loc2_:UserProfile = null;
         var _loc3_:§;#X§ = null;
         var _loc4_:uint = 0;
         var _loc5_:BackpackItem = null;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:uint = 0;
         if(this.§-!>§.§=%g§() || this.§-!>§.§"%`§())
         {
            if(!this.§@z§.§&<§.value)
            {
               _loc2_ = this.§-!>§.§+"@§();
               _loc3_ = _loc2_.getBattleBackpack();
               _loc4_ = uint(param1.recordId);
               _loc5_ = _loc3_.§8&E§(_loc4_);
               if(_loc5_)
               {
                  _loc5_.§-&H§ = §-$_§.indexOf(_loc4_) == -1;
                  if(_loc3_.§3"3§(_loc4_) > 0)
                  {
                     _loc6_ = _loc4_ >= §9##§.§;9§;
                     _loc7_ = §7%g§.§3%E§(_loc4_);
                     if((_loc7_) && !_loc6_ && !_loc5_.isInfinite())
                     {
                        this.§@z§.record(_loc4_,_loc2_);
                     }
                     _loc3_.§1#%§(_loc4_);
                  }
                  _loc5_.§2#"§();
                  this.§9"v§(_loc5_);
                  if(!param1.stopsTimer && _loc5_.§1!9§)
                  {
                     _loc5_.§^"B§();
                  }
               }
               else
               {
                  this.log.error("Item not found: " + _loc4_.toString());
               }
               if(param1.stopsTimer)
               {
                  this.§@z§.§&<§.value = true;
               }
            }
         }
         if(!param1.hasShotsLeft)
         {
            if(this.§>!@§ is §0&$§)
            {
               if(param1.stopsTimer)
               {
                  §8"%§.§?!W§.§4"m§.§'%i§().stop();
                  this.§@z§.§"!#§.value = true;
               }
               else
               {
                  _loc8_ = 0;
                  §8"%§.§?!W§.§4"m§.§'%i§().§"%J§(_loc8_);
               }
            }
         }
         if(this.§-!>§.§=%g§() && !this.§@z§.§&<§.value && param1.stopsTimer)
         {
            Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+%"§,"weapon shots hacked 4"));
         }
      }
      
      private function §9"v§(param1:BackpackItem) : void
      {
         var _loc2_:Vector.<int> = null;
         var _loc3_:Vector.<int> = null;
         var _loc4_:§;#_§ = null;
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(!this.§-!>§.activeUnit.squad.isAi())
         {
            _loc2_ = new Vector.<int>(0);
            _loc3_ = new Vector.<int>(0);
            _loc4_ = §;#_§(param1.getRecord());
            _loc5_ = _loc4_.property["extraCooldownWeapons"];
            if(_loc5_)
            {
               for each(_loc6_ in _loc5_)
               {
                  _loc2_.push(_loc6_);
               }
               _loc2_ = §7%g§.§9"K§(this.§-!>§.activeUnit,_loc2_,false);
               for each(_loc7_ in _loc2_)
               {
                  _loc3_.push(_loc4_.property["extraCooldownValue"]);
               }
               §7%g§.§6!b§(this.§-!>§.activeUnit,_loc2_,_loc3_);
            }
            if(!param1.isEmpty() && param1.§&">§() > 0)
            {
               _loc2_.unshift(param1.getId());
               _loc3_.unshift(param1.§&">§());
            }
            if(_loc2_.length)
            {
               §7%g§.§`%i§(this.§-!>§.activeUnit,_loc2_,_loc3_);
            }
         }
      }
      
      private function §;Z§(param1:§-$w§) : void
      {
         var _loc2_:UserProfile = null;
         var _loc4_:BackpackItem = null;
         var _loc5_:Boolean = false;
         _loc2_ = this.§-!>§.§+"@§();
         var _loc3_:§;#X§ = _loc2_.getBattleBackpack();
         if(this.§-!>§.§=%g§() || this.§-!>§.§"%`§())
         {
            _loc4_ = _loc3_.§8&E§(param1.recordId);
            if((Boolean(_loc4_)) && (!_loc4_.isInfinite() || _loc4_.§&"4§()))
            {
               _loc5_ = _loc4_.getId() >= §9##§.§;9§;
               if(!_loc5_ && !_loc4_.isInfinite())
               {
                  this.§@z§.record(param1.recordId,_loc2_,-1);
               }
               _loc3_.§08§(param1.recordId);
            }
         }
      }
      
      public function dispose() : void
      {
         this.§>!@§.removeEventListener(§0%v§.SOT,this.§>",§);
         this.§>!@§.removeEventListener(§0%v§.WEAPON_SHOOT,this.§7"O§);
         this.§>!@§.removeEventListener(§0%v§.WEAPON_RESTORE,this.§;Z§);
         this.§>!@§ = null;
         this.§-!>§ = null;
      }
      
      public function §?#n§() : §1W§
      {
         return this.§@z§;
      }
   }
}


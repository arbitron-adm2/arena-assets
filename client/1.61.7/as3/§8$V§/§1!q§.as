package §8$V§
{
   import § !8§.§`!d§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§?%>§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&#E§.§;2§;
   import §+#P§.§]!E§;
   import §,#_§.FrameTimer;
   import §,$J§.§,$O§;
   import §-"N§.§+#R§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.§2=§;
   import §2"L§.§^$y§;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §4!K§.§^%A§;
   import §4#`§.BattleInterface;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §;#O§.§4&A§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §@!N§.§""L§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]$&§.§2&2§;
   import §]7§.§0!v§;
   import §]7§.§0'§;
   import config.achievements.*;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetFriendListPage;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.GetFriendListPageResult;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§;! §;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §1!q§ implements §1"$§
   {
      
      private static var §"!,§:WithdrawSeasonWeaponsResult;
      
      private var §<%2§:§?%>§;
      
      private var currentSeasonWeapons:Array = [];
      
      private var currentSeasonStuff:Array = [];
      
      private var §79§:Boolean = false;
      
      public function §1!q§()
      {
         super();
         §%%w§.§##$§(EquipExpired,this.§16§);
         §^"5§.§?%D§(§%%w§.§7F§,[WithdrawSeasonWeaponsResult],this.§]%u§);
         Application.instance.addEventListener(Event.INIT,this.onInit);
      }
      
      private function §]%u§(param1:§9$v§) : void
      {
         §"!,§ = param1.message as WithdrawSeasonWeaponsResult;
         this.currentSeasonWeapons = §""L§.§,"=§(§"!,§.currentSeasonWeapons);
         this.currentSeasonStuff = §""L§.§,"=§(§"!,§.currentSeasonStuff);
         §%#c§.§=$W§(§"!,§.currentSeasonWeapons);
         §"!,§.currentSeasonWeapons.length = 0;
      }
      
      private function onInit(param1:Event) : void
      {
         Application.instance.removeEventListener(Event.INIT,this.onInit);
         this.§0!@§();
         this.§79§ = true;
      }
      
      public function §<$j§() : §0'§
      {
         if(Boolean(§"!,§) && §"!,§.withdrawnWeapons.length > 0)
         {
            return §0'§.§5%#§(§"!,§,this.§"o§);
         }
         return null;
      }
      
      private function §"o§() : void
      {
         var _loc2_:WeaponStructure = null;
         var _loc1_:§'"-§ = Application.userProfile.§3%^§();
         for each(_loc2_ in §"!,§.withdrawnWeapons)
         {
         }
         §"!,§.withdrawnWeapons.length = 0;
         §"!,§ = null;
      }
      
      public function §0!@§() : void
      {
         if(!this.§<%2§ && Application.userProfile.getLevel() >= §,! §.§<[§)
         {
            this.§<%2§ = §;2§.§7#[§(§+"'§.§>$h§,§0$N§.CURRENT_SEASON_ITEMS + "!",function():void
            {
               §0!v§.show(currentSeasonWeapons,currentSeasonStuff);
            },true);
         }
      }
      
      public function §[F§(param1:MouseEvent) : void
      {
      }
      
      public function §?#5§(param1:uint) : Boolean
      {
         return this.currentSeasonWeapons.indexOf(param1) != -1;
      }
      
      public function §4#R§(param1:uint) : Boolean
      {
         return this.currentSeasonStuff.indexOf(param1) != -1;
      }
      
      public function §1&=§(param1:UserProfile) : uint
      {
         var _loc4_:BackpackItem = null;
         var _loc2_:uint = 0;
         var _loc3_:Array = this.§]%L§(param1);
         for each(var _loc7_ in _loc3_)
         {
            _loc4_ = _loc7_;
            _loc7_;
            _loc2_ = _loc2_ + _loc4_.getCount() * _loc4_.getRecord().§-1§();
         }
         return _loc2_;
      }
      
      public function §]%L§(param1:UserProfile) : Array
      {
         var _loc4_:BackpackItem = null;
         var _loc5_:§;#_§ = null;
         var _loc2_:Array = [];
         var _loc3_:Object = param1.§3%^§().§+$!§();
         for each(var _loc8_ in _loc3_)
         {
            _loc4_ = _loc8_;
            _loc8_;
            _loc5_ = §;#_§(_loc4_.getRecord());
            if(_loc5_.§-%g§() && _loc4_.getCount() > 0)
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      public function §6$&§() : Array
      {
         var _loc2_:§;#_§ = null;
         var _loc1_:Array = [];
         for each(var _loc5_ in §<$c§.getWeapons())
         {
            _loc2_ = _loc5_;
            _loc5_;
            if(_loc2_.§-%g§())
            {
               _loc1_.push(_loc2_.getId());
            }
         }
         return _loc1_;
      }
      
      private function §16§(param1:§9$v§) : void
      {
         var message:EquipExpired = null;
         var filtered:Vector.<int> = null;
         var itemNames:String = null;
         var delayedRemoveExpired:Function = null;
         var event:§9$v§ = param1;
         message = event.message as EquipExpired;
         filtered = message.equipIds.filter(function(param1:int, param2:int, param3:Vector.<int>):Boolean
         {
            return !§#$O§.§3$K§(param1) || §#$O§.§]A§(param1);
         });
         itemNames = §""L§.§,"=§(filtered).map(this.§-#T§).join(", ");
         var msgText:String = §0%§.format(§<"G§.§%! §("EQUIP_EXPIRED"),{"equipList":itemNames});
         if(§8"%§.§?!W§.inBattle || §8"%§.§?!W§.§3#r§)
         {
            §8"%§.§?!W§.§!#S§(msgText);
            delayedRemoveExpired = §1%"§.§]$<§(this.§[%P§,§1!q§,[message]);
            §""n§.single(§8"%§.§?!W§,§+#R§.§7%^§,delayedRemoveExpired);
         }
         else
         {
            this.§[%P§(message);
            Application.§5!>§.§^P§.§6X§();
            §,#W§.§'!+§(§0$N§.TITLE_ATTENTION,msgText,§,#W§.§6!m§).show();
         }
         if(!§2$^§.isVipExist() && !§8"%§.§&S§.§?#k§())
         {
            §8"%§.§&S§.§>!!§(true,true);
         }
      }
      
      private function §-#T§(param1:int, ... rest) : String
      {
         var _loc3_:§`!d§ = null;
         _loc3_ = Race.§+#T§.§]!D§();
         var _loc4_:§&!e§ = §<$c§.§8&E§(param1,_loc3_);
         return _loc4_ ? _loc4_.§7%z§() : "";
      }
      
      public function §[%P§(param1:EquipExpired, param2:UserProfile = null) : void
      {
         var _loc6_:int = 0;
         var _loc7_:§;! § = null;
         var _loc8_:UserProfile = null;
         var _loc9_:* = 0;
         var _loc10_:Boolean = false;
         var _loc11_:§^$E§ = null;
         var _loc12_:§^%%§ = null;
         param2 = param2 == null ? Application.userProfile : param2;
         var _loc3_:uint = param1.equipIds.length;
         var _loc4_:Boolean = false;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = param1.equipIds[_loc5_];
            if(!_loc4_)
            {
               _loc4_ = this.§5U§(_loc6_);
            }
            _loc7_ = param2.§,%o§();
            _loc7_.§4$s§(_loc6_);
            _loc8_ = this.§+!z§(param2,_loc6_);
            _loc9_ = 0;
            while(Boolean(_loc8_) && _loc9_++ < 8)
            {
               _loc10_ = _loc8_.getId() == param2.getId();
               if(§,$O§.§&&,§(_loc6_))
               {
                  _loc11_ = _loc10_ && param1.hatId != 0 ? §<$c§.§^&1§(param1.hatId,_loc8_.getRace()) : null;
                  _loc8_.§7"i§(_loc11_);
               }
               else if(§]!E§.§]%m§(_loc6_))
               {
                  _loc12_ = _loc10_ && param1.artifactId != 0 ? §<$c§.§"$h§(param1.artifactId) : null;
                  _loc8_.§;"U§(_loc12_);
               }
               if(_loc8_.§4!^§() == §2=§.MERCENARY)
               {
                  §4&A§.§9&7§(_loc8_);
               }
               Application.§5!>§.§^P§.team.§@" §(_loc8_);
               _loc8_ = this.§+!z§(param2,_loc6_);
            }
            _loc5_++;
         }
         if(_loc4_)
         {
            this.§0u§();
            Application.§5!>§.§8$w§();
         }
      }
      
      private function §+!z§(param1:UserProfile, param2:int) : UserProfile
      {
         var _loc3_:UserProfile = null;
         for each(var _loc6_ in param1.§"]§())
         {
            _loc3_ = _loc6_;
            _loc6_;
            if(!§2=§.§9$M§(_loc3_) && (Boolean(_loc3_.§2u§()) && Boolean(_loc3_.§2u§().getId() == param2) || Boolean(_loc3_.§+!b§()) && Boolean(_loc3_.§+!b§().getId() == param2)))
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      private function §5U§(param1:uint) : Boolean
      {
         var _loc2_:uint = 0;
         if(param1 == §#$O§.MONTH_VIP && Social.settings.§"#k§() && Boolean(Social.§-%=§.§@#i§()))
         {
            Social.§-%=§.§-$0§(0);
            Social.§-%=§.§4%g§(null);
         }
         if(§#$O§.§3$K§(param1))
         {
            _loc2_ = §<$c§.§3"k§(param1).getType();
            if(_loc2_ != §##L§.REACTION_SMALL && _loc2_ != §##L§.REACTION_LARGE)
            {
               return false;
            }
         }
         return true;
      }
      
      private function §0u§() : void
      {
         var _loc1_:§#A§ = Application.§5!>§;
         _loc1_.§[!l§(!_loc1_.§^P§.isShown());
         _loc1_.§0"'§();
      }
   }
}


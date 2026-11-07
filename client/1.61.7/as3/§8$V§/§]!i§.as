package §8$V§
{
   import § !8§.§`!d§;
   import § &5§.§=#P§;
   import §!$D§.§2$^§;
   import §!$D§.§[?§;
   import §"!C§.§3#n§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&#h§.§-"F§;
   import §&#h§.§5f§;
   import §'"N§.*;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2"L§.§!!<§;
   import §3#T§.Boomerang;
   import §4'§.§"@§;
   import §6%2§.§#"B§;
   import §7$t§.§2"y§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §?#g§.§"&>§;
   import §?#g§.§&"P§;
   import §?#g§.Race;
   import §?$L§.§0"-§;
   import §@!i§.§5&4§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.achievements.*;
   import flash.events.Event;
   import flash.utils.getQualifiedClassName;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.BuyRace;
   import ru.pragmatix.wormix.messages.client.BuySelectRace;
   import ru.pragmatix.wormix.messages.client.BuySkin;
   import ru.pragmatix.wormix.messages.client.SelectRace;
   import ru.pragmatix.wormix.messages.server.BuyRaceResponse;
   import ru.pragmatix.wormix.messages.server.BuySelectRaceResponse;
   import ru.pragmatix.wormix.messages.server.BuySkinResponse;
   import ru.pragmatix.wormix.messages.server.SelectRaceResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§6Y§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §]!i§
   {
      
      private static var §7"7§:uint;
      
      private static var §!%2§:int;
      
      private static var §-%l§:Boolean;
      
      private static var §'$>§:int;
      
      private static var §]X§:String;
      
      public static const §,!,§:int = 12 * 60 * 60;
      
      private var §2#F§:uint = 0;
      
      private var §0K§:uint = 0;
      
      private var §@"y§:uint = 0;
      
      public function §]!i§()
      {
         super();
      }
      
      public static function §`&2§(param1:uint) : void
      {
         §7"7§ = param1;
      }
      
      public static function get §[#Q§() : int
      {
         §!%2§ = §0#2§.§[&>§(§7"7§);
         return §!%2§;
      }
      
      public static function get §2!M§() : Boolean
      {
         §-%l§ = §7"7§ == 0 || §[#Q§ + 1 > §,!,§;
         return §-%l§;
      }
      
      public static function get §6$U§() : int
      {
         §'$>§ = §7"7§ + §,!,§;
         return §'$>§;
      }
      
      public static function get §6$§() : String
      {
         §]X§ = §0#2§.§1" §(§6$U§);
         return §]X§;
      }
      
      public function §1$8§(param1:§`!d§, param2:int) : void
      {
         this.§2#F§ = this.§0K§ = 0;
         if(param2 == §+$A§.REAL.value)
         {
            this.§2#F§ = param1.getRealPrice();
         }
         else
         {
            this.§0K§ = param1.§4$n§();
         }
         §[&G§.§3$5§.show();
         §%%w§.§##$§(BuyRaceResponse,this.§6%@§);
         §%%w§.§,U§(new BuyRace(param1.getId(),param2));
      }
      
      private function §6%@§(param1:§9$v§) : void
      {
         §%%w§.§-"j§(BuyRaceResponse,this.§6%@§);
         §[&G§.§3$5§.hide();
         var _loc2_:BuyRaceResponse = BuyRaceResponse(param1.message);
         if(_loc2_.result == ShopResult.SUCCESS)
         {
            if(this.§0K§ > 0)
            {
               Application.userProfile.§1%'§(-this.§0K§);
               §8"%§.§@1§.increase([§!$L§.§0"K§,§!$L§.§%%3§],[this.§0K§,1]);
            }
            else if(this.§2#F§ > 0)
            {
               Application.userProfile.§9%D§(-this.§2#F§);
               §8"%§.§@1§.increase([§!$L§.§`&0§,§!$L§.§%%3§],[this.§2#F§,1]);
            }
            Application.userProfile.§&$g§(Race.§3!4§(_loc2_.race),false);
            Application.§5!>§.§8$w§();
            Application.§5!>§.§^P§.§6X§();
            Social.§!g§.§["L§(Application.userProfile.getRace());
         }
         else
         {
            this.§;<§(_loc2_.result);
         }
      }
      
      private function §;<§(param1:int) : void
      {
         var _loc2_:Object = [];
         _loc2_[ShopResult.NOT_FOR_SALE] = §0$N§.ERROR_NOT_FOR_SALE;
         _loc2_[ShopResult.NOT_ENOUGH_REAGENTS] = §0$N§.ERROR_NOT_ENOUGH_REAGENTS;
         _loc2_[ShopResult.NOT_ENOUGH_BATTLE_TOKENS] = §0$N§.ERROR_NOT_ENOUGH_BATTLE_TOKENS;
         _loc2_[ShopResult.MIN_REQUIREMENTS_ERROR] = §0$N§.ERROR_HACKING_ATTEMPT;
         _loc2_[ShopResult.NOT_ENOUGH_MONEY] = §0$N§.ERROR_NOT_ENOUGH_MONEY;
         _loc2_[ShopResult.ERROR] = §0$N§.ERROR_SAVING;
         §!!<§.§1#3§(§0"-§.TITLE_ERROR,param1,_loc2_);
      }
      
      public function §<&7§(param1:int, param2:int) : void
      {
         this.§2#F§ = §5&4§.§#!@§.realPrice;
         §[&G§.§3$5§.show();
         §%%w§.§##$§(BuySelectRaceResponse,this.§+$0§);
         §%%w§.§,U§(new BuySelectRace(param1,param2));
      }
      
      private function §+$0§(param1:§9$v§) : void
      {
         §%%w§.§-"j§(BuySelectRaceResponse,this.§+$0§);
         §[&G§.§3$5§.hide();
         var _loc2_:BuySelectRaceResponse = BuySelectRaceResponse(param1.message);
         if(_loc2_.result == ShopResult.SUCCESS)
         {
            if(this.§2#F§ > 0)
            {
               Application.userProfile.§9%D§(-this.§2#F§);
               §8"%§.§@1§.increase([§!$L§.§`&0§],[this.§2#F§]);
            }
            §`&2§(§0#2§.§@&6§());
            Application.userProfile.§&$g§(Race.§3!4§(_loc2_.race));
            Application.userProfile.§?!0§(_loc2_.race,_loc2_.skin);
            Application.§5!>§.§8$w§();
            Application.§5!>§.§^P§.§6X§();
         }
         else
         {
            this.§;<§(_loc2_.result);
         }
      }
      
      public function §<!k§(param1:int, param2:int, param3:Boolean = true, param4:Boolean = false) : void
      {
         §[&G§.§3$5§.show();
         §""n§.single(§%%w§.§7F§,getQualifiedClassName(SelectRaceResult),this.§&1§,this,[param3,param4],true);
         §%%w§.§,U§(new SelectRace(param1,param2));
      }
      
      private function §&1§(param1:§9$v§, param2:Boolean, param3:Boolean) : void
      {
         var _loc5_:§`!d§ = null;
         §[&G§.§3$5§.hide();
         var _loc4_:SelectRaceResult = SelectRaceResult(param1.message);
         if(_loc4_.result == ShopResult.SUCCESS)
         {
            if(param2)
            {
               §`&2§(§0#2§.§@&6§());
            }
            _loc5_ = Race.§3!4§(_loc4_.race);
            Application.userProfile.§&$g§(_loc5_);
            if(param3)
            {
               Application.userProfile.§;$F§().splice(Application.userProfile.§;$F§().indexOf(_loc5_),1);
            }
            Application.userProfile.§?!0§(_loc4_.race,_loc4_.skin);
            Application.§5!>§.§8$w§();
            Application.§5!>§.§^P§.§6X§();
         }
         else
         {
            this.§;<§(_loc4_.result);
         }
      }
      
      public function §0"S§(param1:int, param2:int, param3:Boolean) : void
      {
         this.§<!k§(param1,param2,param3);
      }
      
      public function §5%N§(param1:int, param2:int, param3:int, param4:Function) : void
      {
         var _loc5_:§&"P§ = null;
         _loc5_ = §6Y§.§?#`§(Application.userProfile.§1$4§(),param1);
         var _loc6_:§"&>§ = _loc5_.§4%S§(param2);
         if(param3 == §+$A§.REAL.value)
         {
            this.§2#F§ = _loc6_.§,$1§();
            this.§@"y§ = 0;
         }
         else if(param3 == §"@§.REAGENTS.value)
         {
            this.§2#F§ = 0;
            this.§@"y§ = §6Y§.§^#k§();
         }
         §[&G§.§3$5§.show();
         §""n§.single(§%%w§.§7F§,getQualifiedClassName(BuySkinResponse),this.§#%2§,this,[param1,param4],true);
         §%%w§.§,U§(new BuySkin(param2,param3));
      }
      
      private function §#%2§(param1:§9$v§, param2:int, param3:Function) : void
      {
         var _loc5_:§`!d§ = null;
         var _loc6_:§&"P§ = null;
         §%%w§.§-"j§(BuySkinResponse,this.§#%2§);
         §[&G§.§3$5§.hide();
         var _loc4_:BuySkinResponse = BuySkinResponse(param1.message);
         if(_loc4_.result == BuySkinResponse.SUCCESS)
         {
            if(this.§2#F§ > 0)
            {
               Application.userProfile.§9%D§(-this.§2#F§);
               §8"%§.§@1§.increase([§!$L§.§`&0§],[this.§2#F§]);
            }
            else
            {
               Application.userProfile.§2!>§().§!&G§(§#"B§.MUTAGEN,-this.§@"y§);
            }
            §8"%§.§@1§.increase([§!$L§.§4#J§],[1]);
            _loc5_ = Race.§3!4§(param2);
            Application.userProfile.§?!0§(param2,_loc4_.skin);
            Application.§5!>§.§8$w§();
            _loc6_ = §6Y§.§?#`§(Application.userProfile.§1$4§(),_loc5_.getId());
            Social.§!g§.§=$v§(_loc5_,_loc6_);
            §5f§.§8#&§();
            if(param3 != null)
            {
               param3();
            }
         }
         else
         {
            this.§;<§(_loc4_.result);
         }
      }
   }
}


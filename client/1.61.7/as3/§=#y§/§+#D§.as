package §=#y§
{
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §#"V§.§'$h§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+%S§.§["4§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#V§.§-#U§;
   import §2#i§.§9##§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §5!,§.§9$h§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=&!§.§]$d§;
   import §?$K§.§=z§;
   import §?$L§.§&$9§;
   import §@!N§.§'+§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]$J§.§#"s§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.achievements.§!$L§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.PromoteRankInClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.BuyReactionRateResult;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.GladiatorUnitStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §+#D§ extends §?$D§
   {
      
      public function §+#D§(param1:Function, param2:MovieClip, param3:String, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function §%"7§(param1:Event) : void
      {
         if(index > 0)
         {
            --index;
            §8%M§.setDisabled(false);
            this.§,$3§();
         }
         if(index <= 0)
         {
            §]E§.setDisabled(true);
         }
      }
      
      override protected function §,!+§(param1:Event) : void
      {
         if(index < §+!§.length - 1)
         {
            ++index;
            §]E§.setDisabled(false);
            this.§,$3§();
         }
         if(index >= §+!§.length - 1)
         {
            §8%M§.setDisabled(true);
         }
      }
      
      override protected function §,$3§() : void
      {
         §=%p§(§"#D§());
      }
      
      override public function §`$+§(param1:UserProfile = null) : void
      {
         var _loc4_:BackpackItem = null;
         var _loc5_:§&!e§ = null;
         reset();
         var _loc2_:uint = 0;
         var _loc3_:Array = Application.userProfile.§,%o§().§,!V§();
         var _loc6_:int = 0;
         var _loc7_:* = _loc3_;
         for each(_loc6_ in _loc7_)
         {
            var _temp_1:* = _loc6_;
            _loc4_ = _loc6_;
            _loc5_ = _loc4_.getRecord();
            if(_loc5_ is §^$E§)
            {
               §+!§.push(_loc5_);
               if(param1.§2u§() == _loc5_)
               {
                  index = _loc2_;
               }
            }
            _loc2_++;
         }
         if(§+!§.length <= 1)
         {
            §8%M§.setDisabled(true);
         }
         §?"?§ = §+!§.length - 1;
      }
      
      public function §@"r§() : §^$E§
      {
         return §"#D§() as §^$E§;
      }
   }
}


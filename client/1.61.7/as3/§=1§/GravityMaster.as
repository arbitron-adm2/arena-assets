package §=1§
{
   import §!$d§.§<$c§;
   import §%L§.§%%w§;
   import §&&6§.§8"O§;
   import §-%B§.§-"o§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §2"L§.§,'§;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §4!K§.§^%A§;
   import §<"?§.§@&#§;
   import §?$7§.§+#N§;
   import §@!N§.§""L§;
   import §@<§.§+%]§;
   import flash.utils.Dictionary;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.TopClansMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.TopClansRequest;
   import ru.pragmatix.wormix.messages.clans.response.TopClansResponse;
   import ru.pragmatix.wormix.social.Social;
   
   public class GravityMaster extends §@&#§
   {
      
      public function GravityMaster()
      {
         super(105);
      }
      
      override public function getId() : int
      {
         return §+#N§.§^%+§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §8"O§()];
      }
      
      override protected function §2!9§() : void
      {
         var _loc1_:§,'§ = null;
         super.§2!9§();
         _loc1_ = new §,'§(§8"%§.§?!W§.§^!U§().battleId ^ 0x8F);
         var _loc2_:Array = §""L§.§6$6§([mapRecord.§8$2§[1],mapRecord.§8$2§[6],mapRecord.§8$2§[7],mapRecord.§?$&§[1]],_loc1_);
         var _loc3_:Array = §""L§.§6$6§([mapRecord.§8$2§[0],mapRecord.§8$2§[2],mapRecord.§8$2§[3],mapRecord.§8$2§[4],mapRecord.§?$&§[2]],_loc1_);
         §5"N§ = [[_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3]],[mapRecord.§8$2§[8]],[_loc2_[0],_loc2_[1],_loc2_[2]]];
      }
   }
}


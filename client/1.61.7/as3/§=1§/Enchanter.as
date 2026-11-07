package §=1§
{
   import §%"1§.§@%;§;
   import §&&6§.§5%J§;
   import §-%B§.§-"o§;
   import §2"L§.§,'§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §<"?§.§@&#§;
   import §<%k§.§`!v§;
   import §?$7§.§+#N§;
   import §@!N§.§""L§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import com.greensock.motionPaths.PathFollower;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§5%?§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class Enchanter extends §@&#§
   {
      
      public function Enchanter()
      {
         super(104);
      }
      
      override public function getId() : int
      {
         return §+#N§.§&$R§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §5%J§()];
      }
      
      override protected function §2!9§() : void
      {
         var _loc1_:§,'§ = null;
         super.§2!9§();
         _loc1_ = new §,'§(§8"%§.§?!W§.§^!U§().battleId ^ 0x8F);
         var _loc2_:Array = §""L§.§6$6§([mapRecord.§8$2§[5],mapRecord.§?$&§[0]],_loc1_);
         var _loc3_:Array = §""L§.§6$6§([mapRecord.§8$2§[1],mapRecord.§8$2§[6],mapRecord.§8$2§[7],mapRecord.§8$2§[8],mapRecord.§?$&§[2]],_loc1_);
         var _loc4_:Array = §""L§.§6$6§([mapRecord.§8$2§[0],mapRecord.§8$2§[2],mapRecord.§8$2§[3],mapRecord.§8$2§[4],mapRecord.§?$&§[3]],_loc1_);
         §5"N§ = [[_loc4_[0],_loc4_[1],_loc4_[2],_loc4_[3]],[_loc2_[0]],[_loc3_[0],_loc3_[1],_loc3_[2],_loc3_[3]]];
      }
   }
}


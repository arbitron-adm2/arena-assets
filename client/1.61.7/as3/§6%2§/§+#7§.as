package §6%2§
{
   import §7$t§.§&!e§;
   
   public class §+#7§
   {
      
      private static const rewards:Array = [{
         "id":§!"x§.RUBY,
         "name":"RUBY",
         "menuIcon":"IconRuby"
      },{
         "id":§!"x§.FUZY,
         "name":"FUZY",
         "menuIcon":"IconFuzy"
      },{
         "id":§!"x§.EXPERIENCE,
         "name":"EXPERIENCE",
         "menuIcon":"IconExp"
      },{
         "id":§!"x§.BONUS_EXPERIENCE,
         "name":"BONUS_EXPERIENCE",
         "menuIcon":"IconExpBonus"
      },{
         "id":§!"x§.RATING,
         "name":"RATING",
         "menuIcon":"IconRating"
      },{
         "id":§!"x§.BATTLE_TOKENS,
         "name":"BATTLE_TOKENS",
         "menuIcon":"IconBattleCoin"
      },{
         "id":§!"x§.REACTION,
         "name":"REACTION",
         "menuIcon":"IconReaction"
      },{
         "id":§!"x§.REWARD_PACK,
         "name":"REWARD_PACK",
         "menuIcon":"IconRewardPack"
      },{
         "id":§!"x§.§]D§,
         "name":"WEAPON_PACK_0",
         "menuIcon":"IconWeaponPack0"
      },{
         "id":§!"x§.§5'§,
         "name":"WEAPON_PACK_1",
         "menuIcon":"IconWeaponPack1"
      },{
         "id":§!"x§.§&#I§,
         "name":"WEAPON_PACK_2",
         "menuIcon":"IconWeaponPack2"
      },{
         "id":§!"x§.RANK_POINTS,
         "name":"RANK_POINTS",
         "menuIcon":"IconRankPoints"
      }];
      
      public function §+#7§()
      {
         super();
      }
      
      public static function §8&E§(param1:int) : §&!e§
      {
         var _loc2_:Object = null;
         var _loc3_:§&!e§ = null;
         for each(_loc2_ in rewards)
         {
            if(_loc2_.id == param1)
            {
               _loc3_ = new §&!e§();
               _loc3_.initFromConfig(_loc2_);
               return _loc3_;
            }
         }
         return null;
      }
      
      public static function §7%7§(param1:String) : §&!e§
      {
         var _loc2_:Object = null;
         var _loc3_:§&!e§ = null;
         for each(_loc2_ in rewards)
         {
            if(_loc2_.name == param1)
            {
               _loc3_ = new §&!e§();
               _loc3_.initFromConfig(_loc2_);
               return _loc3_;
            }
         }
         return null;
      }
   }
}


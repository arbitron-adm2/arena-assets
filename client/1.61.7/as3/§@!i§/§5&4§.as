package §@!i§
{
   import §!$D§.§2$^§;
   import §%"Z§.§'$2§;
   import §1#p§.§2=§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §@<§.§+%]§;
   import com.greensock.loading.core.*;
   import config.achievements.*;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §5&4§
   {
      
      public static const §">§:§'$2§ = new §'$2§(0,0);
      
      public static const §^$,§:§'$2§ = new §'$2§(100,1);
      
      public static const §7%Q§:§'$2§ = new §'$2§(300,3);
      
      public static const WIPE:§'$2§ = new §'$2§(0,5);
      
      public static const §'%'§:§'$2§ = new §'$2§(300,3);
      
      public static const §>#=§:int = 10;
      
      public static const §-!l§:§'$2§ = new §'$2§(100,1);
      
      public static const §#%A§:§'$2§ = new §'$2§(400,4);
      
      public static const REACTION:§'$2§ = new §'$2§(0,1);
      
      public static const §8$p§:§'$2§ = new §'$2§(0,10);
      
      public static const §#!@§:§'$2§ = new §'$2§(0,5);
      
      public static const §;"T§:Vector.<§'$2§> = new <§'$2§>[new §'$2§(4000,40),new §'$2§(10000,100),new §'$2§(20000,200)];
      
      public static const §'%1§:§'$2§ = new §'$2§(2000,20);
      
      public static const §+$1§:§'$2§ = new §'$2§(100,0);
      
      public static const §>"'§:§'$2§ = new §'$2§(200,0);
      
      public static const §%"S§:int = 100;
      
      public static const §'"a§:Number = 0.3;
      
      public static const §0#E§:int = 9999;
      
      public static const §9!b§:int = 999999;
      
      public function §5&4§()
      {
         super();
      }
      
      public static function §9Z§(param1:UserProfile, param2:uint, param3:int) : §'$2§
      {
         var _loc4_:uint = 0;
         var _loc5_:§+%7§ = null;
         if(param3 == §2=§.FRIEND)
         {
            _loc4_ = 100 + 40 * param2;
            return new §'$2§(_loc4_,Math.ceil(_loc4_ / §^$,§.ingamePrice));
         }
         if(§2=§.§3$G§(param3))
         {
            _loc4_ = 600 + 80 * param2;
            return new §'$2§(_loc4_,Math.ceil(_loc4_ / §^$,§.ingamePrice));
         }
         if(param3 == §2=§.MERCENARY)
         {
            _loc5_ = §4&A§.§'![§(param1.getId());
            return new §'$2§(_loc5_.§4$n§(),_loc5_.getRealPrice());
         }
         throw new ArgumentError("Invalid team member type");
      }
      
      public static function §=#+§(param1:§'$2§) : uint
      {
         if(param1.realPrice == 0)
         {
            return param1.ingamePrice / §5&4§.§^$,§.ingamePrice;
         }
         return param1.realPrice;
      }
      
      public static function §%"#§() : §'$2§
      {
         return Application.userProfile.getLevel() < §>#=§ || §2$^§.isVipExist() ? §">§ : §'%'§;
      }
      
      public static function §!%x§(param1:§'$2§) : int
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:int = param1.ingamePrice ? int(param1.ingamePrice) : int(param1.realPrice * 100);
         _loc3_ = Math.round(_loc2_ * §'"a§);
         _loc4_ = _loc3_ % 100;
         return int(int(_loc3_ / 100) * 100 + (_loc4_ < 50 ? 0 : 100));
      }
      
      public static function §@#4§() : §'$2§
      {
         var _loc1_:int = §8"%§.§8!E§.rec.replaceMoneyPrice;
         return new §'$2§(_loc1_,_loc1_ / 100);
      }
   }
}


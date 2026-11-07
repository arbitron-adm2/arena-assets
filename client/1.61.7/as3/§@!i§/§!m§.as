package §@!i§
{
   import §"%H§.§`"w§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §+%S§.§2$#§;
   import §+%o§.*;
   import §2#8§.§6"a§;
   import §2o§.§4§;
   import §2o§.§]#@§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §8#a§.ShopMenu;
   import §8$V§.*;
   import §<%k§.§`!v§;
   import §?$K§.§`""§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import flash.display.DisplayObject;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.edit.IncreaseLevelClanResponse;
   import ru.pragmatix.wormix.messages.client.SetCookies;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   
   public class §!m§
   {
      
      public static const §>$S§:String = "0";
      
      public static const §1$6§:String = "1";
      
      public static const §8%e§:String = "2";
      
      public static const §;"w§:String = "3";
      
      public static const §^r§:String = "4";
      
      public static const §7W§:String = "5";
      
      public static const §6$7§:String = "6";
      
      public static const MUSIC:String = "7";
      
      public static const §8%i§:String = "8";
      
      public static const §>#N§:String = "9";
      
      public static const §4V§:String = "10";
      
      public static const §;"8§:String = "11";
      
      public static const §]%-§:String = "12";
      
      public static const §-#i§:String = "13";
      
      public static const §1%=§:String = "14";
      
      public static const §!!'§:String = "15";
      
      public static const §05§:String = "16";
      
      public static const §5%W§:String = "17";
      
      public static const §@!L§:String = "18";
      
      public static const §4!L§:String = "19";
      
      public static const §&!q§:String = "20";
      
      public static const §>&+§:String = "21";
      
      public static const §"#b§:String = "22";
      
      public static const §'!_§:String = "23";
      
      public static const §0!9§:String = "24";
      
      public static const §?$9§:String = "25";
      
      public static const §<!r§:String = "26";
      
      public static const §;"+§:String = "27";
      
      public static const §'"f§:String = "28";
      
      public static const §+$ §:String = "29";
      
      public static const §3!F§:String = "30";
      
      public static const §0%?§:String = "31";
      
      public static const §2"_§:String = "32";
      
      public static const § o§:String = "33";
      
      public static const §@o§:String = "34";
      
      public static const §5$T§:String = "35";
      
      public static const §`#n§:String = "36";
      
      public static const §,!N§:String = "37";
      
      public static const §,T§:String = "50";
      
      public static const § $a§:String = "51";
      
      public static const §>!"§:String = "52";
      
      public static const §>%x§:String = "53";
      
      public static const §3$A§:String = "54";
      
      public static const §8#4§:String = "55";
      
      public static const ADRENALINE:String = "100";
      
      public static const INVERTER:String = "101";
      
      public static const SPEED:String = "102";
      
      public static const §0=§:String = "103";
      
      public static const §3[§:String = "104";
      
      public static const POISON:String = "105";
      
      public static const BOUNCE_PROTECTION:String = "106";
      
      public static const THEIF_ATTACK:String = "107";
      
      public static const §=^§:String = "108";
      
      public static const §&_§:String = "109";
      
      public static const ANTI_HEAL:String = "110";
      
      public static const ITEM_DISPLACEMENT:String = "111";
      
      public static const §&#§:String = "112";
      
      public static const §9$a§:String = "114";
      
      public static const §>"K§:String = "115";
      
      public static const §3&0§:String = "116";
      
      private static const §9$W§:uint = 5 * 1000;
      
      private var cookies:Dictionary;
      
      private var store:§2l§;
      
      private var §!"`§:String;
      
      private var §&&C§:int;
      
      public function §!m§()
      {
         super();
         this.store = new §2l§();
      }
      
      public static function §,!Z§(param1:String, param2:Object) : String
      {
         if(int(param1) < int(§,T§) || int(param1) >= int(ADRENALINE))
         {
            return Boolean(param2) ? "1" : "0";
         }
         if(param1 == §>%x§ || param1 == §>!"§)
         {
            return int(Number(param2) * 10).toString();
         }
         if(param1 == § $a§)
         {
            switch(String(param2))
            {
               case StageQuality.LOW:
                  return "0";
               case StageQuality.MEDIUM:
                  return "1";
               case StageQuality.HIGH:
                  return "2";
               case StageQuality.BEST:
                  return "3";
            }
         }
         return String(param2);
      }
      
      public static function §5!8§(param1:String, param2:String) : Object
      {
         var _loc3_:Number = NaN;
         if(int(param1) < int(§,T§) || int(param1) >= int(ADRENALINE))
         {
            return Boolean(int(param2));
         }
         if(param1 == §>%x§ || param1 == §>!"§)
         {
            _loc3_ = int(param2) * 0.1;
            return Number(_loc3_.toFixed(1));
         }
         if(param1 == § $a§)
         {
            switch(String(param2))
            {
               case "0":
                  return StageQuality.LOW;
               case "1":
                  return StageQuality.MEDIUM;
               case "2":
                  return StageQuality.HIGH;
               case "3":
                  return StageQuality.BEST;
            }
         }
         return String(param2);
      }
      
      public function init(param1:Dictionary) : void
      {
         this.cookies = param1;
         this.§5!6§();
      }
      
      private function §5!6§() : void
      {
         var _loc3_:String = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         for(_loc3_ in this.cookies)
         {
            _loc1_.push(_loc3_);
            _loc2_.push(this.cookies[_loc3_]);
         }
      }
      
      public function setValue(param1:String, param2:Object, param3:Object = null, param4:Boolean = false, param5:Boolean = false) : void
      {
         var _loc7_:int = 0;
         var _loc6_:String = Boolean(param3) && param2 == param3 ? "" : §,!Z§(param1,param2);
         if(param4)
         {
            this.store.§,"S§(param1,param2,param3);
         }
         else
         {
            this.§5!6§();
            if(param5)
            {
               this.cookies[param1] = _loc6_;
               this.§5!6§();
            }
            _loc7_ = getTimer();
            if(this.§!"`§ == param1 && _loc7_ - this.§&&C§ > §9$W§)
            {
            }
            this.§!"`§ = param1;
            this.§&&C§ = _loc7_;
            §%%w§.§,U§(new SetCookies([param1],[_loc6_]));
         }
      }
      
      public function getValue(param1:String, param2:Object) : Object
      {
         var _loc4_:Object = null;
         var _loc3_:String = this.cookies[param1];
         if(_loc3_)
         {
            return §5!8§(param1,_loc3_);
         }
         return param2;
      }
      
      public function §^"X§() : void
      {
         if(this.store.isEmpty())
         {
            return;
         }
         §%%w§.§,U§(new SetCookies(this.store.§&!>§,this.store.values));
         this.store.clear();
      }
   }
}


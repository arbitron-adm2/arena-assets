package §@!i§
{
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §%"1§.§@%;§;
   import §%&3§.§'C§;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §4!!§.§#Z§;
   import §<%k§.§`!v§;
   import §=#g§.§%!x§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.response.DeleteClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.DistributePointsResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.LoginAwardStructure;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §<,§
   {
      
      public static const §4"X§:uint = 7;
      
      public static const §6l§:uint = 4;
      
      public static var §8%d§:Array = [1,10,18,25];
      
      public static var §1!T§:§<,§ = new §<,§(1,[§=$,§.FUZY],[50,75,100,125]);
      
      public static var § &'§:§<,§ = new §<,§(2,[§=$,§.REACTION],[5,10,15,20]);
      
      public static var §0#i§:§<,§ = new §<,§(3,[§=$,§.§<$e§],[4,6,8,10]);
      
      public static var §&"f§:§<,§ = new §<,§(4,[§=$,§.§=$K§],[5,10,15,20],[§=$,§.§!&F§,§=$,§.§!&F§,§=$,§.§!&F§,§=$,§.§!&F§],[1,2,3,4]);
      
      public static var §=!b§:§<,§ = new §<,§(5,[§=$,§.§]!3§,§=$,§.§^5§,§=$,§.§^5§,§=$,§.§^5§],[2,1,2,3]);
      
      public static var §]$f§:§<,§ = new §<,§(6,[§=$,§.§]!3§,§=$,§.§#E§,§=$,§.§#E§,§=$,§.§#E§],[3,1,1,1]);
      
      public static var §,&%§:§<,§ = new §<,§(7,[§=$,§.RUBY],[2,2,2,2]);
      
      private var §]L§:int;
      
      private var §[$w§:int;
      
      private var §#"D§:int;
      
      private var _type:int;
      
      private var _types:Array;
      
      private var §'z§:Array;
      
      private var §,%<§:Array;
      
      private var §2$S§:Array;
      
      public function §<,§(param1:int, param2:Array, param3:Array, param4:Array = null, param5:Array = null)
      {
         super();
         this.§]L§ = param1;
         this.§#"D§ = param3[0];
         this._type = §=$,§(param2[0]).serverCode;
         this._types = param2;
         this.§'z§ = param3;
         this.§,%<§ = param4;
         this.§2$S§ = param5;
      }
      
      public static function §2%R§(param1:int) : §<,§
      {
         param1 = §'&B§(param1);
         switch(param1)
         {
            case §1!T§.§]L§:
               return §1!T§;
            case § &'§.§]L§:
               return § &'§;
            case §0#i§.§]L§:
               return §0#i§;
            case §&"f§.§]L§:
               return §&"f§;
            case §=!b§.§]L§:
               return §=!b§;
            case §]$f§.§]L§:
               return §]$f§;
            case §,&%§.§]L§:
               return §,&%§;
            default:
               return null;
         }
      }
      
      public static function §'&B§(param1:int) : int
      {
         if(param1 > §4"X§)
         {
            param1 -= int(param1 / §4"X§) * §4"X§;
            if(param1 == 0)
            {
               param1 = int(§4"X§);
            }
         }
         return param1;
      }
      
      public static function §,$&§(param1:LoginAwardStructure) : §<,§
      {
         var _loc2_:§<,§ = null;
         var _loc3_:GenericAwardStructure = null;
         if(Boolean(param1) && Boolean(param1.awards))
         {
            _loc2_ = §2%R§(int(param1.attach));
            _loc3_ = param1.awards[0];
            _loc2_.§[$w§ = int(param1.attach);
            _loc2_._type = _loc3_.awardKind;
            _loc2_.§#"D§ = _loc3_.count;
            return _loc2_;
         }
         return null;
      }
      
      public function toString() : String
      {
         return "DailyBonusPrize{" + "dayInWeek=" + this.§]L§ + ",dayTotal=" + this.§[$w§ + ",type=" + (this._type ? this._type.toString() : null) + ",count=" + this.§#"D§ + ",counts=" + this.§'z§ + "}";
      }
      
      public function get §[![§() : int
      {
         return this.§]L§;
      }
      
      public function get §7!d§() : int
      {
         return this.§[$w§;
      }
      
      public function get count() : int
      {
         return this.§#"D§;
      }
      
      public function set count(param1:int) : void
      {
         this.§#"D§ = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get §2$j§() : Array
      {
         return Application.userProfile.getLevel() == §<!9§.getMaxLevel() && Boolean(this.§2$S§) ? this.§2$S§ : this.§'z§;
      }
      
      public function get §9#m§() : Array
      {
         return Application.userProfile.getLevel() == §<!9§.getMaxLevel() && Boolean(this.§2$S§) ? this.§,%<§ : this._types;
      }
   }
}


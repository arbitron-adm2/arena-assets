package §@!i§
{
   import §%"Z§.§'$2§;
   import §&#h§.§-"F§;
   import §&§.§0"v§;
   import §,"v§.§9%d§;
   import §0%[§.§""n§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §2o§.§]#@§;
   import §7$t§.§&!e§;
   import §[$P§.§+H§;
   import §[%§.Boar;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.server.AwardedFriendsComeback;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §<#&§ extends §'$2§
   {
      
      private static var §+&I§:Vector.<§<#&§> = new Vector.<§<#&§>(0);
      
      private var §9!4§:uint;
      
      private var §?!,§:uint;
      
      private var §^$P§:uint;
      
      private var §]#q§:uint;
      
      private var §8`§:uint;
      
      private var §'%g§:uint;
      
      private var §+"f§:uint;
      
      private var §`#s§:Boolean;
      
      private var §#F§:Number;
      
      private var §>n§:Array;
      
      private var § &?§:PvpBattleType;
      
      private var §##k§:int;
      
      public function §<#&§(param1:uint, param2:uint, param3:uint, param4:uint, param5:uint, param6:uint, param7:Number, param8:Array, param9:PvpBattleType, param10:int = 0, param11:uint = 0, param12:Boolean = false)
      {
         super(param2,0);
         this.§9!4§ = param1;
         this.§?!,§ = param2;
         this.§^$P§ = param3;
         this.§]#q§ = param4;
         this.§8`§ = param5;
         this.§+"f§ = param6;
         this.§#F§ = param7;
         this.§>n§ = param8;
         this.§ &?§ = param9;
         this.§##k§ = param10;
         this.§'%g§ = param11;
         this.§`#s§ = param12;
      }
      
      public static function valueOf(param1:uint) : §<#&§
      {
         if(!§+&I§.length)
         {
            §+&I§ = Social.settings.§7#-§().§[$M§();
         }
         return param1 < §+&I§.length ? §+&I§[param1] : null;
      }
      
      public static function get §[i§() : §<#&§
      {
         return valueOf(§-"P§.§&",§);
      }
      
      public static function §6#s§(param1:Vector.<§<#&§>) : void
      {
         §+&I§ = param1;
      }
      
      override public function toString() : String
      {
         return "PvpWager {" + " super=" + super.toString() + " id=" + this.§9!4§ + " value=" + this.§?!,§ + " award=" + this.§^$P§ + " minLevel=" + this.§]#q§ + " minUnits=" + this.§8`§ + " experience=" + this.§+"f§ + " ratingBonus=" + this.§#F§ + " killBonus=" + this.§>n§ + " battleType=" + this.§ &?§ + " questId=" + this.§##k§ + " minDailyTop=" + this.§'%g§ + " rankPoints=" + this.§`#s§ + " }";
      }
      
      public function §`!p§(param1:uint) : uint
      {
         return Boolean(param1 > 0) && Boolean(this.§>n§) && this.§>n§.length > 0 ? uint(this.§>n§[Math.min(this.§>n§.length - 1,param1 - 1)]) : 0;
      }
      
      override public function get ingamePrice() : uint
      {
         return this.value;
      }
      
      public function get id() : uint
      {
         return this.§9!4§;
      }
      
      public function get award() : uint
      {
         return this.§^$P§;
      }
      
      public function get value() : uint
      {
         return this.§?!,§;
      }
      
      public function get minLevel() : uint
      {
         return this.§]#q§;
      }
      
      public function get minUnits() : uint
      {
         return this.§8`§;
      }
      
      public function get experience() : uint
      {
         return this.§+"f§;
      }
      
      public function get §#!n§() : Number
      {
         return this.§#F§;
      }
      
      public function get §7&&§() : PvpBattleType
      {
         return this.§ &?§;
      }
      
      public function get questId() : int
      {
         return this.§##k§;
      }
      
      public function get rankPoints() : Boolean
      {
         return this.§`#s§;
      }
      
      public function get §2"c§() : uint
      {
         return this.§'%g§;
      }
   }
}


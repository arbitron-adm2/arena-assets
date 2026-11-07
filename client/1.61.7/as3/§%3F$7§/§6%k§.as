package §?$7§
{
   import § !P§.*;
   import § #k§.*;
   import § #m§.§;#^§;
   import § &5§.Water;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §##j§.§]$X§;
   import §#%!§.§ §;
   import §#5§.§!&"§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&!?§.§+" §;
   import §&!m§.§-$6§;
   import §&"c§.§!!q§;
   import §&#W§.§?#]§;
   import §&#h§.*;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§]!&§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §+%S§.§"$7§;
   import §+%S§.§;!4§;
   import §,#c§.ArenaMenu;
   import §-%B§.*;
   import §0!§.§9"u§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1!J§.§"t§;
   import §1#p§.*;
   import §2"L§.§^$y§;
   import §5"J§.*;
   import §7$t§.§&!e§;
   import §7$t§.§^%%§;
   import §9%W§.§&!P§;
   import §<"?§.§6!8§;
   import §<%E§.§4T§;
   import §<%k§.§`!v§;
   import §>$q§.§4#;§;
   import §?"j§.§]!<§;
   import §@!N§.*;
   import §@!i§.§"-§;
   import §@!i§.§8%6§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.IOErrorEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.ColiseumError;
   import ru.pragmatix.wormix.messages.server.ColiseumStateResponse;
   import ru.pragmatix.wormix.messages.structures.BossWormStructure;
   import ru.pragmatix.wormix.messages.structures.TurnStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.serialization.structures.*;
   import ru.pragmatix.wormix.social.facebook.controller.bank.CountryCodeNames;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §6%k§
   {
      
      private static var §3o§:Vector.<§8%6§>;
      
      public static var bossAvailable:Boolean = true;
      
      public static var superBossAvailable:Boolean = true;
      
      public function §6%k§()
      {
         super();
      }
      
      public static function §7%q§(param1:int) : §8%6§
      {
         var _loc2_:§8%6§ = null;
         for each(_loc2_ in §0Q§())
         {
            if(_loc2_.getId() == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §8y§(param1:int) : Boolean
      {
         return param1 > 0;
      }
      
      public static function §>!+§(param1:int) : §+l§
      {
         if(§6&'§.getInstance().contains(param1))
         {
            return §6&'§.getInstance();
         }
         if(§!#3§.getInstance().contains(param1))
         {
            return §!#3§.getInstance();
         }
         return null;
      }
      
      public static function §`!7§(param1:uint) : §-$T§
      {
         var _loc2_:§8%6§ = null;
         var _loc3_:§]$X§ = null;
         for each(_loc2_ in §0Q§())
         {
            if(_loc2_ is §-$T§)
            {
               for each(_loc3_ in _loc2_.§2!T§().§2!O§())
               {
                  if(param1 == _loc3_.getId())
                  {
                     return _loc2_ as §-$T§;
                  }
               }
            }
         }
         return null;
      }
      
      public static function §>G§(param1:uint) : §-$T§
      {
         var _loc5_:§8%6§ = null;
         var _loc2_:§-$T§ = §6&'§.getInstance().§[&5§(param1);
         var _loc3_:§-$T§ = §!#3§.getInstance().§[&5§(param1);
         var _loc4_:Vector.<§-$T§> = new Vector.<§-$T§>(0);
         for each(_loc5_ in §0Q§())
         {
            if(_loc5_ is §-$T§)
            {
               if(§-$T§(_loc5_).getExtraAward())
               {
                  _loc4_.push(_loc5_ as §-$T§);
               }
            }
         }
         return _loc2_ || _loc3_;
      }
      
      private static function §0Q§() : Vector.<§8%6§>
      {
         if(!§3o§)
         {
            §3o§ = §6&'§.getInstance().§!!e§();
            §3o§ = §3o§.concat(§!#3§.getInstance().§!!e§());
         }
         return §3o§;
      }
      
      public static function §!k§(param1:uint) : Boolean
      {
         if(param1 > §!#3§.getInstance().§+#q§())
         {
            return param1 <= §!#3§.getInstance().§^&§;
         }
         return param1 <= §6&'§.getInstance().§^&§;
      }
      
      public static function §7Y§(param1:Array) : Boolean
      {
         return param1.length == 1 && param1[0] <= §!#3§.getInstance().§+#q§();
      }
   }
}


package §4^§
{
   import § !8§.§`!d§;
   import §!%6§.§56§;
   import §%"1§.§@%;§;
   import §&!?§.§"_§;
   import §&"c§.§5$n§;
   import §'!Z§.§2!H§;
   import §'!Z§.§[&$§;
   import §0"L§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §4!!§.§!%n§;
   import §4!!§.§2&F§;
   import §5!,§.§]"G§;
   import §7$t§.§&!e§;
   import §7$t§.§??§;
   import §8$V§.§]!i§;
   import §<%k§.§`!v§;
   import §=&!§.§<$!§;
   import §?#g§.Race;
   import §@!N§.§""L§;
   import §@!N§.§&#Z§;
   import §@<§.§+%]§;
   import §]#[§.§2%o§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.geom.Point;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§;$]§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§6Y§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§]V§;
   
   public class §'!u§
   {
      
      public static const §9#h§:Vector.<String> = new <String>[§,#O§,§2i§,§9$J§,§8[§,HEAL];
      
      public static const §,#O§:String = "AbsorbDamage";
      
      public static const §2i§:String = "BuffAttack";
      
      public static const §9$J§:String = "DebuffAttack";
      
      public static const §8[§:String = "HitEnemy";
      
      public static const HEAL:String = "Heal";
      
      public static const §!$@§:String = "NoType";
      
      private static const HEAL_VALUE:uint = 75;
      
      private static const HEAL_SHADOWS_MULTIPLIER:uint = 2;
      
      private static const ATTACK_REDUCTION_VALUE:int = -20;
      
      public static function ;&1(param1:§+%]§):void
      {
         var _loc3_:§+%]§ = null;
         var _loc2_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§="T§(param1);
         for each(_loc3_ in _loc2_)
         {
            _loc3_.attributes.attack.§5#l§(Math.abs(ATTACK_REDUCTION_VALUE));
            §2!H§.§'!i§(§0%§.format(§0$N§.BONUS_ATTACK,{"value":Math.abs(ATTACK_REDUCTION_VALUE)}),§2!H§.§5"H§,_loc3_.x + _loc3_.width * 0.5,_loc3_.y + _loc3_.height * 0.5,20);
         }
      }
      public static function @%9(param1:§+%]§):void
      {
         var _loc3_:§+%]§ = null;
         var _loc2_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(param1);
         for each(_loc3_ in _loc2_)
         {
            _loc3_.attributes.attack.§5#l§(ATTACK_REDUCTION_VALUE);
            §2!H§.§'!i§(§0%§.format(§0$N§.ATTACK_REDUCTION,{"value":ATTACK_REDUCTION_VALUE}),§2!H§.§8"<§,_loc3_.x + _loc3_.width * 0.5,_loc3_.y + _loc3_.height * 0.5,20);
         }
      }
      public static function heal(param1:§+%]§):void
      {
         var _loc3_:§+%]§ = null;
         var _loc2_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§="T§(param1);
         for each(_loc3_ in _loc2_)
         {
            new §2&F§(param1,param1.x,param1.y,_loc3_,HEAL_VALUE * HEAL_SHADOWS_MULTIPLIER);
         }
      }
      public static function %%P(param1:§+%]§):void
      {
         var _loc3_:§+%]§ = null;
         var _loc2_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(param1);
         for each(_loc3_ in _loc2_)
         {
            new §!%n§(param1,param1.x,param1.y,true,_loc3_,0);
         }
      }
      public static function !%h(param1:§+%]§):void
      {
         if(param1.attributes.hp.§9"H§() < 1 && !param1.disposed)
         {
            param1.attributes.hp.§#1§(HEAL_VALUE);
         }
      }
      public function §'!u§()
      {
         super();
      }
      
      public static function §#!]§(param1:String) : Function
      {
         switch(param1)
         {
            case §2i§:
               return §;&1§;
            case §9$J§:
               return §@%9§;
            case §8[§:
               return §%%P§;
            case HEAL:
               return heal;
            default:
               return §!%h§;
         }
      }
   }
}


package ru.pragmatix.flox.social.controller
{
   import §%"1§.§+#h§;
   import §%"1§.§=#?§;
   import §&#h§.§5f§;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §2!-§.DamageEvent;
   import §2#W§.PvpChestBox;
   import §3#a§.§-#M§;
   import §4&F§.*;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$1§.PushingMine;
   import §<!W§.§;#A§;
   import §<%k§.*;
   import §?$L§.§ "N§;
   import §@<§.§+%]§;
   import §[%§.*;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.media.SoundTransform;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §7"n§
   {
      
      public static const §>$a§:Vector.<§7"n§> = new Vector.<§7"n§>(0);
      
      public static const NONE:§7"n§ = new §7"n§("none",0);
      
      public static const VK:§7"n§ = new §7"n§("vkontakte",1);
      
      public static const OK:§7"n§ = new §7"n§("odnoklassniki",2);
      
      public static const MM:§7"n§ = new §7"n§("mailru",3);
      
      public static const §-"X§:§7"n§ = new §7"n§("nate",4);
      
      public static const §8%W§:§7"n§ = new §7"n§("baratikor",5);
      
      public static const §"%O§:§7"n§ = new §7"n§("nk",6);
      
      public static const §=#J§:§7"n§ = new §7"n§("onelt",7);
      
      public static const §;"B§:§7"n§ = new §7"n§("fotostrana",8);
      
      public static const FB:§7"n§ = new §7"n§("facebook",9);
      
      public static const §<%9§:§7"n§ = new §7"n§("vz",10);
      
      public static const §1&?§:§7"n§ = new §7"n§("draugiem",11);
      
      public var name:String;
      
      public var §1#&§:uint;
      
      public function §7"n§(param1:String, param2:int)
      {
         super();
         this.name = param1;
         this.§1#&§ = param2;
         §>$a§[§>$a§.length] = this;
      }
      
      public static function valueOf(param1:String) : §7"n§
      {
         var _loc2_:§7"n§ = null;
         for each(_loc2_ in §>$a§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return NONE;
      }
      
      public static function §9&,§(param1:uint) : §7"n§
      {
         var _loc2_:§7"n§ = null;
         for each(_loc2_ in §>$a§)
         {
            if(_loc2_.§1#&§ == param1)
            {
               return _loc2_;
            }
         }
         return NONE;
      }
      
      public function equals(param1:§7"n§) : Boolean
      {
         return this.name == param1.name;
      }
   }
}


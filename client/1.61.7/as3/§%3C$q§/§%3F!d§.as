package §<$q§
{
   import §1#p§.§"Z§;
   import §1#p§.Team;
   import §=$#§.§1!$§;
   import §=&!§.§]$d§;
   import §@!N§.§2"e§;
   import §@!i§.§,! §;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@!i§.§<#&§;
   import §@"!§.§7$x§;
   import §@"!§.§^!M§;
   import §@"!§.§`<§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   
   public class §?!d§
   {
      
      public var §2#I§:Boolean = false;
      
      public var §@#-§:Boolean = false;
      
      public var §'",§:Boolean = false;
      
      public var timer:§,%3§ = §,%3§.DEFAULT;
      
      public var online:Boolean = false;
      
      public var achievements:Boolean = false;
      
      public var backpackEnabled:Boolean = true;
      
      public var §`%?§:§"%r§ = §"%r§.STABLE;
      
      public var §2&6§:§7$x§;
      
      public var §^!T§:Boolean = false;
      
      public var §;Y§:Boolean = false;
      
      public var §;%=§:Boolean = true;
      
      public var §3%x§:Boolean = false;
      
      public var §!"3§:Boolean = false;
      
      public var §2%L§:Boolean = false;
      
      public var §`!I§:Boolean = true;
      
      public var §=#%§:Vector.<WeaponStructure> = new Vector.<WeaponStructure>(0);
      
      public var §-!M§:uint = 0;
      
      public var §@!=§:uint = 40;
      
      public var chatSettings:§6%b§;
      
      public var §-%-§:Boolean = false;
      
      public var §?$p§:Boolean = false;
      
      public var §["%§:Boolean = false;
      
      public var §>%z§:Boolean = false;
      
      public function §?!d§()
      {
         super();
      }
      
      public static function §#"N§() : §?!d§
      {
         var _loc1_:§?!d§ = new §?!d§();
         _loc1_.online = false;
         _loc1_.§'",§ = true;
         _loc1_.§^!T§ = false;
         _loc1_.§;Y§ = false;
         _loc1_.§@#-§ = true;
         _loc1_.§2#I§ = false;
         _loc1_.timer = Application.instance.§;"7§() ? §,%3§.§4"x§ : §,%3§.§4"x§;
         _loc1_.§2&6§ = §`<§.§7F§;
         var _loc2_:§]$d§ = §8"%§.§?!W§.§^!U§();
         var _loc3_:String = _loc2_.floodingOption;
         var _loc4_:§"%r§ = §"%r§.§8$R§(_loc2_.scene.§^$'§());
         _loc1_.§`%?§ = _loc3_ ? §"%r§.§#$N§(_loc3_,_loc4_) : _loc4_;
         _loc1_.chatSettings = new §6%b§(§1!$§.§!"1§,§1!$§.NONE,§1!$§.NONE,§1!$§.§%%-§);
         _loc1_.§`!I§ = false;
         _loc1_.§-%-§ = true;
         return _loc1_;
      }
      
      public static function §8&+§() : §?!d§
      {
         var _loc1_:§?!d§ = new §?!d§();
         _loc1_.online = false;
         _loc1_.§'",§ = true;
         _loc1_.§^!T§ = true;
         _loc1_.§;Y§ = false;
         _loc1_.§@#-§ = true;
         _loc1_.§2#I§ = true;
         _loc1_.timer = §,%3§.DEFAULT;
         _loc1_.achievements = §,! §.§]"X§();
         _loc1_.§2&6§ = §`<§.§7F§;
         _loc1_.chatSettings = new §6%b§(§1!$§.§!"1§,§1!$§.NONE,§1!$§.NONE,§1!$§.§%%-§);
         _loc1_.§-%-§ = true;
         return _loc1_;
      }
      
      public static function §!$<§(param1:Boolean) : §?!d§
      {
         var _loc2_:§?!d§ = new §?!d§();
         _loc2_.online = true;
         _loc2_.§2%L§ = true;
         _loc2_.§'",§ = true;
         _loc2_.§^!T§ = false;
         _loc2_.§;Y§ = true;
         _loc2_.§@#-§ = true;
         _loc2_.§2#I§ = false;
         _loc2_.timer = §,%3§.DEFAULT;
         _loc2_.§2&6§ = §^!M§.§7F§;
         _loc2_.§!"3§ = true;
         _loc2_.§-!M§ = 0;
         var _loc3_:§]$d§ = §8"%§.§?!W§.§^!U§();
         var _loc4_:String = _loc3_.floodingOption;
         var _loc5_:§"%r§ = §"%r§.§8$R§(_loc3_.scene.§^$'§());
         _loc2_.§`%?§ = Boolean(_loc4_) && _loc3_.wager == §<#&§.§[i§ ? §"%r§.§#$N§(_loc4_,_loc5_) : _loc5_;
         _loc2_.chatSettings = new §6%b§(§1!$§.§!"1§,§1!$§.§%%-§,§1!$§.NONE,§1!$§.§%%-§);
         _loc2_.achievements = §,! §.§]"X§() && param1;
         _loc2_.§-%-§ = true;
         return _loc2_;
      }
      
      public static function §1%3§() : §?!d§
      {
         var _loc1_:§?!d§ = new §?!d§();
         _loc1_.online = false;
         _loc1_.§'",§ = false;
         _loc1_.§^!T§ = false;
         _loc1_.§;Y§ = false;
         _loc1_.§@#-§ = false;
         _loc1_.§2#I§ = false;
         _loc1_.achievements = §,! §.§]"X§();
         _loc1_.§`%?§ = §"%r§.STABLE;
         _loc1_.timer = §,%3§.DEFAULT;
         _loc1_.§2&6§ = §`<§.§7F§;
         _loc1_.§;%=§ = false;
         _loc1_.chatSettings = new §6%b§(§1!$§.§!"1§,§1!$§.NONE,§1!$§.NONE,§1!$§.§%%-§);
         _loc1_.§-%-§ = true;
         return _loc1_;
      }
      
      public static function §!"i§(param1:§?!d§, param2:§?!d§) : void
      {
         var _loc3_:§?!d§ = §1%3§();
         if(param2.online != _loc3_.online)
         {
            param1.online = param2.online;
         }
         if(param2.§2%L§ != _loc3_.§2%L§)
         {
            param1.§2%L§ = param2.§2%L§;
         }
         if(param2.§'",§ != _loc3_.§'",§)
         {
            param1.§'",§ = param2.§'",§;
         }
         if(param2.§^!T§ != _loc3_.§^!T§)
         {
            param1.§^!T§ = param2.§^!T§;
         }
         if(param2.§;Y§ != _loc3_.§;Y§)
         {
            param1.§;Y§ = param2.§;Y§;
         }
         if(param2.§@#-§ != _loc3_.§@#-§)
         {
            param1.§@#-§ = param2.§@#-§;
         }
         if(param2.§2#I§ != _loc3_.§2#I§)
         {
            param1.§2#I§ = param2.§2#I§;
         }
         if(param2.achievements != _loc3_.achievements)
         {
            param1.achievements = param2.achievements;
         }
         if(param2.§`%?§ != _loc3_.§`%?§)
         {
            param1.§`%?§ = param2.§`%?§;
         }
         if(param2.timer != _loc3_.timer)
         {
            param1.timer = param2.timer;
         }
         if(param2.§2&6§ != _loc3_.§2&6§)
         {
            param1.§2&6§ = param2.§2&6§;
         }
         if(param2.§;%=§ != _loc3_.§;%=§)
         {
            param1.§;%=§ = param2.§;%=§;
         }
         if(param2.chatSettings != _loc3_.chatSettings)
         {
            param1.chatSettings = param2.chatSettings;
         }
         if(param2.§-%-§ != _loc3_.§-%-§)
         {
            param1.§-%-§ = param2.§-%-§;
         }
      }
      
      public static function §5$Q§(param1:§?!d§) : void
      {
         param1.online = true;
         param1.§2&6§ = §^!M§.§7F§;
         param1.§3%x§ = true;
      }
   }
}


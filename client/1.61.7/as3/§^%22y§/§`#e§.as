package §^"y§
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §#"V§.§8"@§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.§-"F§;
   import §'"N§.*;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §-"N§.§+#R§;
   import §0%[§.§6!?§;
   import §2#i§.§!$A§;
   import §4!!§.§'$V§;
   import §4#2§.*;
   import §4B§.§=%8§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7"Q§.*;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#<§.§&§;
   import §8#<§.§1"k§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §<%k§.§`!v§;
   import §?"j§.§]!<§;
   import §@!i§.*;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[%§.Cat;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TextEvent;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetDailyBonus;
   import ru.pragmatix.wormix.messages.server.GetDailyBonusResult;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   
   public class §`#e§
   {
      
      public function §`#e§()
      {
         super();
      }
      
      public static function §]#N§(param1:§!$A§, param2:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§;#_§ = null;
         for each(_loc3_ in param1.config)
         {
            _loc4_ = new §;#_§();
            if(_loc3_["render"])
            {
               §6!?§.§;"0§(param1.renderDefaults,_loc3_["render"]);
            }
            if(Boolean(_loc3_.refId) && Boolean(param2[_loc3_.refId]))
            {
               _loc4_ = §;#_§(param2[_loc3_.refId]).clone();
               _loc4_.initFromConfig(_loc3_);
            }
            _loc4_.initFromConfig(_loc3_);
            if(Social.§^"U§.§=#E§(_loc4_))
            {
               if(Boolean(param1.customConfigs) && Boolean(param1.customConfigs[_loc4_.getId()]))
               {
                  _loc4_.initFromConfig(param1.customConfigs[_loc4_.getId()]);
               }
               param2[_loc4_.getId()] = _loc4_;
            }
         }
      }
      
      public static function §-#y§(param1:§=%8§) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§^$E§ = null;
         for each(_loc2_ in param1.config)
         {
            for each(_loc3_ in §'q§(_loc2_))
            {
               §<$c§.§`!K§(_loc3_);
            }
         }
      }
      
      private static function §'q§(param1:Object) : Vector.<§^$E§>
      {
         var _loc3_:Object = null;
         var _loc4_:§^$E§ = null;
         var _loc2_:Vector.<§^$E§> = new Vector.<§^$E§>();
         for each(_loc3_ in param1.charConfig)
         {
            _loc4_ = new §^$E§();
            _loc4_.initFromConfig(param1);
            _loc4_.initFromConfig(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      public static function §9$F§(param1:Array, param2:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§!n§ = null;
         for each(_loc3_ in param1)
         {
            _loc4_ = new §`!d§();
            _loc4_.initFromConfig(_loc3_);
            param2[_loc4_.getId()] = _loc4_;
         }
      }
      
      public static function §;&I§(param1:Array, param2:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§!n§ = null;
         for each(_loc3_ in param1)
         {
            _loc4_ = new §]!<§();
            _loc4_.initFromConfig(_loc3_);
            param2[_loc4_.getId()] = _loc4_;
         }
      }
      
      public static function §-$M§(param1:Array) : void
      {
         var _loc3_:Object = null;
         var _loc2_:Vector.<§+%7§> = new Vector.<§+%7§>(0);
         for each(_loc3_ in param1)
         {
            _loc2_.push(§+%7§.§-%W§(_loc3_));
         }
         §4&A§.init(_loc2_);
      }
      
      public static function §8!y§(param1:Array, param2:Object, param3:Class, param4:Boolean = true) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         if(param4 && new param3() is §!n§)
         {
            for each(_loc5_ in param1)
            {
               _loc6_ = new param3();
               §!n§(_loc6_).initFromConfig(_loc5_);
               param2[§!n§(_loc6_).getId()] = _loc6_;
            }
         }
      }
      
      public static function §3!`§(param1:Array, param2:Object) : void
      {
         var _loc3_:Object = null;
         for each(_loc3_ in param1)
         {
            param2[_loc3_.id] = _loc3_;
         }
      }
      
      public static function §;$@§(param1:§&#1§, param2:§1"k§) : void
      {
         var family:CraftedEquipFamily = null;
         var data:Object = null;
         var prefix:§5%>§ = null;
         var familyStore:Object = null;
         var recordHat:§^$E§ = null;
         var recordArtifact:§^%%§ = null;
         var configFamilies:§&#1§ = param1;
         var configPrefixes:§1"k§ = param2;
         familyStore = §<$c§.§1$E§();
         var getFamily:Function = function(param1:Object):CraftedEquipFamily
         {
            var _loc2_:Object = null;
            family = new CraftedEquipFamily();
            family.initFromConfig(param1);
            familyStore[family.getId()] = family;
            _loc2_ = configPrefixes.§=[§(family.getId());
            family.§<%#§(_loc2_.legendFilters);
            var _loc3_:Vector.<§5%>§> = _loc2_.prefixes;
            family.§7!=§(_loc3_);
            return family;
         };
         var fill:Function = function(param1:CraftedEquipFamily, param2:§=?§, param3:§5%>§):void
         {
            param3.§!j§(param1);
            param2.§-!W§(param3.§&!H§());
            param2.§ %0§(param3.§2![§());
            param2.§#"4§(param3.§9P§());
            param2.§%&9§(param3.§@$p§());
         };
         for each(data in configFamilies.§<#'§())
         {
            family = getFamily(data);
            for each(prefix in family.§1#§())
            {
               for each(recordHat in §'q§(data))
               {
                  fill(family,recordHat,prefix);
                  §<$c§.§`!K§(recordHat);
               }
            }
         }
         for each(data in configFamilies.§+8§())
         {
            family = getFamily(data);
            for each(prefix in family.§1#§())
            {
               recordArtifact = new §^%%§();
               recordArtifact.initFromConfig(data);
               fill(family,recordArtifact,prefix);
               §<$c§.§0$^§()[recordArtifact.getId()] = recordArtifact;
            }
         }
      }
   }
}


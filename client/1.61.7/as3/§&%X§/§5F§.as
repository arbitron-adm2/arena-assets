package §&%X§
{
   import § !P§.*;
   import §!!i§.§@&&§;
   import §#"V§.§!&5§;
   import §%"1§.§=#?§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&#E§.§4##§;
   import §&&6§.*;
   import §+%S§.§ #R§;
   import §-%B§.*;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §2"L§.§^$y§;
   import §4u§.ReagentHint;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §7!-§.MD5;
   import §7$t§.§&!e§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.*;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.response.ClanSummaryResponse;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.LoginAwardStructure;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§0$c§;
   
   public class §5F§
   {
      
      public function §5F§()
      {
         super();
      }
      
      public static function §9#a§(param1:LoginAwardStructure) : §]+§
      {
         return §'f§(param1.awards);
      }
      
      public static function §'f§(param1:Array) : §]+§
      {
         var _loc3_:GenericAwardStructure = null;
         var _loc2_:§]+§ = new §]+§();
         for each(_loc3_ in param1)
         {
            switch(_loc3_.awardKind)
            {
               case §[#c§.§`_§:
                  _loc2_.money = _loc3_.count;
                  break;
               case §[#c§.§6&"§:
                  _loc2_.realMoney = _loc3_.count;
                  break;
               case §[#c§.§@",§:
                  _loc2_.battleToken = _loc3_.count;
                  break;
               case §[#c§.§!_§:
                  _loc2_.reaction = _loc3_.count;
                  break;
               case §[#c§.REAGENT:
                  _loc2_.reagents[_loc3_.itemId] = _loc3_.count;
                  break;
               case §[#c§.§<#^§:
                  _loc2_.§2&4§[_loc3_.itemId] = _loc3_.count;
                  break;
               case §[#c§.§2"@§:
                  _loc2_.items[_loc3_.itemId] = _loc3_.count;
                  break;
               case §[#c§.§##+§:
                  _loc2_.items[_loc3_.itemId] = _loc3_.count || 1;
                  break;
               case §[#c§.§<$e§:
                  _loc2_.items[_loc3_.itemId] = _loc3_.count;
                  break;
               case §[#c§.EXPERIENCE:
                  _loc2_.exp = _loc3_.count;
                  break;
               case §[#c§.WAGER_TOKEN:
                  _loc2_.wagerToken = _loc3_.count;
                  break;
               case §[#c§.BOSS_TOKEN:
                  _loc2_.bossToken = _loc3_.count;
            }
         }
         return _loc2_;
      }
      
      public static function §@%C§(param1:Array, param2:Object, param3:String) : void
      {
         param1.push(§<$M§.PAR0,param2["bPr"] || "-");
         param1.push(§<$M§.PAR1,param2["bMn"] || "-");
         param1.push(§<$M§.PAR2,param3);
         param1.push(§<$M§.PAR3,param2["prnt"] || "-");
         param1.push(§<$M§.PAR4,param2["uPr"] || "-");
         param1.push(§<$M§.PAR5,param2["uMn"] || "-");
         param1.push("cpuAr",Capabilities.cpuArchitecture);
         param1.push("lang",Capabilities.language);
         param1.push("manuf",Capabilities.manufacturer);
         param1.push("os",Capabilities.os);
         param1.push("ss",Capabilities.serverString);
         param1.push("sup32BPs",Capabilities.supports32BitProcesses);
         param1.push("sup64BPs",Capabilities.supports64BitProcesses);
         param1.push("Cap.ver",Capabilities.version);
         param1.push("totMem",System.totalMemory);
         param1.push("useCPg",System.useCodePage);
         param1.push("vmVer",System.vmVersion);
      }
   }
}


package ru.pragmatix.wormix.model.items.crafted
{
   import § #m§.§;#^§;
   import § %f§.*;
   import § &5§.§0&$§;
   import §!$Z§.§"$I§;
   import §!$Z§.§6=§;
   import §!$Z§.§7$2§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#"V§.§8"@§;
   import §##y§.CollisionEvent;
   import §#5§.*;
   import §%"1§.*;
   import §%"Z§.§'$2§;
   import §&!m§.§-$6§;
   import §&#h§.§-"F§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§1§;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§>!I§;
   import §+&<§.§@$L§;
   import §+&<§.§^@§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%j§.§-,§;
   import §0%z§.§,$h§;
   import §0&F§.§0%v§;
   import §0&F§.SelectObjectEvent;
   import §1!J§.§@#%§;
   import §2"L§.§;#L§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3"@§.§#$O§;
   import §3#T§.§]!6§;
   import §3#a§.*;
   import §4#2§.§,%g§;
   import §4'§.§`"q§;
   import §5!,§.§?!P§;
   import §5!9§.§6$,§;
   import §5"J§.*;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §6"'§.§&"3§;
   import §7$t§.§&!e§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §8#o§.§1@§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §<!^§.§["l§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%E§.§4T§;
   import §<%k§.§`!v§;
   import §=!p§.§1e§;
   import §="z§.§-O§;
   import §="z§.§<$t§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §?>§.§4#o§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@$v§.§%3§;
   import §@8§.§%Z§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[!`§.§<#m§;
   import §[$<§.§;%S§;
   import §[$P§.§+H§;
   import §[%§.Boar;
   import §]^§.§3$f§;
   import §]^§.§4&+§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`#x§.§"$r§;
   import §`%&§.§`§;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.XMLLoader;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getQualifiedClassName;
   import org.gestouch.core.Gestouch;
   import org.gestouch.core.IDisplayListAdapter;
   import org.gestouch.core.gestouch_internal;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.BuySelectRaceResponse;
   import ru.pragmatix.wormix.messages.structures.CostStructure;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.social.facebook.controller.bank.FacebookBankController;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class CraftedEquipFamily extends §&!e§
   {
      
      private var §2%G§:§]$q§;
      
      private var prefixes:Vector.<§5%>§>;
      
      private var reagents:Vector.<§-$6§>;
      
      private var §!&9§:Vector.<§-$6§>;
      
      private var §^>§:§'$2§;
      
      private var hideInCraft:Boolean = false;
      
      private var onlyForRecraft:Boolean = false;
      
      private var isFemale:Boolean = false;
      
      private var isNeuter:Boolean = false;
      
      private var legendFilters:Array;
      
      public function CraftedEquipFamily()
      {
         super();
      }
      
      override public function initFromConfig(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         super.initFromConfig(param1);
         if(param1.isFemale)
         {
            this.§=!t§(param1.isFemale);
         }
         if(param1.isNeuter)
         {
            this.§@%G§(param1.isNeuter);
         }
         if(param1.onlyForRecraft)
         {
            this.§4$A§(param1.onlyForRecraft);
         }
         if(param1.hideInCraft)
         {
            this.§1"&§(param1.hideInCraft);
         }
         if(param1.reagents)
         {
            this.reagents = param1.reagents;
         }
         if(param1.craftCost)
         {
            _loc2_ = param1.craftCost;
            if(_loc2_.reagents)
            {
               this.reagents = _loc2_.reagents;
            }
            if(_loc2_.price >= 0 || _loc2_.realprice >= 0)
            {
               §8&;§(_loc2_.price,_loc2_.realprice);
            }
         }
         if(param1.remakeCost)
         {
            _loc3_ = param1.remakeCost;
            if(_loc3_.reagents)
            {
               this.§!&9§ = _loc3_.reagents;
            }
            if(_loc3_.price >= 0 || _loc3_.realprice >= 0)
            {
               this.§="k§(_loc3_.price,_loc3_.realprice);
            }
         }
         if(param1.charConfig)
         {
            §""y§(param1.charConfig[0].iconClassName);
         }
         if(param1.iconClassName)
         {
            §""y§(param1.iconClassName);
         }
         if(param1.menuIcon)
         {
            §#!h§(param1.menuIcon);
         }
         if(param1.familyId)
         {
            §-!W§(param1.familyId);
         }
         this.§2%G§ = new §]$q§(§]$q§.NONE);
         §#&>§.§%%Q§(this.§2%G§,param1.bonuses || param1);
      }
      
      public function get §-!T§() : Boolean
      {
         var _loc1_:Array = null;
         var _loc2_:BackpackItem = null;
         var _loc3_:§5%>§ = null;
         if(this.onlyForRecraft)
         {
            _loc1_ = Application.userProfile.§,%o§().§,!V§();
            for each(_loc2_ in _loc1_)
            {
               if(_loc2_.getRecord() is §=?§)
               {
                  for each(_loc3_ in this.prefixes)
                  {
                     if(_loc2_.getId() == _loc3_.§&!H§())
                     {
                        return true;
                     }
                  }
               }
            }
         }
         return !this.hideInCraft && !this.onlyForRecraft;
      }
      
      public function § "7§() : Boolean
      {
         return this.hideInCraft;
      }
      
      private function §1"&§(param1:Boolean) : void
      {
         this.hideInCraft = param1;
      }
      
      public function §"&-§() : Boolean
      {
         return this.onlyForRecraft;
      }
      
      private function §4$A§(param1:Boolean) : void
      {
         this.onlyForRecraft = param1;
      }
      
      public function §7!=§(param1:Vector.<§5%>§>) : void
      {
         this.prefixes = param1;
      }
      
      public function §]%t§() : §]$q§
      {
         return this.§2%G§;
      }
      
      public function §1#§() : Vector.<§5%>§>
      {
         return this.prefixes;
      }
      
      public function §]"!§(param1:int) : §5%>§
      {
         var _loc2_:§5%>§ = null;
         var _loc3_:§5%>§ = null;
         for each(_loc3_ in this.prefixes)
         {
            if(_loc3_.§&!H§() == param1)
            {
               _loc2_ = _loc3_;
               break;
            }
         }
         return _loc2_;
      }
      
      public function §]#x§() : Vector.<§-$6§>
      {
         return this.reagents;
      }
      
      public function §=%k§() : Vector.<§-$6§>
      {
         return this.§!&9§;
      }
      
      public function §="k§(param1:uint, param2:uint) : void
      {
         this.§^>§ = new §'$2§(param1,param2);
      }
      
      public function §>"+§() : §'$2§
      {
         return this.§^>§;
      }
      
      public function §9"3§() : Array
      {
         return this.legendFilters;
      }
      
      public function §<%#§(param1:Array) : void
      {
         this.legendFilters = param1;
      }
      
      public function §=!t§(param1:Boolean) : void
      {
         this.isFemale = param1;
      }
      
      public function §,%B§() : Boolean
      {
         return this.isFemale;
      }
      
      public function §@%G§(param1:Boolean) : void
      {
         this.isNeuter = param1;
      }
      
      public function §#!o§() : Boolean
      {
         return this.isNeuter;
      }
   }
}


package §7$t§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § $q§.§<"]§;
   import §!$d§.*;
   import §#%!§.§%&F§;
   import §'!Z§.§1"-§;
   import §+#P§.§]!E§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §,$J§.§0%G§;
   import §0!Y§.§#!Z§;
   import §0%"§.§[!^§;
   import §2!-§.DamageEvent;
   import §2"L§.*;
   import §7!B§.§&"T§;
   import §8#<§.§!#^§;
   import §8#a§.§>!o§;
   import §;#O§.§+%7§;
   import §<!W§.§=!6§;
   import §=&!§.§<$Z§;
   import §[$<§.§>!u§;
   import §[$P§.§+H§;
   import §[%§.Dragon;
   import §^"y§.§[$>§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§5$1§;
   import §`%&§.§`§;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.SelectRaceResult;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §=?§ extends §&!e§ implements §[$>§
   {
      
      private var §8<§:§]$q§;
      
      private var §2!+§:§]$q§;
      
      private var §%%!§:Boolean;
      
      private var expiredTime:int = -1;
      
      private var §2T§:Vector.<String>;
      
      public function §=?§(param1:String)
      {
         super();
         this.§8<§ = new §]$q§(param1);
         this.§2!+§ = new §]$q§(param1);
      }
      
      override public function initFromConfig(param1:Object) : void
      {
         super.initFromConfig(param1);
         if(param1.duration)
         {
            this.§%%!§ = true;
            this.§0!t§(param1.duration * §0#2§.§8#D§);
         }
         this.§#"4§(param1);
         this.§%&9§(param1);
         §"$d§(true);
         if(param1.animatedSubClipNames)
         {
            this.§2T§ = param1.animatedSubClipNames;
         }
      }
      
      public function §#"4§(param1:Object) : void
      {
         §#&>§.§%%Q§(this.§8<§,param1.bonuses || param1);
         var _loc2_:int = getId();
         if(this.§%%!§ && !§!#^§.§`!2§(int(_loc2_ / 10) * 10) && (§,$O§.§&&,§(_loc2_) && §,$O§.§]$G§(_loc2_) || §]!E§.§]%m§(_loc2_) && §]!E§.§]$G§(_loc2_)) || §[!^§.§-$+§(_loc2_) && §[!^§.§]$G§(_loc2_))
         {
            §#&>§.§%%Q§(this.§2!+§,param1.bonuses || param1,true);
         }
         else
         {
            this.§2!+§ = this.§8<§;
         }
      }
      
      public function §%&9§(param1:Object) : void
      {
         if(param1)
         {
            if(param1.duration)
            {
               this.duration = param1.duration;
            }
         }
      }
      
      public function getBonusList(param1:Boolean = false) : §]$q§
      {
         return param1 ? this.§2!+§ : this.§8<§;
      }
      
      public function isTemporalItem() : Boolean
      {
         return this.§%%!§ || this.expiredTime != -1;
      }
      
      private function §0!t§(param1:int) : void
      {
         this.expiredTime = param1 * §0#2§.§+%§ * 1000;
      }
      
      public function get temp() : Boolean
      {
         return this.§%%!§;
      }
      
      public function cloneEquipRecord(param1:§=?§) : void
      {
         § #W§(param1);
         param1.§8<§ = this.§8<§;
         param1.§2!+§ = this.§2!+§;
         param1.§%%!§ = this.§%%!§;
         param1.expiredTime = this.expiredTime;
         if(this.§2T§)
         {
            param1.§2T§ = this.§2T§.concat();
         }
      }
      
      public function get animatedSubClipNames() : Vector.<String>
      {
         return this.§2T§;
      }
   }
}


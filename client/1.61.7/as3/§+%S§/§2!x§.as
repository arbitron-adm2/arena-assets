package §+%S§
{
   import § &5§.§=#P§;
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §%L§.§%%w§;
   import §&#h§.§!#x§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §'$Z§.§2#f§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §65§.§`"C§;
   import §7!B§.§6#I§;
   import §7$t§.§&!e§;
   import §7$t§.§2& §;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §8#a§.§@#c§;
   import §8$Z§.§9!&§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §="z§.§9%1§;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §?o§.StuffedBouncingGrenade;
   import §@!N§.§""L§;
   import §@<§.§+%]§;
   import §[$<§.§;%S§;
   import §[%'§.§<"G§;
   import §^!]§.MineSetUpEvent;
   import §^"y§.§]#i§;
   import flash.display.DisplayObjectContainer;
   import flash.errors.IllegalOperationError;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.PutQuestTaskProgress;
   import ru.pragmatix.wormix.messages.server.SearchTheHouseResult;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.WidenSearch;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §2!x§ extends §`"C§
   {
      
      public static const NAME:String = "BONUS_ATTACK_BUFF";
      
      public static const § $s§:String = "CAT_BONUS_ATTACK_BUFF";
      
      public static const §#!f§:String = "DRAGON_BONUS_ATTACK_BUFF";
      
      private var §#%3§:Boolean;
      
      public function §2!x§(param1:String, param2:int, param3:Boolean = false)
      {
         this.§#%3§ = param3;
         super(param1,§-"^§,param2);
      }
      
      override protected function §5#F§() : void
      {
         this.§3%<§(value.value);
         this.§#%3§ = false;
      }
      
      override protected function §0&"§() : void
      {
         this.§3%<§(-value.value);
      }
      
      override public function addValue(param1:int) : void
      {
         value.value += param1;
         this.§3%<§(param1);
      }
      
      private function §3%<§(param1:int) : void
      {
         unit.attributes.attack.§5#l§(param1);
         if(param1 > 0 && !this.§#%3§)
         {
            §2!H§.§'!i§(§0%§.format(§0$N§.BONUS_ATTACK,{"value":param1}),§2!H§.§5"H§,unit.x + unit.width,unit.y + unit.height * 0.5,20);
         }
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §2!x§(name,value.value,true));
      }
   }
}


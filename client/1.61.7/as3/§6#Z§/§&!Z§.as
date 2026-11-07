package §6#Z§
{
   import § #m§.§[&H§;
   import § $q§.§3U§;
   import § &5§.§@N§;
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §"&?§.*;
   import §##j§.§]$X§;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,&8§.*;
   import §-@§.§0"e§;
   import §0!§.§6#z§;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §1#p§.§2=§;
   import §2!-§.HpChangeEvent;
   import §2#s§.*;
   import §4#2§.*;
   import §4%_§.§%%D§;
   import §4%_§.§3§;
   import §4u§.§[%u§;
   import §6",§.§[%w§;
   import §7!B§.§8%%§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §<!W§.§;#A§;
   import §<%E§.§=$u§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=!p§.§8#x§;
   import §?"[§.*;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!W§.§8!S§;
   import §@!i§.§"-§;
   import §@!i§.§8%6§;
   import §@#K§.§-§;
   import §@#K§.§^%"§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §&!Z§ extends §4#V§
   {
      
      public static const §;&E§:uint = 5;
      
      public static const §8%J§:uint = 4;
      
      public static const §=%O§:uint = 1;
      
      private var count:§&$2§ = new §&$2§(0);
      
      private var §2"T§:§&$2§ = new §&$2§(0);
      
      public function §&!Z§()
      {
         super(0.1);
      }
      
      public function §0#s§(param1:int, param2:int, param3:uint) : §-#8§
      {
         if(this.count.value > 0 && this.§2"T§.value < this.count.value && §>?§(param1,param2,param3))
         {
            ++this.§2"T§.value;
            return new §^%"§(new Point(param1,param2),§=%O§,§8%J§);
         }
         return null;
      }
      
      public function §!#i§(param1:int) : void
      {
         this.count.value = Math.min(this.count.value + param1,§;&E§);
      }
      
      public function getCount() : int
      {
         return this.count.value;
      }
      
      public function §72§() : int
      {
         return this.§2"T§.value;
      }
   }
}


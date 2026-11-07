package §7!y§
{
   import § !8§.§9%+§;
   import §!K§.§&#Q§;
   import §!L§.§+"'§;
   import §##y§.§9§;
   import §%"Z§.§'$2§;
   import §%L§.§#&%§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §+$=§.§6#A§;
   import §0%z§.§+y§;
   import §1#p§.*;
   import §6$z§.§%%z§;
   import §6$z§.§%&&§;
   import §7"Q§.§0$L§;
   import §9![§.§^§;
   import §9%W§.§&!P§;
   import §=&!§.§3$z§;
   import §=&!§.§4$z§;
   import §=&!§.§<$!§;
   import §=&!§.§<$Z§;
   import §?"j§.*;
   import §?#g§.*;
   import §@!N§.§4"0§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §[%§.Rhino;
   import §^#[§.§&$2§;
   import com.greensock.loading.core.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §?"Z§ extends §%%z§ implements §%&&§
   {
      
      public static const NAME:String = "BonusSquadRhinoResists";
      
      public static const §9$t§:String = "BonusSquadRhinoResistsAlt";
      
      public static const § %-§:§&$2§ = new §&$2§(1);
      
      public static const § %,§:§&$2§ = new §&$2§(2);
      
      public static const §%%-§:§&$2§ = new §&$2§(3);
      
      private static const §!$k§:§&$2§ = new §&$2§(Rhino.§>#R§.value / §%%-§.value * § %,§.value);
      
      private static const §8#I§:§&$2§ = new §&$2§(Rhino.§>#R§.value / §%%-§.value * § %-§.value);
      
      private var §+&G§:§]$q§;
      
      public function §?"Z§()
      {
         var _loc1_:Vector.<§@"I§> = new <§@"I§>[new §@"I§(Bonus.SHOCK_DEFENSE,§!$k§.value),new §@"I§(Bonus.FROST_DEFENSE,§!$k§.value),new §@"I§(Bonus.FIRE_DEFENSE,§!$k§.value),new §@"I§(Bonus.FORTITUDE,§!$k§.value)];
         var _temp_8:* = new <§@"I§>[new §@"I§(Bonus.SHOCK_DEFENSE,§8#I§.value),new §@"I§(Bonus.FROST_DEFENSE,§8#I§.value),new §@"I§(Bonus.FIRE_DEFENSE,§8#I§.value),new §@"I§(Bonus.FORTITUDE,§8#I§.value)];
         var _loc2_:Vector.<§@"I§> = new <§@"I§>[new §@"I§(Bonus.SHOCK_DEFENSE,§8#I§.value),new §@"I§(Bonus.FROST_DEFENSE,§8#I§.value),new §@"I§(Bonus.FIRE_DEFENSE,§8#I§.value),new §@"I§(Bonus.FORTITUDE,§8#I§.value)];
         this.§+&G§ = §]$q§.§7!a§(§9$t§,_loc2_);
         super(NAME,_loc1_,true);
      }
      
      override public function §[%x§(param1:§+%]§) : void
      {
         param1.bonuses.§]!X§(param1 is Rhino ? this.§+&G§ : §8<§);
      }
      
      override public function §@!X§(param1:§+%]§) : void
      {
         param1.bonuses.§9=§(param1.bonuses.§#&$§(§9$t§) ? this.§+&G§ : §8<§);
      }
   }
}


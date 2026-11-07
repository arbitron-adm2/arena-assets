package § #k§
{
   import §#%!§.§ §;
   import §#%!§.§%&F§;
   import §#%!§.§^%c§;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&#h§.§-"F§;
   import §'!Z§.§]!&§;
   import §0!§.§9"u§;
   import §0&F§.§0%v§;
   import §2"L§.§,!t§;
   import §7!B§.§&"T§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §@<§.§+%]§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import flash.events.Event;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.social.Social;
   
   public class §3%0§ extends §&"T§ implements §^%c§
   {
      
      private static const §9%§:uint = 50;
      
      private static const §-!i§:uint = 20;
      
      private static const §`!`§:uint = 16;
      
      protected static const §#%v§:String = "BOSS_EMPEROR_ARCHER";
      
      protected static const §]"[§:String = "BOSS_EMPEROR_SPEARMAN";
      
      protected static const §`"[§:String = "BOSS_EMPEROR_GENERAL";
      
      protected static const §@&B§:String = "BOSS_EMPEROR_DEFENDER";
      
      protected static const §'#7§:String = "SpearmanIdle";
      
      protected static const §]%h§:String = "SpearmanAppear";
      
      protected static const §&$^§:String = "SpearmanFade";
      
      protected static const §`%^§:String = "GeneralIdle";
      
      protected static const §1`§:String = "GeneralAppear";
      
      protected static const §1$_§:String = "GeneralFade";
      
      protected static const §1w§:String = "DefenderIdle";
      
      protected static const §8"?§:String = "DefenderAppear";
      
      protected static const §&!f§:String = "DefenderFade";
      
      protected static const §5!f§:String = "ArcherIdle";
      
      protected static const §%!M§:String = "ArcherAppear";
      
      protected static const § %[§:String = "ArcherFade";
      
      protected static const §'!Y§:String = "ArrowClip";
      
      public var owner:§+%]§;
      
      public var name:String;
      
      public var clips:Array;
      
      public var direction:int = -1;
      
      private var bar:§ #3§;
      
      public function §3%0§(param1:§+%]§, param2:Number, param3:Number, param4:int = 0, param5:Boolean = true)
      {
         super();
         this.owner = param1;
         canBeDamaged = true;
         var _loc6_:uint = §8"%§.§?!W§.§4"m§.§6"M§(param1).length;
         param4 = (param4 || §9%§) + (param5 ? _loc6_ * §-!i§ : 0);
         §8%g§ = new §9"u§(this,param4,0,0);
         this.x = param2;
         this.y = param3;
         §]!&§.§-#2§(this,this.clips[0],this.clips[1],this.clips[2],this.§+!U§);
         §-$[§ = §<H§.§@k§;
         §4!<§ = §<H§.§,%P§;
         this.bar = new § #3§(param1.squad.getNumber(),§0$N§.§%! §(this.name),30);
         addEventListener(§0%v§.§&!D§,§""0§);
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§&!c§);
         physParams.addForce(§]%G§.§5$r§);
         physParams.§5N§ = §9%1§.§!#6§;
         physParams.§3&I§ = true;
         physParams.§0%m§(0,§`!`§);
         physicModel = new §;$S§(physParams);
      }
      
      protected function turn(param1:int) : void
      {
         if(param1 < this.x && this.direction != §+%]§.LEFT || param1 > this.x && this.direction != §+%]§.RIGHT)
         {
            §,!t§.§%v§(clip);
            this.direction = this.direction == §+%]§.LEFT ? §+%]§.RIGHT : §+%]§.LEFT;
         }
      }
      
      protected function §+!U§() : void
      {
      }
      
      override public function §[$u§(param1:Event) : void
      {
         removeEventListener(§0%v§.§&!D§,§""0§);
         super.§[$u§(param1);
      }
      
      public function getBar() : §%&F§
      {
         return this.bar;
      }
   }
}


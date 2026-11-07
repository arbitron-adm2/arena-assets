package §[!`§
{
   import § &5§.§=#P§;
   import §"#x§.§'"$§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,#_§.FrameTimer;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §2!-§.DamageEvent;
   import §4&F§.*;
   import §4^§.§'!u§;
   import §7!B§.§&"T§;
   import §7!B§.§`s§;
   import §7$t§.§^%%§;
   import §<%k§.§`!v§;
   import §<V§.*;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §="z§.§<$t§;
   import §@<§.§+%]§;
   import §]#[§.§2%o§;
   import §]$v§.§,%E§;
   import §^#[§.§&$2§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class ArchivistSeal extends §&"T§
   {
      
      private static const §%S§:§&$2§ = new §&$2§(100);
      
      private static const §3P§:uint = 50;
      
      private static const §,$%§:uint = uint(§3P§ * 0.67);
      
      private static const §?"§:uint = uint(§3P§ * 0.75);
      
      private static const § &#§:uint = uint(§3P§ * 1.5);
      
      private static const §4$+§:uint = 7;
      
      private static const § %a§:uint = 6;
      
      private static const §,%%§:uint = 20;
      
      private static const §9#;§:uint = 40;
      
      private static const §+%0§:Vector.<int> = new <int>[-1,1];
      
      private static const § "h§:String = "ArchivistSeal";
      
      public var §@!6§:Boolean = false;
      
      private var lastPosition:Point;
      
      private var §"!+§:FrameTimer;
      
      private var §4$L§:uint = 0;
      
      private var dummy:§&"T§;
      
      private var owner:§+%]§;
      
      private var §%g§:uint = 30;
      
      public var type:String;
      
      private var §;%§:Function;
      
      public function ArchivistSeal(param1:§+%]§, param2:int, param3:int, param4:String = "NoType", param5:Point = null)
      {
         super();
         canBeDamaged = true;
         this.clip = §6#A§.§!&6§(§ "h§);
         this.x = param2;
         this.y = param3;
         this.lastPosition = new Point(param2,param3);
         if(param4 == §'!u§.§!$@§)
         {
            this.type = §'!u§.§9#h§[§8"%§.randomSeed.§,!q§(0,§'!u§.§9#h§.length - 1)];
         }
         else
         {
            this.type = param4;
         }
         this.§;%§ = §'!u§.§#!]§(this.type);
         if(param5 != null)
         {
            this.§]%H§(param5);
         }
         addEventListener(§0%v§.§&!D§,this.§""0§);
         Application.scene.§@$I§.§1$+§(this);
         this.owner = param1;
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§&!c§);
         physicModel = new §;$S§(physParams);
         stable = true;
      }
      
      private function §]%H§(param1:Point) : void
      {
         var _loc2_:uint = §8"%§.randomSeed.§,!q§(§,%%§,§9#;§);
         var _loc3_:Number = §-q§.distance(x,y,param1.x,param1.y);
         var _loc4_:Number = Math.atan2(param1.y - y,param1.x - x);
         §^"F§(_loc4_,_loc2_);
         this.§%g§ = _loc2_ * 2;
         Application.scene.addEventListener(§0%v§.FRAME,this.onFrame);
         new §`s§(x,y,_loc3_,this,this.§[#&§,false);
      }
      
      private function onFrame(param1:Event) : void
      {
         clip.rotation += this.§%g§;
      }
      
      public function §[#&§() : void
      {
         Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
         this.stable = true;
      }
      
      public function §0%l§() : void
      {
         this.§@!6§ = true;
         this.dummy = Application.scene.§,$z§();
         this.§"!+§ = new FrameTimer(§4$+§,§ %a§);
         this.§"!+§.addEventListener(FrameTimerEvent.§8$`§,this.§9%N§);
         this.§"!+§.start();
      }
      
      private function §9%N§(param1:FrameTimerEvent) : void
      {
         §'"$§.§]#I§(this.owner,this.lastPosition.x,this.lastPosition.y,null,§%S§.value,§3P§,§3P§,false);
         §1"-§.explode(§;n§.§6#B§,this.lastPosition.x,this.lastPosition.y,§,$%§,§`!v§.§["s§);
         var _loc2_:Point = new Point(§8"%§.randomSeed.§,!q§(§?"§,§ &#§) * §+%0§[§8"%§.randomSeed.§,!q§(0,1)],§8"%§.randomSeed.§,!q§(§?"§,§ &#§) * §+%0§[§8"%§.randomSeed.§,!q§(0,1)]);
         this.lastPosition.x += _loc2_.x;
         this.lastPosition.y += _loc2_.y;
         ++this.§4$L§;
         if(this.§4$L§ == § %a§)
         {
            this.dummy.disposed = true;
            this.§"!+§.removeEventListener(FrameTimerEvent.§8$`§,this.§9%N§);
         }
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         this.lastPosition = new Point(x,y);
         if(param1.source.owner.squad.getTeamId() != this.owner.squad.getTeamId())
         {
            this.§;%§(this.owner);
            super.§""0§(param1);
            disposed = true;
         }
      }
   }
}


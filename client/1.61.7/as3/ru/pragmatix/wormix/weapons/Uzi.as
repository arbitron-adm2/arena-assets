package ru.pragmatix.wormix.weapons
{
   import §!$d§.§<$c§;
   import §%"1§.§@%;§;
   import §2#i§.§+%z§;
   import §9%W§.§!7§;
   import §<!G§.§5b§;
   import §<%k§.§`!v§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §^#[§.§&$2§;
   import §^4§.§]"8§;
   import §`%&§.§,%§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class Uzi extends §5b§
   {
      
      public static const §>%#§:§&$2§ = new §&$2§(16);
      
      public static const §#"J§:§&$2§ = new §&$2§(4);
      
      public static const §1!&§:§&$2§ = new §&$2§(3);
      
      public static const §9#K§:§&$2§ = new §&$2§(4);
      
      public static const §%$o§:§&$2§ = new §&$2§(1480);
      
      public static const §>$w§:Number = 1.8;
      
      private static const §?"H§:uint = 8;
      
      private var §<#6§:§&$2§ = new §&$2§(0);
      
      private var trailColor:uint;
      
      public function Uzi()
      {
         super();
         §"#z§ = §2$"§ = 150;
         §7&§(new §!7§());
         §-g§ = new §,%§(130,§"#z§,0.2);
      }
      
      override protected function §`%V§() : void
      {
         this.§<#6§.value = 1;
         super.§`%V§();
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
         this.trailColor = getProperty("trailColor") ? uint(getProperty("trailColor")) : §]"8§.§@%§;
      }
      
      override protected function onFrame(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         if(owner != null)
         {
            ++frames.value;
            if(frames.value == this.§<#6§.value)
            {
               _loc2_ = §8"%§.randomSeed.§,!q§(-5,5) * Math.PI / §%$o§.value;
               angle += _loc2_;
               this.§<%8§(angle);
               ++§<$-§.value;
               §@%;§.play(§`!v§.§&#?§);
               this.§<#6§.value = frames.value + §1!&§.value;
               if(§<$-§.value % §#"J§.value == 0)
               {
                  this.§<#6§.value += §9#K§.value;
               }
            }
            super.onFrame(param1);
            if(§>%#§.value > 16)
            {
               Application.scene.dispatchEvent(new CheatDetectedEvent(§`d§.§+#5§,"uzi hack"));
            }
            if(§<$-§.value == §>%#§.value)
            {
               §?!K§();
            }
         }
      }
      
      private function §<%8§(param1:Number) : void
      {
         var _loc2_:§]"8§ = new §]"8§(owner,§=W§,paramSet,param1,§"#z§,§>$w§);
         if(owner.squad.isLocal())
         {
            _loc2_.customSource = §<$c§.§ !=§(§+%z§.UZI);
         }
         _loc2_.§>#7§(this.trailColor);
         _loc2_.§>#[§(§?"H§);
      }
   }
}


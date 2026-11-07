package §+%S§
{
   import §"$+§.*;
   import §"%H§.§'%u§;
   import §&"c§.§5$n§;
   import §,#_§.FrameTimer;
   import §0!§.§6#z§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §2!-§.DamageEvent;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §[$<§.§-&>§;
   import §[$<§.§>"9§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.text.Font;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.utils.*;
   
   public class §%#j§ extends §%%o§
   {
      
      public static const NAME:String = "THEIF_ATTACK";
      
      private var points:int;
      
      private var §<"U§:Boolean;
      
      private var §"r§:Boolean;
      
      public function §%#j§(param1:int, param2:Boolean, param3:Boolean, param4:int = -1)
      {
         super(NAME,param4);
         this.points = param1;
         this.§<"U§ = param2;
         this.§"r§ = param3;
      }
      
      override protected function §5#F§() : void
      {
         unit.graphics.colorTransform(50,0,0);
         if(this.§"r§)
         {
            unit.attributes.armor.§5#l§(-this.points);
         }
         else
         {
            unit.attributes.attack.§5#l§(-this.points);
         }
      }
      
      override protected function §0&"§() : void
      {
         unit.graphics.colorTransform(-50,0,0);
         if(this.§"r§)
         {
            unit.attributes.armor.§5#l§(this.points);
         }
         else
         {
            unit.attributes.attack.§5#l§(this.points);
         }
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §%#j§(this.points,this.§<"U§,this.§"r§,§8#z§()));
      }
      
      public function §<;§() : int
      {
         return this.points;
      }
      
      public function getBlocked() : Boolean
      {
         return this.§<"U§;
      }
      
      public function §"#r§() : Boolean
      {
         return this.§"r§;
      }
   }
}


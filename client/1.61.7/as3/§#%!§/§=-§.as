package §#%!§
{
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §&"c§.§!!q§;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §0&F§.§4$T§;
   import §2#x§.*;
   import §4$b§.*;
   import §5!,§.§9$h§;
   import §5!9§.§6$,§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §9%W§.§!"G§;
   import §9%W§.§8#p§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §@!N§.§3!3§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.geom.Point;
   import flash.net.*;
   import flash.utils.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§5$t§;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §=-§ implements §%&F§
   {
      
      private var unit:§+%]§;
      
      private var §[t§:Boolean = false;
      
      public function §=-§(param1:§+%]§)
      {
         super();
         this.unit = param1;
      }
      
      public function §]%d§() : void
      {
         this.§[t§ = true;
      }
      
      public function §>$T§() : void
      {
         this.§[t§ = false;
      }
      
      public function §""+§() : Boolean
      {
         return this.§[t§;
      }
      
      public function §%#8§() : String
      {
         var _loc1_:Boolean = this.unit.isLeader && Application.instance.§;"7§();
         return (_loc1_ ? "* " : "") + this.unit.record.getCharName() + (_loc1_ ? " *" : "");
      }
      
      public function §["n§(param1:String) : void
      {
      }
      
      public function §3"H§() : uint
      {
         return this.unit.squad.getNumber();
      }
      
      public function § "§() : int
      {
         return 20;
      }
      
      public function §<"l§() : int
      {
         return 0;
      }
   }
}


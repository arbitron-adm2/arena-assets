package §?o§
{
   import § %f§.§=!z§;
   import §!K§.§!!n§;
   import §!K§.§"%$§;
   import §"% §.LevelUpDialog;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0!§.§8$Y§;
   import §0!Y§.§#!Z§;
   import §0"L§.§@#n§;
   import §0&F§.§0%v§;
   import §4&F§.*;
   import §6%2§.*;
   import §7$t§.§&!e§;
   import §<%k§.*;
   import §="z§.§9%1§;
   import §@<§.§+%]§;
   import §[%§.Dragon;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.MoveProfileSecureToken;
   import ru.pragmatix.wormix.social.Social;
   
   public class §?!x§ extends §=!z§
   {
      
      private static const DAMAGE:int = 250;
      
      protected var § %m§:uint;
      
      protected var blinkClassName:String = null;
      
      protected var §!r§:Class = §;n§.§8!-§;
      
      protected var §7#J§:Boolean = false;
      
      public function §?!x§(param1:Point, param2:§5$n§, param3:uint, param4:Number, param5:uint, param6:Number, param7:String)
      {
         super(null,param1.x,param1.y,param2,param4,param5,param6,0);
         §@%;§.play(§`!v§.§7#O§);
         this.§7#J§ = true;
         this.blinkClassName = param7;
         this.§ %m§ = param3;
         this.§^"S§();
      }
      
      public function §^"S§() : void
      {
         physParams.§5N§ |= §9%1§.§@%h§;
         addEventListener(§0%v§.§+&=§,this.§1$f§);
      }
      
      private function §1$f§(param1:CollisionEvent) : void
      {
         if(param1.other != null && param1.other is §+%]§)
         {
            this.explode();
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         removeEventListener(§0%v§.§+&=§,this.§1$f§);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         this.§"#<§();
      }
      
      protected function §"#<§() : void
      {
         if(!this.disposed)
         {
            if(frames == this.§ %m§ - 29 && Boolean(this.blinkClassName))
            {
               swapClip(§6#A§.§!&6§(this.blinkClassName));
            }
            if(frames == this.§ %m§)
            {
               this.explode();
            }
         }
      }
      
      override public function explode() : void
      {
         if(!disposed)
         {
            disposed = true;
            inflictDamage(null,DAMAGE,paramSet.damageRadius.value,paramSet.explosionRadius.value);
            §1"-§.explode(this.§!r§,this.x,this.y,40,§`!v§.§["s§);
         }
      }
      
      override protected function §^$e§(param1:Event) : void
      {
         super.§^$e§(param1);
         if(this.§7#J§ && !disposed)
         {
            this.explode();
         }
      }
   }
}


package § %f§
{
   import § &5§.*;
   import §!K§.§!!n§;
   import §!K§.§"%$§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%L§.§'$T§;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.*;
   import §0%[§.§>&&§;
   import §0%z§.BossAchieveHint;
   import §0&F§.§0%v§;
   import §4#`§.BattleInterface;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6"'§.§9$Z§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §=&!§.§]$d§;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§5&4§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.ui.Mouse;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§%%v§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§!#v§;
   import ru.pragmatix.wormix.controller.§+$w§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §]%f§ extends §=!z§
   {
      
      private var §+$]§:Class;
      
      private var §=%r§:Boolean = false;
      
      private var §9$1§:int;
      
      private var §5&F§:int;
      
      public function §]%f§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint, param5:Class)
      {
         super(param1,param1.x,param1.y,param2,param3,param4,0.5,180);
         this.§+$]§ = param5;
      }
      
      override protected function §+_§() : void
      {
         super.§+_§();
         physParams.§3&I§ = owner.physParams.§3&I§;
      }
      
      override protected function §^$e§(param1:Event) : void
      {
         super.§^$e§(param1);
         this.§0$t§(10);
      }
      
      public function §0$t§(param1:uint) : void
      {
         if(!this.§=%r§)
         {
            this.§=%r§ = true;
            if(this.§+$]§)
            {
               swapClip(new this.§+$]§());
            }
            §8$a§.§%!E§(param1,this.§3#k§);
         }
      }
      
      private function §3#k§() : void
      {
         if(!owner.disposed && !disposed)
         {
            this.§9$1§ = x;
            this.§5&F§ = y - §<H§.§-#C§ - 10;
            if(!§>#9§.unit(this.§9$1§,this.§5&F§))
            {
               §@%;§.play(§`!v§.TELEPORT);
            }
            owner.stable = false;
            owner.keepUnstable = true;
            §1"-§.explode(§;n§.§6#B§,this.§9$1§,this.§5&F§,30);
            if(§>#9§.unit(this.§9$1§,this.§5&F§))
            {
               §@%;§.play(§`!v§.§["s§);
               §'"$§.§]#I§(owner,this.§9$1§,this.§5&F§,null,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value,false,false,null,false);
            }
            else
            {
               §@%;§.play(§`!v§.TELEPORT);
            }
            if(!§>#9§.unit(this.§9$1§,this.§5&F§))
            {
               §<H§.§"%8§(owner,this.§9$1§,this.§5&F§);
            }
            if(!owner.disposed)
            {
               owner.keepUnstable = false;
            }
         }
         if(!disposed)
         {
            disposed = true;
         }
      }
   }
}


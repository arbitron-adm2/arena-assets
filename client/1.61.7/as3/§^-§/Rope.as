package §^-§
{
   import § $q§.§<"]§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§8"@§;
   import §##y§.CollisionEvent;
   import §#5§.*;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%# §.§##U§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§[`§;
   import §0"L§.§+# §;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2!-§.SupplyPickedUpEvent;
   import §2"L§.§^$y§;
   import §2#i§.§9##§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5"J§.*;
   import §6"'§.§&"3§;
   import §6",§.§[%w§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §8#a§.§>!o§;
   import §8#o§.§1@§;
   import §<%E§.§=$u§;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §="z§.§<$t§;
   import §?$7§.§6J§;
   import §@!N§.§""L§;
   import §@!N§.§'+§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.XMLLoader;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.filters.BlurFilter;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class Rope extends §6#I§
   {
      
      public static const §6"+§:uint = §<$t§.§-3§ - 50;
      
      private static const §6#X§:BlurFilter = new BlurFilter(2,2,1);
      
      private var rope:Shape;
      
      private var §9D§:Boolean = false;
      
      protected var §1#W§:§&$2§;
      
      public var §@!H§:Boolean = false;
      
      public function Rope(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:Number, param6:Number, param7:uint = 0, param8:Boolean = false)
      {
         super(param1,param2,param3,false,-1);
         this.§1#W§ = new §&$2§(param7 == 0 ? int(§6"+§) : int(param7));
         initialize(§"$C§(param5,5),param4.ammoClassName);
         §,q§ = new <§-&§>[§-&§.IGNORE_MAGNET];
         if(param8)
         {
            §,q§.push(§-&§.SUPPLY_PICKUPER);
         }
         this.rope = new Shape();
         this.rope.filters = [§6#X§];
         Application.scene.§=P§().addChild(this.rope);
         physParams.removeAllForces();
         §^"F§(param5,param6);
         clip.rotation = param5 * 180 / Math.PI;
         addEventListener(§0%v§.§+&=§,this.onCollide);
         §`4§ = §]$S§;
         Application.scene.§@$I§.§1$+§(this);
         Application.scene.addEventListener(§0%v§.FRAME,this.onFrame);
         Application.scene.addEventListener(§0%v§.SUPPLY_PICKED_UP,this.§&w§);
      }
      
      public function §<%P§() : Boolean
      {
         return this.§9D§;
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.NONE);
         physParams.§5N§ = §9%1§.§&!A§;
         physParams.§`#&§ = true;
         physicModel = new §7%[§(physParams);
      }
      
      protected function onCollide(param1:CollisionEvent) : void
      {
         var _loc2_:Number = NaN;
         if(!disposed)
         {
            this.§9D§ = true;
            _loc2_ = clip.rotation;
            setSpeedXY(0,0);
            physicModel.stop();
            §`4§ = §+#G§;
            clip.rotation = _loc2_;
            removeEventListener(§0%v§.§+&=§,this.onCollide);
            this.§9#i§();
            Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
            §@%;§.play(§`!v§.§^#3§);
         }
      }
      
      protected function onFrame(param1:Event) : void
      {
         if(!owner.disposed && §^$y§.distance(owner.x - x,owner.y - y) < this.§1#W§.value)
         {
            this.rope.graphics.clear();
            this.rope.graphics.lineStyle(4,16448250);
            this.rope.graphics.moveTo(x,y);
            this.rope.graphics.lineTo(owner.x,owner.y);
         }
         else
         {
            disposed = true;
         }
      }
      
      private function §&w§(param1:SupplyPickedUpEvent) : void
      {
         if(param1.picker == this && this.§@!H§ && !this.§9D§)
         {
            disposed = true;
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         this.§9D§ = false;
         Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
         Application.scene.removeEventListener(§0%v§.SUPPLY_PICKED_UP,this.§&w§);
         this.§9#i§();
         super.§[$u§(param1);
      }
      
      protected function §9#i§() : void
      {
         if(this.rope != null)
         {
            Application.scene.§=P§().removeChild(this.rope);
            this.rope = null;
         }
      }
   }
}


package §=;§
{
   import § &5§.§@N§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%$!§.§@!o§;
   import §%L§.§'$T§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §+$=§.*;
   import §-%B§.*;
   import §0%[§.§>&&§;
   import §0%z§.BossAchieveHint;
   import §0&F§.§0%v§;
   import §2"L§.§!#H§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §;$%§.§'%W§;
   import §<%k§.§`!v§;
   import §=&!§.§]$d§;
   import §@!N§.§3!3§;
   import §@!i§.*;
   import §@#K§.§-§;
   import §@<§.§+%]§;
   import §[$<§.§;"E§;
   import §^#[§.§&$2§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.core.*;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.ui.Mouse;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §1S§
   {
      
      private static const §+#4§:Class = §6#A§.getClass("CraftBoxParachute");
      
      private static const §#%i§:Class = §6#A§.getClass("WeaponBoxParachute");
      
      private static const §###§:uint = 50;
      
      private static const §%$p§:uint = 8;
      
      public function §1S§()
      {
         super();
      }
      
      public static function §;!r§(param1:§-#8§) : void
      {
         var boxClip:MovieClip = null;
         var supply:§-#8§ = param1;
         var removeParachute:Function = function():void
         {
            if(!supply.disposed && !supply.physParams.§4%I§[§]%G§.§="u§])
            {
               supply.swapClip(boxClip);
               supply.physParams.addForce(§]%G§.§5$r§);
               supply.setSpeedXY(0,0);
            }
         };
         boxClip = supply.clip;
         var parachuteClip:MovieClip = supply is §^"E§ ? new §+#4§() : new §#%i§();
         supply.swapClip(parachuteClip);
         supply.physParams.§"%<§(§]%G§.§="u§);
         supply.setSpeedXY(0,§%$p§);
         §8$a§.§%!E§(§###§,removeParachute);
         supply.addEventListener(§0%v§.§+&=§,function():void
         {
            supply.removeEventListener(§0%v§.§+&=§,arguments.callee);
            removeParachute();
            if(!supply.disposed)
            {
               supply.§<$U§();
            }
         },false,999);
      }
      
      public static function §-B§(param1:§+%]§, param2:int, param3:int = 0) : void
      {
         var parachute:§&"T§ = null;
         var dummy:§&"T§ = null;
         var crate:MovieClip = null;
         var onDisturbed:Function = null;
         var unit:§+%]§ = param1;
         var x:int = param2;
         var y:int = param3;
         onDisturbed = function(param1:Event = null):void
         {
            if(!parachute.disposed)
            {
               parachute.disposed = true;
               unit.x = x;
            }
         };
         parachute = new §&"T§(false,§@N§.§@$8§);
         dummy = Application.scene.§,$z§();
         parachute.clip = new §+#4§();
         §§push(unit);
         var _loc5_:int;
         parachute.x = _loc5_ = x;
         §§pop().x = _loc5_;
         unit.y = parachute.y = y;
         unit.setSpeedXY(0,1);
         Application.scene.§@$I§.§1$+§(parachute);
         crate = MovieClip(parachute.clip.getChildByName("cargo"));
         crate.visible = false;
         Application.scene.addEventListener(§0%v§.FRAME,function(param1:Event):void
         {
            if(parachute.disposed || unit.disposed)
            {
               Application.scene.removeEventListener(§0%v§.FRAME,arguments.callee);
               parachute.disposed = true;
               dummy.disposed = true;
            }
            else
            {
               unit.setSpeedXY(0,§%$p§);
               parachute.y = unit.y + §<H§.§-#C§;
               unit.x = parachute.x;
               unit.clip.x = parachute.x + crate.x + §<H§.§@% §;
            }
         });
         new §!#H§().add(unit,§0%v§.DISPOSED,onDisturbed).add(unit,§0%v§.§&!D§,onDisturbed).add(unit,§0%v§.§+&=§,onDisturbed).run();
      }
   }
}


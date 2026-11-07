package §<!W§
{
   import § #9§.§"$t§;
   import § #m§.§;#^§;
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#5§.§!&"§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'T§.§!$C§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §-%B§.*;
   import §0%[§.§%"'§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §1#p§.§2=§;
   import §2"L§.§,'§;
   import §2#i§.§9##§;
   import §3#a§.§-#M§;
   import §65§.§`"C§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §8$V§.TeamController;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §@!N§.§""L§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[%§.Rabbit;
   import §]$v§.§1>§;
   import §]$v§.§5"R§;
   import §]$v§.§]%_§;
   import §]$v§.§`0§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.TweenLite;
   import config.§`!a§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §>&@§ extends §`"C§
   {
      
      public static const NAME:String = "RECOVERY_BUFF";
      
      public static const § &G§:int = 10;
      
      public static const §?!r§:int = 75;
      
      public static const § %h§:String = "RabbitCarrotEating";
      
      public static const § #r§:§&$2§ = new §&$2§(12);
      
      public static const § #O§:§&$2§ = new §&$2§(8);
      
      public function §>&@§()
      {
         super(NAME,§ &G§);
      }
      
      public static function §1!5§(param1:§+%]§) : int
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         _loc2_ = param1.bonuses.getStatValue(Bonus.§;#-§);
         _loc3_ = § #r§.value + Math.min(§ #O§.value,param1.attributes.hp.§#&"§() / 100);
         return int(_loc3_ + §-q§.§8$G§(_loc2_,_loc3_));
      }
      
      public static function apply(param1:§+%]§, param2:int, param3:Boolean = true, param4:Boolean = true) : int
      {
         var dummy:§&"T§ = null;
         var clip:MovieClip = null;
         var unit:§+%]§ = param1;
         var boost:int = param2;
         var playAnim:Boolean = param3;
         var playSound:Boolean = param4;
         var restored:int = unit.attributes.hp.§#1§(boost,false,0.5);
         if(restored <= 0)
         {
            return restored;
         }
         if(playSound)
         {
            §@%;§.play(§`!v§.§0!h§);
         }
         if(playAnim)
         {
            dummy = Application.scene.§,$z§();
            clip = unit.graphics.§6w§(§ %h§);
            §8$a§.§%!E§(clip ? uint(clip.totalFrames) : 0,function onWaitAndDoRabbitCarrotEatingTotalFrames():void
            {
               if(Boolean(unit) && !unit.disposed)
               {
                  unit.graphics.stay();
               }
               dummy.disposed = true;
            });
         }
         return restored;
      }
      
      override protected function §5#F§() : void
      {
         Application.scene.addEventListener(§0%v§.SOT,this.trigger);
      }
      
      override protected function §0&"§() : void
      {
         Application.scene.removeEventListener(§0%v§.SOT,this.trigger);
      }
      
      protected function trigger(param1:Event) : void
      {
         var _loc2_:Rabbit = Rabbit(unit);
         if(!§&%M§ && §8"%§.§?!W§.§4"m§.activeSquad != unit.squad && _loc2_.§8%B§() && unit.hp < unit.attributes.hp.§#&"§() * §?!r§ / 100)
         {
            _loc2_.§%!h§();
            apply(unit,§1!5§(unit));
         }
      }
   }
}


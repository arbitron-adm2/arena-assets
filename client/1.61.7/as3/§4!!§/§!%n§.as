package §4!!§
{
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§ !!§;
   import §1#p§.§2=§;
   import §4f§.§-&§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§9#x§;
   import §<%k§.§`!v§;
   import §?>§.§0!7§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.geom.ColorTransform;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §!%n§ extends §'$V§
   {
      
      public static const §9%Q§:uint = 30;
      
      public static const §[%]§:uint = 20;
      
      private static const §6"m§:Number = 7 * Math.PI / 180;
      
      private static const SPEED:uint = 20;
      
      private static const §;t§:uint = 15;
      
      private var damage:§&$2§;
      
      private var §"$D§:§&$2§;
      
      private var §"$n§:§&$2§;
      
      public function §!%n§(param1:§+%]§, param2:int, param3:int, param4:Boolean, param5:§+%]§, param6:int = 30, param7:int = 20, param8:int = 0)
      {
         this.damage = new §&$2§(param6);
         this.§"$D§ = new §&$2§(param7);
         this.§"$n§ = new §&$2§(param8);
         super(param1,param2,param3,param4,param5,3355443,1402368,SPEED);
         setSpeedXY(0,-SPEED);
         homingFeat.§<$1§ = §6"m§;
         homingFeat.§;$C§ = §;t§;
         §3$1§ = false;
      }
      
      override protected function §;&;§() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:§+%]§ = target as §+%]§;
         if(Boolean(_loc1_) && !_loc1_.disposed)
         {
            if(_loc1_.hp > this.§"$D§.value)
            {
               _loc2_ = Math.min(this.damage.value,_loc1_.hp - this.§"$D§.value);
               inflictDamage(_loc1_,_loc2_,0,0,false,true);
               if(§%"-§ != null)
               {
                  §%"-§(_loc2_);
               }
            }
            §7%g§.§>!%§(_loc1_,owner,§ !!§.§%!y§ + this.§"$n§.value);
            §@%;§.play(§`!v§.§3"A§);
         }
      }
   }
}


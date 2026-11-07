package §7$1§
{
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#%!§.§[N§;
   import §#%!§.§^%c§;
   import §%"1§.§7#P§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#h§.§-"F§;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §0!§.§6#z§;
   import §0&F§.§0%v§;
   import §2!-§.HpChangeEvent;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §4f§.§-&§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?"j§.§`%+§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`%&§.§5$1§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.interfaces.§;$'§;
   
   public class §8&D§ extends §;$n§ implements §;$'§, §^%c§
   {
      
      private static const § &G§:§&$2§ = new §&$2§(10);
      
      private var §[H§:int;
      
      private var §;P§:§&$2§;
      
      private var §[&D§:§7#P§;
      
      private var §[!5§:MovieClip;
      
      private var bar:§[N§;
      
      public function §8&D§(param1:§+%]§, param2:int, param3:int, param4:§5$n§)
      {
         super(param1,param2,param3,param4,true,true,1);
         this.§;P§ = new §&$2§(this.§8#H§() + § &G§.value);
         §=$`§.value = 400;
         §##9§.value = 0;
         this.§[H§ = 25;
         Application.scene.addEventListener(§0%v§.EOT,this.§^#P§);
         §@%;§.play(§`!v§.§@"6§);
         this.§[!5§ = §1"-§.§ & §("PulsatingWave");
         this.§[!5§.mouseEnabled = false;
         this.§[!5§.mouseChildren = false;
         clip.addChild(this.§[!5§);
         this.bar = new §[N§(param1,"(" + this.§;P§.value + ")",0);
      }
      
      override protected function §^#d§() : §+%]§
      {
         var _loc2_:Vector.<§&"T§> = null;
         var _loc4_:§&"T§ = null;
         var _loc5_:Number = NaN;
         var _loc1_:uint = 0;
         _loc2_ = Application.scene.§@$I§.§;%a§.§'#&§(§<#`§.§^&0§);
         var _loc3_:Vector.<§&"T§> = §<H§.§3%'§(x,y,§=$`§.value,_loc2_);
         for each(_loc4_ in _loc3_)
         {
            if(!_loc4_.disposed && !_loc4_.stable && _loc4_ != this)
            {
               if(!_loc4_.§5%g§(§-&§.IGNORE_MAGNET))
               {
                  _loc5_ = -Math.sqrt((§=$`§.value - §^$y§.distance(x - _loc4_.x,y - _loc4_.y)) / this.§[H§);
                  _loc4_.§6"O§(Math.atan2(y - _loc4_.y,x - _loc4_.x),_loc5_);
                  _loc1_++;
               }
            }
         }
         if(this.§[&D§ == null && _loc1_ > 0)
         {
            this.§[&D§ = §@%;§.play(§`!v§.§+$a§);
         }
         if(this.§[&D§ != null && _loc1_ == 0)
         {
            this.§[&D§.stop();
            this.§[&D§ = null;
         }
         return null;
      }
      
      override public function explode() : void
      {
      }
      
      private function §^#P§(param1:Event) : void
      {
         if(--this.§;P§.value <= 0)
         {
            disposed = true;
            §1"-§.explode(§;n§.§7q§,x,y,10,§`!v§.§>l§);
         }
         else
         {
            this.bar.§["n§("(" + this.§;P§.value + ")");
         }
      }
      
      public function §8#H§() : int
      {
         return owner.bonuses.getStatValue(Bonus.DEVICE_DURATION) + owner.bonuses.getStatValue(Bonus.WEAPON_DEVICE_DURATION);
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         clip.removeChild(this.§[!5§);
         this.§[!5§ = null;
         if(this.§[&D§ != null)
         {
            this.§[&D§.stop();
            this.§[&D§ = null;
         }
         Application.scene.removeEventListener(§0%v§.EOT,this.§^#P§);
      }
      
      override public function §9$r§() : int
      {
         return -1;
      }
      
      public function getBar() : §%&F§
      {
         return this.bar;
      }
   }
}


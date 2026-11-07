package §+%S§
{
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%&6§.§0%2§;
   import §&#E§.§;"v§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §1&-§.§4!s§;
   import §2#H§.§3$p§;
   import §4$b§.§2m§;
   import §65§.§%%o§;
   import §65§.§`"C§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §@!N§.§3!3§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §[$P§.§+H§;
   import §[%§.Rhino;
   import §^#[§.§?"&§;
   import §`%&§.§3!D§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ShowSystemMessage;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §2$#§ extends §%%o§
   {
      
      public static const NAME:String = "POISON_DEFENCE_REDUCTION_DEBUFF";
      
      public static const §%!y§:int = 6;
      
      private static const §<#Y§:uint = 100;
      
      private var §`$I§:MovieClip;
      
      private var §8!h§:§]$q§;
      
      private var §,#$§:uint;
      
      private var appear:Boolean;
      
      private var §?%p§:int;
      
      public function §2$#§(param1:int = 6, param2:int = 100, param3:Boolean = true, param4:int = 0)
      {
         this.appear = param3;
         this.§?%p§ = param4;
         this.§,#$§ = param2;
         super(NAME,param1,1);
      }
      
      public static function updateDebuffBonus(param1:§+%]§) : void
      {
         var _loc2_:§`"C§ = param1.buffs.getBuff(§2$#§.NAME);
         if(_loc2_)
         {
            §2$#§(_loc2_).updateDebuffBonus();
         }
      }
      
      override protected function §5#F§() : void
      {
         var _loc1_:MovieClip = null;
         this.§8!h§ = new §]$q§(NAME);
         this.§8!h§.§3%<§(new §@"I§(Bonus.POISON_DEFENSE,this.§#$M§()));
         unit.bonuses.§]!X§(this.§8!h§);
         unit.buffs.§6C§(§'%V§.NAME);
         unit.buffs.§6C§(§4!s§.§!!Y§);
         if(this.appear)
         {
            _loc1_ = §6#A§.§!&6§(§1"-§.§>&;§);
            §3!3§.§>!j§(null,_loc1_);
            §1"-§.§8"l§(unit,§1"-§.§>&;§,_loc1_.totalFrames + 3);
            §8$a§.§%!E§(_loc1_.totalFrames - 1,this.§;&0§);
         }
         else
         {
            this.§;&0§();
         }
      }
      
      private function §#$M§() : int
      {
         var _loc1_:int = unit.bonuses.getStatValue(Bonus.POISON_DEFENSE);
         return _loc1_ > 0 ? int(-1 * Math.min(this.§,#$§,_loc1_)) : 0;
      }
      
      private function updateDebuffBonus() : void
      {
         unit.bonuses.§9=§(this.§8!h§);
         this.§8!h§.§<%i§()[0].setValue(this.§#$M§());
         unit.bonuses.§]!X§(this.§8!h§);
      }
      
      override protected function §0&"§() : void
      {
         unit.bonuses.§9=§(this.§8!h§);
         if(this.§`$I§)
         {
            unit.graphics.detachClip(this.§`$I§,§2m§.§-w§);
            §3!3§.§>!j§(null,this.§`$I§);
            this.§`$I§ = null;
         }
      }
      
      private function §;&0§() : void
      {
         if(Boolean(unit) && !unit.disposed)
         {
            this.§`$I§ = §6#A§.§!&6§(§1"-§.§8"r§);
            unit.graphics.§5$#§(§2m§.§-w§,this.§`$I§);
            if(this.§?%p§ > 0)
            {
               this.§`$I§.gotoAndPlay(this.§?%p§);
            }
         }
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         var _loc2_:int = this.§`$I§ ? this.§`$I§.currentFrame : 0;
         param1.buffs.place(new §2$#§(§8#z§(),this.§,#$§,false,_loc2_));
      }
   }
}


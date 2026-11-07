package §+%S§
{
   import §!$Z§.§"$I§;
   import §!$Z§.§7$2§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §%"1§.§@%;§;
   import §&"c§.§!!q§;
   import §'!Z§.§1"-§;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §,#_§.FrameTimer;
   import §0!Y§.§#!Z§;
   import §0&F§.FrameTimerEvent;
   import §2"L§.§,'§;
   import §4$b§.§2m§;
   import §4'§.§^"p§;
   import §6"'§.§&"3§;
   import §65§.§%%o§;
   import §65§.§`"C§;
   import §7$t§.§^$E§;
   import §8#o§.§1@§;
   import §8$Z§.§9!&§;
   import §9%W§.§!7§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=1§.*;
   import §>%S§.§^!V§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.*;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.messages.structures.*;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §[0§ extends §%%o§
   {
      
      public static const NAME:String = "POISONING_REDUCE_DECREASE_DEBUFF";
      
      public static const §%!y§:int = 8;
      
      private static const § @§:int = -3;
      
      private var §`$I§:MovieClip;
      
      private var §8!h§:§]$q§;
      
      private var §,#$§:int;
      
      private var appear:Boolean;
      
      private var §?%p§:int;
      
      public function §[0§(param1:int = 8, param2:int = -3, param3:Boolean = true, param4:int = 0)
      {
         this.appear = param3;
         this.§?%p§ = param4;
         this.§,#$§ = param2;
         super(NAME,param1,1);
      }
      
      public static function updateDebuffBonus(param1:§+%]§) : void
      {
         var _loc2_:§`"C§ = param1.buffs.getBuff(§[0§.NAME);
         if(_loc2_)
         {
            §[0§(_loc2_).updateDebuffBonus();
         }
      }
      
      override protected function §5#F§() : void
      {
         var _loc1_:MovieClip = null;
         if(unit.buffs.hasBuff(§@#s§.NAME))
         {
            clear();
            return;
         }
         this.§8!h§ = new §]$q§(NAME);
         this.§8!h§.§3%<§(new §@"I§(Bonus.POISONING_REDUCTION,this.§#$M§()));
         unit.bonuses.§]!X§(this.§8!h§);
         if(this.appear)
         {
            _loc1_ = §6#A§.§!&6§(§1"-§.§0$4§);
            §3!3§.§>!j§(null,_loc1_);
            §1"-§.§8"l§(unit,§1"-§.§0$4§,_loc1_.totalFrames + 13,this.§;&0§);
         }
         else
         {
            this.§;&0§();
         }
      }
      
      private function §#$M§() : int
      {
         var _loc1_:int = unit.bonuses.getStatValue(Bonus.POISONING_REDUCTION);
         return _loc1_ < 0 ? int(-1 * Math.max(this.§,#$§,_loc1_)) : 0;
      }
      
      private function updateDebuffBonus() : void
      {
         unit.bonuses.§9=§(this.§8!h§);
         this.§8!h§.§<%i§()[0].setValue(this.§#$M§());
         unit.bonuses.§]!X§(this.§8!h§);
      }
      
      override protected function §0&"§() : void
      {
         if(this.§8!h§)
         {
            unit.bonuses.§9=§(this.§8!h§);
         }
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
            this.§`$I§ = §6#A§.§!&6§(§1"-§.§1%4§);
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
         param1.buffs.place(new §[0§(§8#z§(),this.§,#$§,false,_loc2_));
      }
   }
}


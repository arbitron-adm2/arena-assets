package §2#H§
{
   import § &5§.§=#P§;
   import §!$D§.§2$^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §#%!§.§%&F§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%"Z§.§2"B§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&x§.§8$5§;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §+%S§.§ #R§;
   import §+%S§.§+m§;
   import §+%S§.§2&>§;
   import §,#_§.FrameTimer;
   import §-%B§.*;
   import §-&5§.§ &8§;
   import §-@§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §0&F§.§[!F§;
   import §2!-§.DamageEvent;
   import §2!-§.GameObjectDisposed;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §2B§.§#&E§;
   import §3"@§.§##L§;
   import §3"_§.*;
   import §3#a§.§-#M§;
   import §3%J§.*;
   import §4!!§.§!%n§;
   import §4!!§.§6$V§;
   import §4!!§.§]!h§;
   import §4'§.§#"l§;
   import §4'§.§`"q§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §7!B§.§1"?§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §<!W§.§=!6§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%k§.§`!v§;
   import §<K§.RatingTabAllTime;
   import §=!p§.§7#E§;
   import §="z§.§9%1§;
   import §=$#§.§1!$§;
   import §=$#§.§`%u§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§&#Z§;
   import §@!N§.§3!3§;
   import §@!N§.§4"0§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §[" §.§^"c§;
   import §^!]§.§-$w§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.TweenMax;
   import com.greensock.easing.Circ;
   import com.greensock.loading.*;
   import com.greensock.loading.core.LoaderCore;
   import com.greensock.loading.core.LoaderItem;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§ %`§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.gui.menu.rating.RatingWindow;
   import ru.pragmatix.wormix.messages.client.BuyBattle;
   import ru.pragmatix.wormix.messages.client.GetRating;
   import ru.pragmatix.wormix.messages.client.ToggleTeamMember;
   import ru.pragmatix.wormix.messages.server.GetRatingResult;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§^#%§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §1%I§ extends §%%o§
   {
      
      public static const NAME:String = "QUEEN_COCOON_DEBUFF";
      
      private static const §8!T§:String = "SpiderCocoonIdle";
      
      private static const §]&H§:String = "SpiderCocoonAppear";
      
      private static const §6o§:String = "SpiderCocoonFading";
      
      private static const DAMAGE:int = 50;
      
      private var effectClip:MovieClip;
      
      private var faceMaker:§^#%§;
      
      private var owner:§+%]§;
      
      private var anchor:Point;
      
      private var §7r§:Boolean = false;
      
      public function §1%I§(param1:§+%]§, param2:int = 10)
      {
         super(NAME,param2);
         this.faceMaker = §^#%§(Application.scene.§@$I§.§5# §(§^#%§));
         this.owner = param1;
      }
      
      override protected function §5#F§() : void
      {
         this.anchor = new Point(unit.x,unit.y);
         this.effectClip = §6#A§.§!&6§(§8!T§);
         Application.scene.addEventListener(§0%v§.EOT,this.§,!l§);
         unit.§#"%§(this.effectClip,0,§<H§.§-#C§,false,false);
         unit.addEventListener(§0%v§.§'$p§,this.lockOnPlace);
         unit.addEventListener(§0%v§.§&!D§,this.§!$O§);
         unit.setSpeedXY(0,0);
         unit.§3%1§(true);
         this.§+#s§();
         this.faceMaker.stop(unit,true);
      }
      
      override protected function §0&"§() : void
      {
         unit.§'$§(this.effectClip);
         this.effectClip = null;
         Application.scene.removeEventListener(§0%v§.EOT,this.§,!l§);
         unit.removeEventListener(§0%v§.§'$p§,this.lockOnPlace);
         unit.removeEventListener(§0%v§.§&!D§,this.§!$O§);
         if(!unit.buffs.§%%b§([§2&>§.NAME,§+m§.NAME]))
         {
            unit.§3%1§(false);
         }
         §@%;§.play(§`!v§.§-$z§);
         this.faceMaker.stop(unit,false);
         unit.graphics.unlock();
         unit.§2!W§();
         if(!Application.scene.§@$I§.§=%d§())
         {
            §1"-§.§`$Q§(unit.x,unit.y + §<H§.§-#C§,§6o§);
         }
      }
      
      override protected function onNextTurn(param1:Event) : void
      {
         super.onNextTurn(param1);
         if(§&%M§)
         {
            return;
         }
         this.anchor = new Point(unit.x,unit.y);
      }
      
      private function §,!l§(param1:Event) : void
      {
         if(Boolean(unit) && Boolean(!§&%M§) && !unit.squad.isAi())
         {
            §'"$§.§]#I§(this.owner,unit.x,unit.y + 10,unit,DAMAGE,0,0,false,false,§&!E§.POISON);
            unit.setSpeedXY(0,0);
         }
      }
      
      private function lockOnPlace(param1:Event) : void
      {
         var event:Event = param1;
         if(Boolean(unit && !unit.disposed) && Boolean(§8"%§.§?!W§.§4"m§) && §8"%§.§?!W§.§4"m§.activeUnit == unit)
         {
            if(Boolean(unit.weapon) && Boolean(unit.weapon is Jetpack) && !this.§7r§)
            {
               Application.scene.addEventListener(Event.ENTER_FRAME,this.§>"3§);
               this.§7r§ = true;
            }
            else if(Boolean(unit.weapon) && Boolean(unit.weapon is Drill) && !this.§7r§)
            {
               this.§7r§ = true;
               §8$a§.§%!E§(1,function():void
               {
                  unit.weapon.§?!K§();
                  §7r§ = false;
               });
            }
            else
            {
               unit.setSpeedXY(0,0);
               unit.x = this.anchor.x;
               unit.y = this.anchor.y;
               unit.§3%1§(true);
               this.§+#s§();
            }
         }
      }
      
      private function §!$O§(param1:Event) : void
      {
         var event:Event = param1;
         unit.removeEventListener(§0%v§.§'$p§,this.lockOnPlace);
         unit.§5!?§(0,5);
         §8$a§.§&!#§(unit,§0%v§.§+&=§,function():void
         {
            if(Boolean(unit) && !unit.disposed)
            {
               anchor = new Point(unit.x,unit.y);
               unit.addEventListener(§0%v§.§'$p§,lockOnPlace);
            }
         });
      }
      
      private function §>"3§(param1:Event) : void
      {
         if(!unit.weapon || !(unit.weapon is Jetpack))
         {
            Application.scene.removeEventListener(Event.ENTER_FRAME,this.§>"3§);
            this.§7r§ = false;
            return;
         }
         unit.§5!?§(0,5);
      }
      
      private function §+#s§() : void
      {
         if(Boolean(unit) && Boolean(!unit.disposed) && Boolean(unit.squad))
         {
            if(unit.squad.isAi())
            {
               unit.graphics.§!$B§();
            }
            else
            {
               unit.graphics.damaged();
            }
            unit.graphics.lock();
         }
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §1%I§(null,§8#z§()));
      }
   }
}


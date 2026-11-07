package §2#H§
{
   import § "d§.§,!c§;
   import § &5§.§=#P§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §#",§.§?§;
   import §#",§.ChooseFriendMenu;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%&6§.§2$v§;
   import §%L§.§%%w§;
   import §&$Y§.§6[§;
   import §&%7§.§'&2§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'$j§.*;
   import §+$=§.§6#A§;
   import §+%S§.§ !!§;
   import §+%S§.§+m§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0%[§.*;
   import §0&F§.§0$_§;
   import §0&F§.§0%v§;
   import §1!J§.§"t§;
   import §1#p§.§"Z§;
   import §2"L§.§^$y§;
   import §3#T§.Boomerang;
   import §3#a§.§-!`§;
   import §4!!§.§!%n§;
   import §4!!§.§'$V§;
   import §4!!§.§]!h§;
   import §4'§.§^"p§;
   import §6"'§.§&"3§;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §7$t§.§^%%§;
   import §8#o§.§#$s§;
   import §9%W§.§&!P§;
   import §;!Z§.*;
   import §<"?§.§3>§;
   import §<"?§.§6!8§;
   import §<$q§.*;
   import §<%k§.§`!v§;
   import §=&!§.§<$Z§;
   import §?$K§.§!"t§;
   import §?$L§.§&$9§;
   import §?%J§.*;
   import §@!N§.§3!3§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.loading.LoaderStatus;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.StageQuality;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.server.GetQuestProgressResult;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.*;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.Drill;
   import ru.pragmatix.wormix.weapons.Jetpack;
   
   public class §+N§ extends §%%o§
   {
      
      public static const NAME:String = "ARCTIC_FREEZE_DEBUFF";
      
      private static const §]!M§:String = "IceBlock";
      
      private static const DAMAGE:int = 10;
      
      private static const HEAL:int = 120;
      
      private var effectClip:MovieClip;
      
      private var faceMaker:§^#%§;
      
      private var owner:§+%]§;
      
      private var anchor:Point;
      
      private var §7r§:Boolean = false;
      
      public function §+N§(param1:§+%]§, param2:int = 10)
      {
         super(NAME,param2);
         this.faceMaker = §^#%§(Application.scene.§@$I§.§5# §(§^#%§));
         this.owner = param1;
      }
      
      override protected function §5#F§() : void
      {
         this.anchor = new Point(unit.x,unit.y);
         unit.graphics.colorTransform(0,0,100);
         this.effectClip = §6#A§.§!&6§(§]!M§);
         Application.scene.addEventListener(§0%v§.EOT,this.§,!l§);
         unit.§#"%§(this.effectClip,0,0,false,false);
         unit.addEventListener(§0%v§.§'$p§,this.lockOnPlace);
         unit.addEventListener(§0%v§.§&!D§,this.§!$O§);
         unit.setSpeedXY(0,0);
         unit.§3%1§(true);
         this.§+#s§();
         this.faceMaker.stop(unit,true);
      }
      
      override protected function §0&"§() : void
      {
         unit.graphics.colorTransform(0,0,-100);
         unit.§'$§(this.effectClip);
         this.effectClip = null;
         §1"-§.§8%8§(unit.x,unit.y,20);
         Application.scene.removeEventListener(§0%v§.EOT,this.§,!l§);
         unit.removeEventListener(§0%v§.§'$p§,this.lockOnPlace);
         unit.removeEventListener(§0%v§.§&!D§,this.§!$O§);
         unit.§3%1§(false);
         §@%;§.play(§`!v§.§`'§);
         this.faceMaker.stop(unit,false);
         unit.graphics.unlock();
         unit.§2!W§();
      }
      
      override protected function onNextTurn(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         super.onNextTurn(param1);
         if(§&%M§)
         {
            return;
         }
         if(!§8"%§.§?!W§.§4"m§)
         {
            return;
         }
         var _loc2_:Boolean = unit.squad.isAi();
         var _loc3_:Boolean = §8"%§.§?!W§.§4"m§.activeUnit == unit;
         this.anchor = new Point(unit.x,unit.y);
         if(_loc2_)
         {
            _loc4_ = Application.scene.§@$I§.§;%a§.§"L§([§2$v§]).length > 0;
            unit.attributes.hp.§#1§(_loc4_ ? uint(HEAL / 2) : uint(HEAL),false,0);
            unit.buffs.§6C§(§ !!§.NAME);
            if(unit.hp / unit.attributes.hp.§#&"§() >= 0.5 && _loc3_)
            {
               clear();
            }
         }
      }
      
      private function §,!l§(param1:Event) : void
      {
         if(Boolean(unit) && Boolean(!§&%M§) && !unit.squad.isAi())
         {
            §'"$§.§]#I§(this.owner,unit.x,unit.y + 10,unit,DAMAGE,0,0,false);
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
            anchor = new Point(unit.x,unit.y);
            unit.addEventListener(§0%v§.§'$p§,lockOnPlace);
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
         param1.buffs.place(new §+N§(null,§8#z§()));
      }
   }
}


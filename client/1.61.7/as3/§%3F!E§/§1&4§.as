package §?!E§
{
   import § !P§.§<#q§;
   import § &5§.§=#P§;
   import § &5§.§@N§;
   import § L§.§`T§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"#x§.§'"$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §,#_§.FrameTimer;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §1#p§.*;
   import §2"L§.§^$y§;
   import §2#V§.§-#U§;
   import §2#i§.§+%z§;
   import §2#i§.§9##§;
   import §3#a§.§-!`§;
   import §4!!§.§'$V§;
   import §4#`§.§+!l§;
   import §4%_§.§3§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$1§.§3&G§;
   import §7$1§.§;$n§;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §9&+§.§>&5§;
   import §;!J§.*;
   import §<$q§.§?!d§;
   import §<%c§.§]"C§;
   import §<%k§.§`!v§;
   import §=&!§.§<$Z§;
   import §?#g§.Race;
   import §?$K§.§=z§;
   import §?$L§.§0"-§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §]$v§.§1>§;
   import §^#[§.§&$2§;
   import com.greensock.TweenMax;
   import com.greensock.easing.Linear;
   import com.inreflected.forks.spark.effects.animation.Keyframe;
   import com.inreflected.forks.spark.effects.animation.MotionPath;
   import com.inreflected.forks.spark.effects.easing.IEaser;
   import flash.display.DisplayObjectContainer;
   import flash.display.Shape;
   import flash.display.StageQuality;
   import flash.events.*;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.BuyBattleResult;
   import ru.pragmatix.wormix.messages.server.DowngradeWeaponResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import vk.*;
   import vk.api.§;&G§;
   
   public class §1&4§ extends §]"C§
   {
      
      private static const §^$K§:uint = §9##§.§;9§ + §+%z§.RIFLE;
      
      private static const §-&#§:uint = §9##§.§;9§ + §+%z§.MINE;
      
      private var center:Point;
      
      private var hitByMine:Boolean = false;
      
      private var §`%_§:uint;
      
      private var §2!S§:uint;
      
      private var §=&$§:Boolean = false;
      
      public function §1&4§()
      {
         super(5,true);
      }
      
      override public function §,$j§() : §?!d§
      {
         var _loc1_:§?!d§ = super.§,$j§();
         _loc1_.backpackEnabled = true;
         return _loc1_;
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         this.center = new Point(Application.scene.width / 2,Application.scene.height / 2);
         §5"N§ = [[new Point(this.center.x,this.center.y - 50)]];
         §"!p§ = [new §-!`§(§0$N§.§%! §("RACE_ZOMBIE_NAME"),[])];
         §%$D§("LearningMission5_CentralPart",this.center.x + 50,this.center.y + 40);
      }
      
      override public function §8%r§() : void
      {
         var _loc1_:§,%r§ = §'%_§.getWeapon(§^$K§);
         this.§`%_§ = _loc1_.§4!J§().explosionRadius.value;
         _loc1_.§4!J§().explosionRadius.value = 0;
         this.§2!S§ = _loc1_.shots.value;
         _loc1_.shots.value = 1;
      }
      
      override protected function § "a§(param1:uint) : void
      {
         var turnNumber:uint = param1;
         if(turnNumber == 1)
         {
            Application.userProfile.§1G§.§@-§([]);
            this.§=$$§();
            currentUnit.addEventListener(§0%v§.§&!D§,§,![§);
            §8$a§.§&!#§(currentUnit,§0%v§.DISPOSED,function():void
            {
               §2&6§.§1%h§(§<$Z§.§!M§);
            });
         }
         if(!§8"%§.§?!W§.§4"m§.§=%g§() || this.§=&$§)
         {
            §8"%§.§?!W§.§4"m§.§6+§();
         }
      }
      
      private function §=$$§() : void
      {
         tutorialPanel.setTutorialRecords([getText(5,1)]);
         this.§6"L§(this.center.x - 100,this.center.y + 27,70,function():void
         {
            §8"%§.§?!W§.§4"m§.§%!J§(true);
         });
         currentUnit.§3%1§(true);
         this.putMineToBackpack(this.§<&$§);
      }
      
      private function §<&$§(param1:Event = null) : void
      {
         var e:Event = param1;
         §8"%§.§?!W§.§4"m§.§%!J§(false);
         §!%#§();
         §=J§(§;$n§,§-&#§,this.center.x - 200,this.center.y + 10,50,this.§`"f§);
         tutorialPanel.setTutorialRecords([getText(5,3)],true);
         tutorialPanel.§`!"§(function():void
         {
            tutorialPanel.setTutorialRecords([getText(5,4)]);
            showArrow(center.x - 200,center.y);
            currentUnit.§3%1§(false);
         });
      }
      
      private function §`"f§(param1:§;$n§) : void
      {
         var mine:§;$n§ = param1;
         §8$a§.§&!#§(mine.physicModel,§9#1§.§@"-§,function():void
         {
            makeMineHelper(mine);
         });
         this.§]#C§(mine,1,mine.x + 350,this.center.y + 25,function():void
         {
            §5&7§(mine,mine.x + 300,center.y + 25,function():void
            {
               §8"%§.§?!W§.§4"m§.§%!J§(false);
            });
         });
         tutorialPanel.setTutorialRecords([getText(5,5)]);
         Application.userProfile.§1G§.§@-§([]);
         §+#%§(this.center.x + 50,this.center.y,§^$K§,-1,this.§3!"§);
         §8"%§.§?!W§.§4"m§.§%!J§(false);
      }
      
      private function §3!"§(param1:Event = null) : void
      {
         var zombie:§+%]§;
         var e:Event = param1;
         tutorialPanel.setTutorialRecords([getText(5,6)]);
         currentUnit.§3%1§(true);
         currentUnit.§8"#§(§^$K§);
         zombie = enemySquads[0].§1!n§()[0];
         showArrow(zombie.x,zombie.y - 20);
         §8$a§.§&!#§(zombie,§0%v§.§&!D§,function(param1:Event):void
         {
            hideArrow();
            tutorialPanel.setTutorialRecords([getText(5,7)]);
         });
         zombie.addEventListener(§0%v§.DISPOSED,function(param1:Event):void
         {
            stripWeapon(currentUnit);
            Application.userProfile.§1G§.§@-§([]);
            §8"%§.§?!W§.§4"m§.§6+§();
            §8$a§.§&!#§(Application.scene,§0%v§.NEXT_TURN,showSecondZombie);
         });
         §8"%§.§?!W§.§4"m§.§%!J§(false);
         §8"%§.§?!W§.§4"m§.§""v§(false);
      }
      
      private function showSecondZombie(param1:Event = null) : void
      {
         var e:Event = param1;
         §8"%§.§?!W§.§4"m§.§%!J§(false);
         this.§6"L§(this.center.x + 200,this.center.y + 27,700,function():void
         {
            putMineToBackpack(showSecondTarget);
            §8"%§.§?!W§.§4"m§.§%!J§(true);
         });
         tutorialPanel.setTutorialRecords([getText(5,9)]);
      }
      
      private function showSecondTarget(param1:Event = null) : void
      {
         §8"%§.§?!W§.§4"m§.§%!J§(false);
         §!%#§();
         tutorialPanel.setTutorialRecords([getText(5,10)]);
         showArrow(this.center.x + 380,this.center.y);
         currentUnit.§3%1§(false);
         §=J§(§;$n§,§-&#§,this.center.x + 380,this.center.y,50,this.§5%=§);
      }
      
      private function §5%=§(param1:§;$n§) : void
      {
         var mine:§;$n§ = param1;
         hideArrow();
         mine.x = this.center.x + 395;
         mine.y = this.center.y + 35;
         this.§]#C§(mine,-1,mine.x - 150,this.center.y + 25,function():void
         {
            showArrow(mine.x - mine.§9$r§() + 10,center.y);
         });
         stripWeapon();
         Application.userProfile.§1G§.§@-§([]);
         tutorialPanel.setTutorialRecords([getText(5,11)]);
         this.makeMineHelper(mine);
         §8$a§.§&!#§(mine,§0%v§.DISPOSED,this.§0%,§);
         §8$a§.§&!#§(mine,§0%v§.MINE_ACTIVATE,function(param1:Event = null):void
         {
            showArrow(mine.x - mine.§9$r§() - 30,center.y);
         });
         §8$a§.§&!#§(currentUnit,§0%v§.§&!D§,function(param1:Event = null):void
         {
            hitByMine = true;
         });
      }
      
      private function §0%,§(param1:Event = null) : void
      {
         hideArrow();
         if(!this.hitByMine)
         {
            tutorialPanel.setTutorialRecords([getText(5,12)]);
         }
         else
         {
            tutorialPanel.setTutorialRecords([getText(5,13)]);
         }
         §+#%§(this.center.x + 120,this.center.y,§+%z§.BAT,-1,this.§,;§);
         §8"%§.§?!W§.§4"m§.§%!J§(false);
      }
      
      private function §,;§(param1:Event = null) : void
      {
         var zombie:§+%]§;
         var e:Event = param1;
         tutorialPanel.setTutorialRecords([getText(5,14)]);
         Application.scene.§@$I§.§;x§([§#!Z§.§3"E§,§#!Z§.§^!x§]);
         currentUnit.§8"#§(§+%z§.BAT);
         zombie = enemySquads[0].§1!n§()[0];
         showArrow(zombie.x - 35,zombie.y - 20);
         §8$a§.§&!#§(zombie,§0%v§.§&!D§,function(param1:Event):void
         {
            hideArrow();
         });
         zombie.addEventListener(§0%v§.DISPOSED,function(param1:Event):void
         {
            if(Boolean(currentUnit) && !currentUnit.disposed)
            {
               currentUnit.§3%1§(false);
            }
            §6&;§();
         });
      }
      
      private function §6&;§() : void
      {
         if(currentUnit)
         {
            currentUnit.§3%1§(true);
            stripWeapon();
         }
         Application.scene.§@$I§.§;x§([]);
         §2&6§.§1%h§(§<$Z§.§+%I§);
         this.§=&$§ = true;
         tutorialPanel.hide();
         §#!Z§.fire(§#!Z§.§8%S§);
         tutorialPanel.destroy();
      }
      
      override public function clear() : void
      {
         super.clear();
         var _loc1_:§,%r§ = §'%_§.getWeapon(§^$K§);
         _loc1_.§4!J§().explosionRadius.value = this.§`%_§;
         _loc1_.shots.value = this.§2!S§;
      }
      
      private function makeMineHelper(param1:§;$n§) : Shape
      {
         var helper:Shape = null;
         var mine:§;$n§ = param1;
         helper = new Shape();
         helper.x = mine.x;
         helper.y = mine.y;
         helper.graphics.beginFill(16737894,0.3);
         helper.graphics.drawCircle(0,0,60);
         Application.scene.§=P§().addChild(helper);
         §8$a§.§&!#§(mine,§0%v§.DISPOSED,function(param1:Event):void
         {
            Application.scene.§=P§().removeChild(helper);
         });
         return helper;
      }
      
      private function §6"L§(param1:int, param2:int, param3:uint, param4:Function = null) : void
      {
         var ungravingZombie:§&"T§ = null;
         var dummy:§&"T§ = null;
         var x:int = param1;
         var y:int = param2;
         var hp:uint = param3;
         var readyCallback:Function = param4;
         ungravingZombie = new §&"T§(true,§@N§.§@$8§);
         ungravingZombie.clip = §6#A§.§!&6§(§+"'§.§2#A§);
         ungravingZombie.x = x - (ungravingZombie.clip.width >> 1);
         ungravingZombie.y = y + (ungravingZombie.clip.height >> 1);
         Application.scene.§@$I§.§1$+§(ungravingZombie);
         ungravingZombie.clip.gotoAndPlay(2);
         dummy = Application.scene.§,$z§();
         §8$a§.§%!E§(95,function():void
         {
            var _loc1_:String = null;
            var _loc2_:UserProfile = null;
            _loc1_ = §0$N§.§%! §("RACE_ZOMBIE_NAME");
            _loc2_ = UserProfile.§'#3§(_loc1_,1,Race.§"$H§,hp,0,0);
            var _loc3_:§+%]§ = Race.create(_loc2_,x,y);
            enemySquads[0].addUnit(_loc3_);
            _loc3_.§;!s§(true,false);
            ungravingZombie.disposed = true;
            dummy.disposed = true;
            if(readyCallback != null)
            {
               readyCallback();
            }
         });
      }
      
      private function putMineToBackpack(param1:Function) : void
      {
         Application.userProfile.§1G§.§@-§([]);
         §7%g§.§?!]§(currentUnit,§<$c§.§ !=§(§-&#§),1);
         §8"%§.§?!W§.§4"m§.§%!J§(true);
         §=$Y§(0);
         §8$a§.§&!#§(currentUnit,§0%v§.WEAPON_SELECT,param1);
      }
      
      private function §]#C§(param1:§;$n§, param2:int, param3:int, param4:int, param5:Function = null, param6:Function = null) : void
      {
         var mine:§;$n§ = param1;
         var correctDirection:int = param2;
         var targetX:int = param3;
         var targetY:int = param4;
         var onTimer:Function = param5;
         var onTeleport:Function = param6;
         §8$a§.§%!E§(40,function():void
         {
            if(§^$y§.distance(Math.abs(mine.x - currentUnit.x),Math.abs(mine.y - currentUnit.y)) < 60 || §^$y§.sign(currentUnit.x - mine.x) != correctDirection)
            {
               §"%8§(targetX,targetY,onTeleport);
            }
            if(onTimer != null)
            {
               onTimer();
            }
         });
      }
      
      private function §5&7§(param1:§;$n§, param2:int, param3:int, param4:Function = null) : void
      {
         var ft:FrameTimer = null;
         var mine:§;$n§ = param1;
         var targetX:int = param2;
         var targetY:int = param3;
         var onTeleport:Function = param4;
         ft = new FrameTimer(1);
         ft.addEventListener(FrameTimerEvent.§8$`§,function(param1:Event):void
         {
            if(§^$y§.distance(Math.abs(mine.x - currentUnit.x),Math.abs(mine.y - currentUnit.y)) < 78)
            {
               §"%8§(targetX,targetY,onTeleport);
            }
         });
         ft.start();
         §8$a§.§&!#§(mine,§0%v§.DISPOSED,function():void
         {
            ft.stop();
         });
      }
      
      private function §"%8§(param1:int, param2:int, param3:Function = null) : void
      {
         new §'$V§(currentUnit,currentUnit.x,currentUnit.y,true,currentUnit,16777215,16777215,60);
         §@%;§.play(§`!v§.EMERGENCY_TELEPORT);
         §<H§.§"%8§(currentUnit,param1,param2,param3);
         currentUnit.stable = false;
      }
   }
}


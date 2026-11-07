package ru.pragmatix.wormix.weapons.boss
{
   import § #m§.§;#^§;
   import § %"§.§"%5§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%# §.*;
   import §&!?§.§"_§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!%§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+5§.§^$[§;
   import §-%B§.*;
   import §0"L§.*;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §2!-§.UnitKilledEvent;
   import §2#H§.§3$p§;
   import §2#H§.§<§;
   import §2#i§.§+%z§;
   import §2#s§.*;
   import §3"_§.*;
   import §3#a§.§-#M§;
   import §4%_§.ZombieGrave;
   import §4'§.§`"q§;
   import §5#`§.§7%g§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §9%W§.§!7§;
   import §<%E§.§%#z§;
   import §<%E§.§,$2§;
   import §<%E§.§6#`§;
   import §<%k§.§`!v§;
   import §=;§.§>%>§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$K§.§`""§;
   import §?>§.§]!V§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@<§.§+%]§;
   import §[!`§.SolarSphere;
   import §^#[§.§&$2§;
   import §`%&§.§#"U§;
   import §`%&§.§5$1§;
   import com.adobe.serialization.json.JSON;
   import com.greensock.TweenMax;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.messages.client.SetCookies;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class AssassinFanOfKnives extends §,%r§
   {
      
      private static const §'&=§:uint = 35;
      
      protected var frames:§&$2§ = new §&$2§(0);
      
      public function AssassinFanOfKnives()
      {
         super();
         §"#z§ = 45;
         §2$"§ = 45;
         §7&§(new §!7§());
      }
      
      override public function §""2§(param1:Object) : void
      {
         super.§""2§(param1);
         §-g§ = new §#"U§(300);
         paramSet = §'%_§.getWeapon(§+%z§.SHURIKEN_U2A_TRAJECTORY).§4!J§().clone();
      }
      
      override protected function §`%V§() : void
      {
         owner.§4%Y§(clip);
         §+# §.§9! §.deactivate();
         startFrameListening();
         this.frames.value = 0;
         §?"'§ = true;
         §'"$§.§]#I§(owner,owner.x,owner.y - §'&=§,null,0,§'&=§ + 15,§'&=§ + 5,false);
         if(owner)
         {
            §1"-§.explode(§;n§.§6#B§,owner.x,owner.y,§'&=§ + 5,§`!v§.§["s§);
            owner.graphics.jumpBack();
            owner.y -= §'&=§;
         }
      }
      
      override protected function onFrame(param1:Event) : void
      {
         var moves:Array = null;
         var enemies:Vector.<§+%]§> = null;
         var target:§+%]§ = null;
         var move:Array = null;
         var ammo:§"%5§ = null;
         var e:Event = param1;
         ++this.frames.value;
         if(this.frames.value % 3 == 0)
         {
            moves = [];
            enemies = §8"%§.§?!W§.§4"m§.§6"M§(owner);
            for each(target in enemies)
            {
               this.§&2§(moves,target,30);
               this.§&2§(moves,target,60);
               this.§&2§(moves,target,90);
            }
            if(moves.length > 0)
            {
               move = moves[int(§8"%§.randomSeed.§,!q§(0,moves.length - 1))];
               ammo = new §"%5§(owner,paramSet,move[0],move[1],false);
               if(owner.squad.isLocal())
               {
                  ammo.customSource = §<$c§.§ !=§(§+%z§.SHURIKEN);
               }
               ammo.seed = §8"%§.randomSeed;
               ammo.§<!K§(false,false);
               var _temp_6:* = §8$a§;
               var _temp_5:* = ammo;
               var _temp_4:* = §0%v§.§+&=§;
               with({})
               {
                  
                  var _temp_3:* = onceCollideFanOfKnives = function(param1:CollisionEvent):void
                  {
                     if(param1.other is §+%]§)
                     {
                        §7%g§.§>!%§(§+%]§(param1.other),owner);
                     }
                  };
               }
               _temp_6.§&!#§(_temp_5,_temp_4,_temp_3);
            }
            else
            {
               this.§-"%§();
            }
         }
         if(this.frames.value > 100)
         {
            this.§-"%§();
         }
      }
      
      private function §&2§(param1:Array, param2:§+%]§, param3:uint) : void
      {
         var _loc4_:Array = null;
         var _loc5_:Number = NaN;
         _loc4_ = §0$a§.§-&-§(owner.x,owner.y,param2.x,param2.y,param3);
         _loc5_ = §-q§.§'x§(owner.x,owner.y,param2.x,param2.y);
         var _loc6_:Number = §-q§.§1&A§(_loc5_,_loc4_);
         if(!isNaN(_loc6_))
         {
            param1.push([_loc6_,param3]);
         }
      }
      
      protected function §-"%§() : void
      {
         §?"'§ = false;
         §+# §.§9! §.activate();
         §2#G§();
         owner.stable = false;
         §=#P§.§6+§();
         §?!K§();
      }
   }
}


package §2#H§
{
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§2&>§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §-8§.*;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0%j§.§#!U§;
   import §0%j§.§-,§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2"L§.§,'§;
   import §3"@§.§##L§;
   import §3"@§.§#$O§;
   import §3%J§.§;&<§;
   import §4!K§.§^%A§;
   import §4!x§.§@& §;
   import §4#`§.*;
   import §4$b§.§2m§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §65§.§=&9§;
   import §7!B§.§&"T§;
   import §7$t§.§=?§;
   import §8$V§.§`"c§;
   import §9%k§.§0"^§;
   import §<"?§.§3>§;
   import §<%E§.§6#`§;
   import §<%E§.§=$u§;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §=1§.*;
   import §?$K§.§=z§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@<§.§+%]§;
   import §[!`§.§%5§;
   import §[%'§.§<"G§;
   import §^#[§.§?"&§;
   import §`#x§.§"$r§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.inspirit.net.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.craft.§"!g§;
   import ru.pragmatix.wormix.messages.client.BuyRace;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.messages.structures.BossWormStructure;
   import ru.pragmatix.wormix.messages.structures.TurnStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.structures.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §3$p§ extends §=&9§
   {
      
      public static const NAME:String = "SOLAR_PRIEST";
      
      public static const § &G§:int = -1;
      
      public static const §!$k§:int = 1;
      
      private static const §6$5§:uint = 25;
      
      private static const §]!p§:uint = 20;
      
      private static const DAMAGE:uint = 25;
      
      private static const §]#2§:uint = 10;
      
      private static const §<$C§:uint = 70;
      
      private static const §=#k§:uint = 5;
      
      private static const §<$f§:uint = 90;
      
      private static const §>$p§:Number = 0.07;
      
      private static const §8"L§:uint = 20;
      
      private static const § "u§:uint = 3;
      
      private static const §<#n§:uint = 15;
      
      private static const § !s§:Number = 0.1;
      
      private static const §'!%§:Number = 20;
      
      private var §##1§:MovieClip = §6#A§.§!&6§("SolarAura");
      
      private var §]#o§:uint = 20;
      
      private var damage:uint = 25;
      
      private var damageRadius:uint = 70;
      
      private var §<#4§:uint = 90;
      
      private var §9s§:Number = 1;
      
      private var §9#g§:Boolean = false;
      
      private var §8y§:Boolean;
      
      private var §?!?§:Boolean;
      
      private var lastPosition:Point;
      
      private var enemies:Vector.<§+%]§>;
      
      private var frame:uint = 0;
      
      public function §3$p§(param1:Boolean = true)
      {
         super(NAME,§ &G§,§!$k§);
         this.§8y§ = param1;
      }
      
      override protected function §7$d§() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         var _loc2_:§+%]§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!this.§9#g§ && counter.value % §]#2§ == 0)
         {
            if(this.§?!?§)
            {
               _loc3_ = §8"%§.randomSeed.§]#W§(0,0);
               if(_loc3_ <= §>$p§)
               {
                  this.§&&9§();
               }
            }
            if(this.frame % 10 == 0 || !this.enemies || this.enemies.length == 0)
            {
               this.enemies = §8"%§.§?!W§.§4"m§.§6"M§(unit);
            }
            else
            {
               §7z§.§7"K§(this.enemies);
            }
            _loc1_ = §<H§.§5"]§(unit.x,unit.y,this.damageRadius,this.enemies);
            for each(_loc2_ in _loc1_)
            {
               if(!_loc2_.buffs.hasBuff(§2&>§.NAME))
               {
                  §'"$§.§]#I§(unit,_loc2_.x,_loc2_.y,_loc2_,this.damage,0,0,false,false,§&!E§.FIRE);
                  _loc4_ = §-q§.§'x§(unit.x,unit.y,_loc2_.x,_loc2_.y);
                  Application.scene.§,# §(_loc2_.x,_loc2_.y,§<H§.§@% §);
                  _loc2_.§^"F§(_loc4_,§=#k§);
               }
            }
            ++this.frame;
         }
      }
      
      private function §?$u§(param1:DamageEvent) : void
      {
         if(!this.§9#g§ && !unit.disposed && param1.power >= §6$5§)
         {
            if(!this.§8y§)
            {
               this.§&&9§();
            }
            else
            {
               this.§-&6§();
            }
         }
      }
      
      private function onDisposed(param1:Event) : void
      {
         if(!Application.scene.§@$I§.§=%d§())
         {
            this.lastPosition = new Point(unit.x,unit.y);
            this.§9F§(this.§]#o§ * (this.§8y§ ? 4 : 2),5,10);
         }
      }
      
      public function §9F§(param1:uint, param2:uint, param3:uint) : void
      {
         var enemies:Vector.<§+%]§> = null;
         var clip:MovieClip = null;
         var teamId:uint = 0;
         var step:Number = NaN;
         var timer:int = 0;
         var sparks:uint = param1;
         var waves:uint = param2;
         var period:uint = param3;
         enemies = §8"%§.§?!W§.§4"m§.§6"M§(unit);
         clip = §6#A§.§!&6§("SolarSphere");
         teamId = uint(unit.squad.getTeamId());
         step = Math.PI / (sparks * 0.5);
         timer = period * waves;
         clip.x = this.lastPosition.x;
         clip.y = this.lastPosition.y;
         Application.scene.addChild(clip);
         Application.scene.addEventListener(§0%v§.FRAME,function(param1:Event):void
         {
            var _loc3_:Number = NaN;
            var _loc4_:uint = 0;
            if(0 == timer--)
            {
               if(Application.scene)
               {
                  Application.scene.removeEventListener(§0%v§.FRAME,arguments.callee);
               }
               if(clip.parent)
               {
                  clip.parent.removeChild(clip);
               }
               if(clip.totalFrames > 1)
               {
                  clip.stop();
               }
               if(clip.numChildren > 0)
               {
                  §3!3§.§>!j§(§3!3§.§#"R§(clip));
               }
            }
            else if(timer % period == 0)
            {
               §@%;§.play(§`!v§.§`@§);
               _loc3_ = §8"%§.randomSeed.§]#W§(0,Math.PI);
               clip.scaleX -= 0.15;
               clip.scaleY -= 0.15;
               _loc4_ = 0;
               while(_loc4_ < sparks)
               {
                  new §%5§(unit,lastPosition.x,lastPosition.y,_loc3_,140,teamId,enemies);
                  _loc3_ += step;
                  _loc4_++;
               }
            }
         });
      }
      
      public function §-&6§() : void
      {
         §@%;§.play(§`!v§.§`@§);
         var _loc1_:Number = Math.PI / (this.§]#o§ * 0.5);
         var _loc2_:Number = §8"%§.randomSeed.§]#W§(0,Math.PI);
         var _loc3_:uint = uint(unit.squad.getTeamId());
         var _loc4_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(unit);
         var _loc5_:uint = 0;
         while(_loc5_ < this.§]#o§)
         {
            new §%5§(unit,unit.x,unit.y,_loc2_,this.§8y§ ? int(this.§<#4§) : int(this.§<#4§ * 2),_loc3_,_loc4_);
            _loc2_ += _loc1_;
            _loc5_++;
         }
      }
      
      public function §&&9§() : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:§3$p§ = null;
         this.§-&6§();
         var _loc1_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§="T§(this.unit);
         for each(_loc2_ in _loc1_)
         {
            if(_loc2_.buffs.hasBuff(NAME))
            {
               _loc3_ = §3$p§(_loc2_.buffs.getBuff(§3$p§.NAME));
               _loc3_.§-&6§();
            }
         }
      }
      
      public function §[$#§() : void
      {
         this.damage += §8"L§;
         this.damageRadius += § "u§;
         this.§]#o§ += §<#n§;
         this.§9s§ += § !s§;
         this.§<#4§ += §'!%§;
         this.§##1§.scaleX = this.§9s§;
         this.§##1§.scaleY = this.§9s§;
      }
      
      public function set disable(param1:Boolean) : void
      {
         this.§9#g§ = param1;
      }
      
      public function set §`"Y§(param1:Boolean) : void
      {
         this.§?!?§ = param1;
      }
      
      override protected function §5#F§() : void
      {
         unit.graphics.§5$#§(§2m§.§-w§,this.§##1§,0,0);
         this.§9s§ += § !s§;
         this.§##1§.scaleX = this.§9s§;
         this.§##1§.scaleY = this.§9s§;
         unit.addEventListener(§0%v§.§&!D§,this.§?$u§);
         unit.addEventListener(§0%v§.DISPOSED,this.onDisposed,false,101);
      }
      
      override protected function §0&"§() : void
      {
         unit.graphics.detachClip(this.§##1§,§2m§.§-w§);
         unit.removeEventListener(§0%v§.§&!D§,this.§?$u§);
         unit.removeEventListener(§0%v§.DISPOSED,this.onDisposed);
         this.enemies = null;
      }
   }
}


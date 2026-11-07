package §4!!§
{
   import § #9§.§"$t§;
   import § $q§.§3U§;
   import §!$D§.§2$^§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%$!§.§@!o§;
   import §%E§.*;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&x§.§=$h§;
   import §&x§.§]&C§;
   import §'!Z§.§1"-§;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §+%S§.§0"G§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §2o§.§]#;§;
   import §3"@§.§##L§;
   import §3#T§.§+&F§;
   import §4$b§.*;
   import §4'§.§#"l§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §7!B§.§6#I§;
   import §7$t§.§2"y§;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §<%k§.§`!v§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §@!i§.§;#L§;
   import §@$§.§+%>§;
   import §@<§.§+%]§;
   import §["3§.CraftEquipInfoHint;
   import §[%'§.§<"G§;
   import §]^§.§-$T§;
   import §]^§.§3$f§;
   import §]^§.§5" §;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^#o§.§%%2§;
   import §^#o§.§8!U§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.StageDisplayState;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.arena.boss.*;
   import ru.pragmatix.wormix.messages.server.IncomingPayment;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §!$j§ extends §6#I§
   {
      
      private static const §8&3§:uint = 10;
      
      private static const § w§:uint = 200;
      
      private static const §["]§:uint = 5;
      
      private static const §6"m§:Number = Math.PI / 60;
      
      private var paramSet:§5$n§;
      
      public function §!$j§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint = 12, param5:uint = 90)
      {
         super(param1,param1.x,param1.y,false,param5,_damageType);
         this.paramSet = param2;
         initialize(§"$C§(param3,20),param2.ammoClassName);
         §1"-§.attachTrail(this,7,10,6068463,6068463,1);
         §`4§ = §]$S§;
         §^"F§(param3,param4);
         var _loc6_:§8!U§ = new §8!U§(this,§ w§,§["]§);
         var _loc7_:§%%2§ = new §%%2§(this,param4,§6"m§);
         _loc7_.§!$s§(_loc6_);
         §=l§.push(_loc6_,_loc7_);
         addEventListener(§0%v§.§+&=§,this.onCollide);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§^&0§);
         physParams.ignoresTerrain = true;
         physParams.§5N§ = §9%1§.§@%h§;
         physicModel = new §7%[§(physParams);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(!disposed)
         {
            this.§1!V§();
         }
      }
      
      private function §1!V§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:Number = NaN;
         if(frames > §8&3§)
         {
            _loc1_ = §8"%§.randomSeed.§,!q§(0,360) * Math.PI / 180;
            _loc2_ = 15;
            _loc3_ = 4;
            _loc4_ = 10;
            new §+&F§(owner,_loc1_,_loc3_,this.x + Math.cos(_loc1_) * _loc2_,this.y + Math.sin(_loc1_) * _loc2_).§^"F§(_loc1_,_loc4_);
         }
      }
      
      private function onCollide(param1:CollisionEvent) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:int = 0;
         if(param1.other != null && param1.other is §+%]§ && (§ $d§ || §+%]§(param1.other).squad.getTeamId() != owner.squad.getTeamId()))
         {
            §@%;§.play(§`!v§.§4"t§);
            inflictDamage(param1.other,this.paramSet.damage.value,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value);
            §+%]§(param1.other).buffs.place(new §0"G§());
            _loc2_ = 8;
            _loc3_ = 150;
            _loc4_ = 0;
            while(_loc4_ < _loc2_)
            {
               new §+&F§(owner,_loc4_ * 2 * Math.PI / _loc2_,8,x,y,_loc3_).§5!?§(0,-2);
               _loc4_++;
            }
            disposed = true;
            removeEventListener(§0%v§.§+&=§,this.onCollide);
         }
      }
   }
}


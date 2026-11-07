package § %"§
{
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+%S§.§@x§;
   import §0%[§.§0%§;
   import §0&F§.§!!c§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2"L§.§,'§;
   import §5#`§.§%&5§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §9%W§.§!7§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §>%S§.§^!V§;
   import §?$K§.§=z§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[%§.Boar;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §"%5§ extends §6#I§
   {
      
      public static const §#&9§:Array = [§`!v§.SHURIKEN_ATTACK_01,§`!v§.SHURIKEN_ATTACK_02,§`!v§.SHURIKEN_ATTACK_03,§`!v§.SHURIKEN_ATTACK_04];
      
      public static const §&!_§:Array = [§`!v§.SHURIKEN_HITGROUND_01,§`!v§.SHURIKEN_HITGROUND_02,§`!v§.SHURIKEN_HITGROUND_03,§`!v§.SHURIKEN_HITGROUND_04];
      
      public static const §!"P§:Array = [§`!v§.SHURIKEN_HITWORM_01,§`!v§.SHURIKEN_HITWORM_02,§`!v§.SHURIKEN_HITWORM_03,§`!v§.SHURIKEN_HITWORM_04];
      
      protected var paramSet:§5$n§;
      
      public var seed:§,'§;
      
      public var selfHit:Boolean = true;
      
      public function §"%5§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint, param5:Boolean = true)
      {
         super(param1,param1.x,param1.y,false);
         this.paramSet = param2;
         initialize(§"$C§(param3,5),param2.ammoClassName);
         §^"F§(param3,param4);
         clip.rotation = param3 * 180 / Math.PI;
         §-"e§ = false;
         §@%;§.play(§`!v§.§=%2§(§#&9§,this.seed));
         addEventListener(§0%v§.§+&=§,this.onCollide);
         §`4§ = §+#G§;
         Application.scene.§@$I§.§1$+§(this);
         if(!§8"%§.§&S§.§5V§)
         {
            if(param5)
            {
               §1"-§.§+&$§(this,param2.ammoClassName,1,true);
            }
         }
      }
      
      protected function onCollide(param1:CollisionEvent) : void
      {
         if(§`^§ || param1.other != owner)
         {
            this.§!!_§(param1.other);
            disposed = true;
         }
      }
      
      protected function §!!_§(param1:§&"T§) : void
      {
         var _loc2_:uint = uint(this.paramSet.damage.value);
         _loc2_ = this.§#$ §(param1,_loc2_);
         var _loc3_:uint = param1 != null ? 0 : uint(this.paramSet.damageRadius.value);
         var _loc4_:uint = param1 != null ? 0 : uint(this.paramSet.explosionRadius.value);
         inflictDamage(param1,_loc2_,_loc3_,_loc4_,this.selfHit,false,true,_customSource);
         §@%;§.play(param1 == null ? §`!v§.§=%2§(§&!_§,this.seed) : §`!v§.§=%2§(§!"P§,this.seed));
      }
      
      protected function §#$ §(param1:§&"T§, param2:uint) : uint
      {
         if(param1 != null && param1 is §+%]§ && !§+%]§(param1).buffs.hasBuff(§@x§.NAME))
         {
            §+%]§(param1).buffs.place(new §@x§());
            return param2 * 2;
         }
         return param2;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         §1"-§.explode(§;n§.§7q§,x,y,this.paramSet.explosionRadius.value);
         removeEventListener(§0%v§.§+&=§,this.onCollide);
         super.§[$u§(param1);
      }
   }
}


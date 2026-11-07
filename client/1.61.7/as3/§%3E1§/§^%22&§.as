package §>1§
{
   import § &5§.§@N§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §,"v§.§9%d§;
   import §0&F§.§0%v§;
   import §2#H§.§+N§;
   import §4f§.§-&§;
   import §7!B§.§6#I§;
   import §<%k§.§`!v§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@<§.§+%]§;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §^"&§ extends §6#I§
   {
      
      private var paramSet:§5$n§;
      
      public function §^"&§(param1:§+%]§, param2:§5$n§, param3:Point, param4:uint = 90)
      {
         super(param1,param3.x,param3.y,false,param4,§&!E§.COLD);
         this.paramSet = param2;
         clip = §6#A§.§!&6§("AmBlizzard");
         clip.rotation = 90;
         this.x = param3.x;
         this.y = 0;
         §@#T§ = §@N§.§7&H§;
         §,q§.push(§-&§.IGNORE_MAGNET);
         addEventListener(§0%v§.§+&=§,this.onCollide);
         Application.scene.§@$I§.§1$+§(this);
         §5!?§(0,§8"%§.randomSeed.§,!q§(15,22));
         §1"-§.attachTrail(this,12,6,13694463,16777215,1,false,0.5);
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
         if(§8"%§.§?!W§.§4"m§.§1"3§())
         {
            disposed = true;
         }
      }
      
      protected function onCollide(param1:CollisionEvent) : void
      {
         if(param1.other != null && param1.other is §+%]§ && §+%]§(param1.other).squad.getTeamId() != owner.squad.getTeamId())
         {
            §@%;§.play(§`!v§.§ !h§);
            inflictDamage(param1.other,this.paramSet.damage.value,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value);
            if(!§+%]§(param1.other).buffs.hasBuff(§+N§.NAME))
            {
               §+%]§(param1.other).buffs.place(new §+m§(owner));
            }
            disposed = true;
            removeEventListener(§0%v§.§+&=§,this.onCollide);
         }
      }
   }
}


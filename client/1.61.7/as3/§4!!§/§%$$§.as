package §4!!§
{
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.§!#x§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§2!x§;
   import §+%S§.§="_§;
   import §+%S§.§?3§;
   import §0&F§.§0%v§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §@!i§.§!m§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §[$<§.§;"E§;
   import §[$<§.§;%S§;
   import §^#[§.§&$2§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.client.PutQuestTaskProgress;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §%$$§ extends §'$V§
   {
      
      private var damage:uint;
      
      public function §%$$§(param1:§+%]§, param2:int, param3:int, param4:§&"T§, param5:uint, param6:uint = 30, param7:uint = 0)
      {
         super(param1,param2,param3,true,param4,13934615,13934615,param6);
         this.damage = param5;
         this.clip = §6#A§.§!&6§("FireShot");
         this._damageType = §&!E§.FIRE;
         §3$1§ = true;
      }
      
      override protected function §;&;§() : void
      {
         §1"-§.explode(§;n§.§@"W§,x,y,15,§`!v§.§["p§);
         inflictDamage(target,this.damage,0,0,false,false,true,_customSource);
      }
      
      override protected function §0$J§(param1:uint, param2:uint) : void
      {
      }
   }
}


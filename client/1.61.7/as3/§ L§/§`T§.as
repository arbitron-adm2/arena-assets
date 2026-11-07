package § L§
{
   import § &5§.§=#P§;
   import § &5§.§@N§;
   import §"#x§.§'"$§;
   import §##j§.§'"%§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#%!§.§[N§;
   import §#%!§.§^%c§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.§'-§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §0!§.*;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §2!-§.DamageEvent;
   import §2"L§.§,!t§;
   import §2o§.§]#@§;
   import §4!!§.§2&F§;
   import §4f§.§-&§;
   import §6$z§.§!"§;
   import §7!B§.§&"T§;
   import §7$1§.§;$n§;
   import §7$t§.§2& §;
   import §7$t§.§;#_§;
   import §9![§.*;
   import §<%k§.§`!v§;
   import §="z§.§6a§;
   import §="z§.§9%1§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%§.Cat;
   import §]$v§.§]%_§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import §`#x§.§"$r§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§5!r§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.rewards.*;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   use namespace gestouch_internal;
   
   public class §`T§ extends §;$n§ implements §^%c§
   {
      
      private var §!$`§:§+%]§;
      
      private var §=#w§:§&$2§;
      
      private var §@"t§:§&$2§ = new §&$2§(0);
      
      private var bar:§%&F§;
      
      public function §`T§(param1:§+%]§, param2:Number, param3:Number, param4:§&$2§)
      {
         this.§!$`§ = param1;
         this.§=#w§ = param4;
         super(param1,param2,param3,§5$n§.§<#=§("ProtectiveDroid",0,0,0));
         canBeDamaged = true;
         §8%g§ = new §9"u§(this,100,0,0);
         physParams.§5N§ = §9%1§.§!#6§;
         physParams.§0#0§ = §<#`§.§&!c§;
         param1.addEventListener(§0%v§.§&!D§,this.§6%h§);
         Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
         Application.scene.addEventListener(§0%v§.EOT,this.§,!l§);
         §1"-§.explode(§;n§.§@%d§,param2,param3,30);
         this.bar = new §[N§(owner,§0$N§.§%! §("BOT_NAME_ENGINEER_DROID"),20);
      }
      
      private function §@%D§(param1:Event) : void
      {
         this.§@"t§.value = 0;
      }
      
      private function §,!l§(param1:Event) : void
      {
         if(!this.§!$`§.disposed && this.§@"t§.value > 0)
         {
            new §2&F§(this.§!$`§,this.x,this.y,this.§!$`§,this.§@"t§.value);
         }
      }
      
      private function §6%h§(param1:DamageEvent) : void
      {
         var _loc2_:int = int(§-q§.§8$G§(this.§=#w§.value,Math.ceil(param1.power)));
         if(_loc2_ > 0)
         {
            this.§@"t§.value += _loc2_;
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         §1"-§.explode(§;n§.§1"E§,x,y,clip.width,§`!v§.§`%9§);
         this.§!$`§.removeEventListener(§0%v§.§&!D§,this.§6%h§);
         this.§!$`§ = null;
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
         Application.scene.removeEventListener(§0%v§.EOT,this.§,!l§);
         this.§=#w§ = null;
         this.§@"t§ = null;
         super.§[$u§(param1);
      }
      
      override public function §9$r§() : int
      {
         return clip ? int(clip.width + 5) : 20;
      }
      
      public function getBar() : §%&F§
      {
         return this.bar;
      }
   }
}


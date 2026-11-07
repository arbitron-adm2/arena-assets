package §]#b§
{
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §0&F§.§0%v§;
   import §1&-§.§-#B§;
   import §2#W§.*;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?#g§.§-!k§;
   import §?$L§.§ "N§;
   import §@!N§.§2"e§;
   import §@!i§.§!m§;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[$<§.§"#"§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.AchieveLoginSuccess;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §8!d§ extends §6#I§
   {
      
      protected static const §`!C§:uint = 300;
      
      private static const §<%O§:uint = 15;
      
      protected var paramSet:§5$n§;
      
      private var §#!C§:§5$n§;
      
      public function §8!d§(param1:§+%]§, param2:§5$n§, param3:§5$n§, param4:Number, param5:uint)
      {
         super(param1,param1.x,param1.y,false,§&i§,§&!E§.§=$-§);
         this.paramSet = param2;
         this.§#!C§ = param3;
         §,%S§ = true;
         §@%;§.play(§`!v§.§["p§);
         _damageType = §&!E§.§=$-§;
         initialize(§"$C§(param4,5),param2.ammoClassName);
         this.clip.rotation = param4 * 180 / Math.PI;
         §^"F§(param4,param5);
         physParams.addForce(§]%G§.§-4§);
         §8$a§.§&!#§(this,§0%v§.§+&=§,this.onCollide);
         §`4§ = §]$S§;
         §1"-§.§;%k§(this,§;n§.§7q§,8,1);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      protected function onCollide(param1:CollisionEvent) : void
      {
         var other:§&"T§;
         var source:§8!d§;
         var unitsInCircle:Vector.<§+%]§>;
         var unit:§+%]§ = null;
         var e:CollisionEvent = param1;
         §1"-§.§&!C§(x,y,16);
         §1"-§.explode(§;n§.§1"E§,x,y,this.paramSet.damageRadius.value / 2,§`!v§.§4"t§);
         other = e.other;
         if(other == null)
         {
            inflictDamage(null,this.paramSet.damage.value - this.§#!C§.damage.value,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value);
         }
         else
         {
            inflictDamage(other,this.paramSet.damage.value,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value);
         }
         §§push(§8$a§);
         §§push(40);
         with({})
         {
            var _temp_1:* = function():void
            {
               §1!Z§();
               disposed = true;
            };
            var _temp_2:* = onWaitAndDoDisposed = function():void
            {
               §1!Z§();
               disposed = true;
            };
         }
         §§pop().§%!E§(§§pop(),_temp_2);
         setSpeedXY(0,0);
         physParams.removeAllForces();
         source = this;
         unitsInCircle = §<H§.§5"]§(x,y,§`!C§);
         for each(unit in unitsInCircle)
         {
            if(unit != other && unit.squad.getTeamId() != owner.squad.getTeamId())
            {
               §1"-§.§2$O§(source,unit,§<%O§,10,6068463,8);
               §'"$§.§]#I§(source.owner,unit.x,unit.y,unit,this.§#!C§.damage.value,0,0,true,true,§&!E§.§=$-§);
            }
         }
      }
      
      protected function §1!Z§() : void
      {
      }
   }
}


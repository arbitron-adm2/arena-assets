package §;$%§
{
   import § #m§.§;#^§;
   import § $q§.§<"]§;
   import §!#g§.MD5;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §%"1§.§+#h§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§'%V§;
   import §-"N§.§+#R§;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §1&-§.§4!s§;
   import §2!-§.DamageEvent;
   import §2!-§.NewUnitEvent;
   import §2#H§.§3$p§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §8#a§.§>!o§;
   import §<%k§.§`!v§;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §=&!§.§ "^§;
   import §=&!§.§&$a§;
   import §?$K§.§!"t§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §[!`§.*;
   import §^"y§.§]#i§;
   import §`"p§.*;
   import api.com.odnoklassniki.core.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §8"w§ extends §6#I§
   {
      
      protected var paramSet:§5$n§;
      
      public function §8"w§(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:int, param6:int)
      {
         super(param1,param3,param4,false,§6#I§.§&i§,§&!E§.AIR);
         initialize(new Point(param3,param4),param2.ammoClassName);
         this.paramSet = param2;
         setSpeedXY(param5,param6);
         §8$a§.§&!#§(this,§0%v§.§+&=§,this.onCollide);
         §`4§ = §]$S§;
         Application.scene.§@$I§.§1$+§(this);
      }
      
      private function onCollide(param1:CollisionEvent) : void
      {
         if(!disposed)
         {
            this.explode(param1.other);
         }
      }
      
      protected function explode(param1:§&"T§) : void
      {
         disposed = true;
         inflictDamage(param1,this.paramSet.damage.value,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value);
      }
   }
}


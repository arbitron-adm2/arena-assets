package §4!!§
{
   import § #k§.*;
   import § &5§.§0&$§;
   import §!!i§.§@&&§;
   import §!L§.§7%0§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §#%!§.§ §;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#h§.§-"F§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'!Z§.§]!&§;
   import §+$=§.*;
   import §+%S§.§[0§;
   import §+%S§.§`$l§;
   import §,#_§.FrameTimer;
   import §-8§.§`%[§;
   import §0!§.§9"u§;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §2#i§.§9##§;
   import §4f§.§-&§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §9%W§.§!7§;
   import §<!W§.§1N§;
   import §<%E§.§,$2§;
   import §<%E§.§=$u§;
   import §=!p§.§8#x§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@$§.§+%>§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import config.§`!a§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.request.PostClanNewsRequest;
   import ru.pragmatix.wormix.messages.clans.response.PostClanNewsResponse;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §?%O§ extends §6#I§
   {
      
      private var paramSet:§5$n§;
      
      public function §?%O§(param1:§+%]§, param2:Point, param3:§5$n§, param4:Number, param5:uint)
      {
         super(param1,param2.x,param2.y,false,§&i§,§&!E§.§=$-§);
         this.paramSet = param3;
         §-"e§ = false;
         initialize(param2,param3.ammoClassName);
         this.attachTrail();
         physParams.ignoresTerrain = true;
         §§push(§§findproperty(§,q§));
         var _temp_1:* = new <§-&§>[§-&§.IGNORE_MAGNET];
         §§pop().§,q§ = new <§-&§>[§-&§.IGNORE_MAGNET];
         §3$1§ = false;
         Application.scene.§@$I§.§1$+§(this);
         §^"F§(param4,param5);
         §`4§ = §]$S§;
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§^&0§);
         physParams.§5N§ = §9%1§.§`$R§ + §9%1§.§@%h§;
         physicModel = new §7%[§(physParams);
      }
      
      public function attachTrail(param1:uint = 16377165, param2:uint = 16247961) : void
      {
         §1"-§.attachTrail(this,12,6,param1,param2,1);
      }
      
      override protected function §%$e§(param1:CollisionEvent) : void
      {
         super.§%$e§(param1);
         var _loc2_:§&"T§ = param1.other;
         if(_loc2_ is §+%]§ || _loc2_ is §6#I§ && _loc2_.canBeDamaged)
         {
            §'"$§.inflictDamage(this,_loc2_,this.paramSet.damage.value,0,0,true,true);
            if(_loc2_ is §6#I§ && !_loc2_.disposed)
            {
               §1"-§.explode(§;n§.§1"E§,_loc2_.x,_loc2_.y,_loc2_.width >> 1);
               _loc2_.disposed = true;
            }
         }
      }
      
      protected function clear() : void
      {
         disposed = true;
      }
   }
}


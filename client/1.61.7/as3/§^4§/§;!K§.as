package §^4§
{
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §%# §.§@a§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §0!Y§.§#!Z§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2#x§.*;
   import §2B§.§#&E§;
   import §5#`§.§7%g§;
   import §6%2§.§#"B§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7!B§.§`"d§;
   import §7!n§.§2!j§;
   import §7!n§.§[&#§;
   import §7$t§.§^%%§;
   import §9%W§.§&!P§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §?!E§.*;
   import §?$K§.§=z§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.StatusEvent;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §;!K§ extends §6#I§
   {
      
      private static const §`%X§:§&$2§ = new §&$2§(15);
      
      private static const PI_HALF:Number = Math.PI / 2;
      
      private static const §8!b§:Number = Math.PI / 32;
      
      private const §]$h§:§&$2§ = new §&$2§(0);
      
      private const §"%=§:§&$2§ = new §&$2§(20);
      
      private var paramSet:§5$n§;
      
      public function §;!K§(param1:§+%]§, param2:Point, param3:§5$n§, param4:Number, param5:uint)
      {
         super(param1,param1.x,param1.y,false,§&i§,§&!E§.§=$-§);
         this.paramSet = param3;
         §,%S§ = true;
         §@%;§.play(§`!v§.§`%9§);
         initialize(param2,param3.ammoClassName);
         this.clip.rotation = param4 * 180 / Math.PI;
         §^"F§(param4,param5);
         §8$a§.§&!#§(this,§0%v§.§+&=§,this.onCollide);
         §`4§ = §]$S§;
         §1"-§.§;%k§(this,§;n§.§7q§,8,1);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      private function onCollide(param1:CollisionEvent) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:int = 0;
         §1"-§.§&!C§(x,y,8);
         §1"-§.explode(§;n§.§1"E§,x,y,this.paramSet.damageRadius.value / 2,§`!v§.§`%9§);
         inflictDamage(param1.other,this.paramSet.damage.value,this.paramSet.damageRadius.value,this.paramSet.explosionRadius.value,true);
         if(param1.other is §+%]§)
         {
            _loc2_ = param1.other as §+%]§;
            if(_loc2_.buffs.hasBuff(§=z§.NAME))
            {
               _loc3_ = 0;
               while(_loc3_ < this.§]$h§.value)
               {
                  this.bounce(_loc2_);
                  _loc3_++;
               }
            }
            else
            {
               §7%g§.§1E§(§+%]§(param1.other),this.bounce,this.§]$h§.value);
               _loc2_.§5!?§(0,-§`%X§.value);
            }
         }
         disposed = true;
      }
      
      private function bounce(param1:§+%]§, param2:CollisionEvent = null) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc3_:Number = -PI_HALF + §8!b§ * §8"%§.randomSeed.§,!q§(-8,8);
         _loc4_ = §>#9§.§3%2§(param1.x,param1.y,PI_HALF,§<H§.§-#C§);
         if((Boolean(_loc4_)) && !§>#9§.point(_loc4_.x,_loc4_.y,true))
         {
            §'"$§.§]#I§(owner,_loc4_.x,_loc4_.y,null,0,§<H§.§-#C§ + 10,§<H§.§-#C§,false,true,_damageType);
            param1.x = _loc4_.x;
            param1.y = _loc4_.y;
         }
         §1"-§.§`$Q§(param1.x,param1.y,§1"-§.§9a§);
         §'"$§.§]#I§(owner,param1.x,param1.y,param1,this.§"%=§.value,0,0,false,true,_damageType);
         if(!param1.buffs.hasBuff(§=z§.NAME))
         {
            _loc5_ = §'"$§.§ &0§(owner);
            §'"$§.§@$t§(param1,_loc3_,§`%X§.value,false,_loc5_);
         }
      }
      
      public function §="0§(param1:int) : void
      {
         this.§]$h§.value = param1;
      }
      
      public function §3j§(param1:int) : void
      {
         this.§"%=§.value = param1;
      }
   }
}


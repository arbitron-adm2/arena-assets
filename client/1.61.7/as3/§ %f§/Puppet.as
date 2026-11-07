package § %f§
{
   import § #m§.§;#^§;
   import § &5§.Water;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§<"4§;
   import §##y§.CollisionEvent;
   import §#5§.§!&"§;
   import §#5§.§9%$§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+#P§.§8"j§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%S§.§2$#§;
   import §+%S§.§="_§;
   import §+%S§.§=$2§;
   import §,$J§.§,$O§;
   import §0%[§.§0%§;
   import §0%z§.§,$h§;
   import §0&F§.§0%v§;
   import §0&F§.UpgradeEvent;
   import §2"L§.§^$y§;
   import §2"v§.*;
   import §2#i§.§+%z§;
   import §2#s§.§7"N§;
   import §6",§.§[%w§;
   import §65§.§%%o§;
   import §7"Q§.§0$L§;
   import §7$t§.§;#_§;
   import §7$t§.§^%%§;
   import §8#<§.§!#^§;
   import §8#o§.§#$s§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9%k§.*;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §=&!§.§&$a§;
   import §=&!§.§<$Z§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]#[§.*;
   import §^#[§.§&$2§;
   import §^#o§.§%%2§;
   import §^#o§.§8!U§;
   import §`%&§.§5$1§;
   import config.achievements.§"!&§;
   import config.achievements.BossAchieves;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.facebook.controller.*;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§>!n§;
   
   public class Puppet extends §=!z§
   {
      
      private static const § w§:uint = 200;
      
      private static const §["]§:uint = 5;
      
      private static const §6"m§:Number = Math.PI / 60;
      
      protected var attachedClip:String;
      
      protected var hp:int;
      
      private var power:uint;
      
      private var §;!j§:Boolean;
      
      private var §@#_§:Boolean;
      
      protected var §0$g§:§=#?§ = §`!v§.§-#"§;
      
      protected var explosionSound:§=#?§ = §`!v§.§>#Z§;
      
      public function Puppet(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:Number, param6:uint, param7:int)
      {
         §=#Y§ = false;
         super(param1,param2,param3,param4,param5,param6,0.5,150,§&i§);
         this.power = param6;
         §2#J§ = [§`!v§.§]%7§];
         physParams.§5N§ = §9%1§.§@%h§ + §9%1§.§&!A§;
         this.hp = param7;
         addEventListener(§0%v§.§+&=§,this.onCollide);
      }
      
      public function §=!3§(param1:String) : void
      {
         this.attachedClip = param1;
      }
      
      protected function onCollide(param1:CollisionEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc2_:§+%]§ = Boolean(param1.other) && param1.other is §+%]§ ? §+%]§(param1.other) : null;
         if(Boolean(_loc2_) && owner.squad.getTeamId() != _loc2_.squad.getTeamId())
         {
            inflictDamage(param1.other,paramSet.damage.value,0,0);
            _loc3_ = _loc2_.squad.isAi() && §8"%§.§?!W§.§^!U§().battleType == §&$a§.§5!w§;
            if(!_loc3_ && !_loc2_.buffs.hasBuff(this.§^#7§()))
            {
               this.§="4§(_loc2_);
            }
            §@%;§.play(this.§0$g§);
            disposed = true;
         }
      }
      
      protected function §="4§(param1:§+%]§) : void
      {
         param1.buffs.place(this.§-$4§());
      }
      
      protected function §^#7§() : String
      {
         return §=$2§.NAME;
      }
      
      protected function §-$4§() : §%%o§
      {
         return new §=$2§(owner,Puppet,paramSet,this.attachedClip,this.hp,this.§;!j§);
      }
      
      override protected function §^$e§(param1:Event) : void
      {
         super.§^$e§(param1);
         inflictDamage(null,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value);
         disposed = true;
         §1"-§.explode(§;n§.§@"W§,x,y,0,this.explosionSound);
      }
      
      public function §5E§() : void
      {
         this.§;!j§ = true;
      }
      
      public function §&$o§() : void
      {
         this.§@#_§ = true;
         §=s§ = 60;
         §##[§ = 90;
         var _loc1_:§8!U§ = new §8!U§(this,§ w§,§["]§);
         var _loc2_:§%%2§ = new §%%2§(this,this.power,§6"m§);
         _loc2_.§!$s§(_loc1_);
         §=l§.push(_loc1_,_loc2_);
         physParams.§5N§ = §9%1§.§@%h§;
      }
   }
}


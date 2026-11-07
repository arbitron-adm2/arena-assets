package §4!!§
{
   import § #9§.§3L§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §"$+§.§@C§;
   import §##y§.CollisionEvent;
   import §%"Z§.§'$2§;
   import §%$!§.§@!o§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+"m§.§3#[§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§2=§;
   import §2"L§.§,'§;
   import §2"L§.§^$y§;
   import §2#i§.§+%z§;
   import §4#2§.§,%g§;
   import §4$b§.*;
   import §4f§.§-&§;
   import §4u§.§;$H§;
   import §5!,§.§?!P§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §<%k§.§`!v§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §=1§.*;
   import §?$K§.§3#j§;
   import §?$K§.§@$J§;
   import §?$K§.§`""§;
   import §@!N§.§""L§;
   import §@!i§.§;#L§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §[%§.Cat;
   import §^#o§.§%%2§;
   import §`#x§.*;
   import com.greensock.motionPaths.PathFollower;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§<#D§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§,&F§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §'$V§ extends §6#I§
   {
      
      private static const §6"m§:Number = Math.PI;
      
      private static const §'$%§:uint = 50;
      
      private static const §@%_§:Number = Math.PI / 180;
      
      private static const §9"`§:int = 100;
      
      private static const §3"$§:int = 100;
      
      protected var target:§&"T§;
      
      private var §4h§:§%%2§;
      
      protected var callback:Function;
      
      protected var §%"-§:Function;
      
      public function §'$V§(param1:§+%]§, param2:int, param3:int, param4:Boolean, param5:§&"T§, param6:uint, param7:uint, param8:uint)
      {
         super(param1,param2,param3,param4,1000);
         §-"e§ = false;
         this.target = param5;
         initialize(new Point(param2,param3));
         this.§0$J§(param6,param7);
         §`4§ = §]$S§;
         physParams.ignoresTerrain = true;
         physParams.§5N§ = §9%1§.§@%h§;
         §,q§ = new <§-&§>[§-&§.IGNORE_MAGNET];
         addEventListener(§0%v§.§+&=§,this.onCollide);
         §3$1§ = false;
         this.§4h§ = new §%%2§(this,param8,§6"m§);
         this.§4h§.§<&E§ = §9"`§;
         this.§4h§.§`"#§ = §3"$§;
         this.§4h§.§'"x§ = §@%_§;
         this.§4h§.§1$P§ = §'$%§;
         §=l§.push(this.§4h§.§&$e§(param5));
         Application.scene.§@$I§.§1$+§(this);
      }
      
      public static function §=!Y§(param1:§+%]§, param2:int, param3:int, param4:§&"T§, param5:Function, param6:uint = 11289911, param7:uint = 16777215) : §'$V§
      {
         var _loc8_:§'$V§ = new §'$V§(param1,param2,param3,true,param4,param6,param7,80);
         _loc8_.callback = param5;
         return _loc8_;
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§^&0§);
         physParams.§5N§ = §9%1§.§@%h§;
         physicModel = new §7%[§(physParams);
         §7%[§(physicModel).checkEnemiesOnStart();
      }
      
      protected function §0$J§(param1:uint, param2:uint) : void
      {
         §1"-§.attachTrail(this,12,6,param1,param2,1);
      }
      
      protected function onCollide(param1:CollisionEvent) : void
      {
         if(param1.other == this.target)
         {
            this.§;&;§();
            this.clear();
         }
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(!this.target || this.target.disposed || §7%[§(physicModel).isObjectIgnored(this.target))
         {
            disposed = true;
         }
      }
      
      protected function §;&;§() : void
      {
         if(this.callback != null)
         {
            this.callback();
         }
      }
      
      protected function clear() : void
      {
         disposed = true;
         removeEventListener(§0%v§.§+&=§,this.onCollide);
      }
      
      public function get homingFeat() : §%%2§
      {
         return this.§4h§;
      }
      
      public function set onHitCallback(param1:Function) : void
      {
         this.§%"-§ = param1;
      }
   }
}


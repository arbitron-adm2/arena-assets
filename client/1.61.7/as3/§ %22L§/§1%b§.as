package § "L§
{
   import § $q§.§-%f§;
   import § &5§.*;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §#%!§.§ §;
   import §#%!§.§%&F§;
   import §#%!§.§^%c§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&#h§.*;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §-&5§.*;
   import §0!§.§9"u§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §2#x§.*;
   import §3#T§.§5!M§;
   import §4!K§.*;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^%%§;
   import §8$V§.*;
   import §9%W§.§&!P§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §]$v§.§]%_§;
   import §^!]§.MineSetUpEvent;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.Font;
   import flash.utils.ByteArray;
   import org.gestouch.core.gestouch_internal;
   import org.gestouch.gestures.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§!#v§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.facebook.controller.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   use namespace gestouch_internal;
   
   public class §1%b§ extends §2%0§ implements §^%c§
   {
      
      protected static const §@!9§:String = "MortarTurret";
      
      private static const §5M§:int = 100;
      
      protected static const §&>§:int = 2;
      
      protected static const §`!`§:int = 5;
      
      protected static const §%S§:int = 100;
      
      protected var §!"z§:§+%]§;
      
      protected var bar:§%&F§;
      
      protected var §>%M§:Number;
      
      protected var weapon:§;#_§;
      
      protected var dummy:§&"T§;
      
      protected var activated:Boolean = false;
      
      protected var shotsLeft:int = 0;
      
      protected var clipName:String = "MortarTurret";
      
      protected var §7U§:int;
      
      public function §1%b§(param1:Point, param2:§+%]§, param3:String = "", param4:int = -1, param5:int = 100)
      {
         this.§!"z§ = param2;
         super(param1.x,param1.y,0);
         this.shotsLeft = param4;
         §8%g§ = new §9"u§(this,param5,0,0);
         canBeDamaged = true;
         §-$[§ = 30;
         §4!<§ = 30;
         this.bar = new § #3§(param2.squad.getNumber(),param3,this.§7U§);
         Application.scene.addEventListener(§0%v§.EOT,this.§,!l§);
         physParams.§0%m§(0,§`!`§);
         addEventListener(§0%v§.§&!D§,§""0§);
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§&!c§);
         physParams.addForce(§]%G§.§5$r§);
         physParams.§5N§ = §9%1§.§!#6§;
         physParams.§3&I§ = true;
         physicModel = new §;$S§(physParams);
      }
      
      override protected function §8&8§() : void
      {
         §!%8§ = §6#A§.§!&6§(this.clipName);
         this.§7U§ = clip.height >> 1;
         super.§8&8§();
      }
      
      protected function §,!l§(param1:Event) : void
      {
         this.§<#h§();
         if(!this.activated)
         {
            this.activated = §8"%§.§?!W§.§4"m§.activeSquad.getTeamId() != this.§!"z§.squad.getTeamId();
         }
         if(!disposed && this.activated)
         {
            this.§`%V§();
         }
      }
      
      protected function §`%V§() : void
      {
      }
      
      protected function §<#h§() : void
      {
         if(!this.isInfinite && this.shotsLeft <= 0)
         {
            disposed = true;
         }
      }
      
      override protected function §<%8§() : void
      {
         Application.scene.dispatchEvent(new WeaponShootEvent(§+%z§.§0%n§,false,true,§0%v§.DAMAGE_TRIGGER));
      }
      
      override public function §[$u§(param1:Event) : void
      {
         if(Boolean(this.§!"z§) && Boolean(!this.§!"z§.disposed) && §;&9§)
         {
            §'"$§.§]#I§(this.§!"z§,x,y,null,§%S§,§3P§ + 10,§3P§,true);
         }
         super.§[$u§(param1);
         removeEventListener(§0%v§.§&!D§,§""0§);
         Application.scene.removeEventListener(§0%v§.EOT,this.§,!l§);
         if(this.dummy)
         {
            this.dummy.disposed = true;
         }
      }
      
      protected function get isInfinite() : Boolean
      {
         return this.shotsLeft == -1;
      }
      
      public function getBar() : §%&F§
      {
         return this.bar;
      }
      
      public function get owner() : §+%]§
      {
         return this.§!"z§;
      }
   }
}


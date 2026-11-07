package §9%4§
{
   import § #9§.§"$t§;
   import § %f§.§=!z§;
   import §!!!§.*;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"$+§.§ G§;
   import §#"V§.§!&5§;
   import §#%!§.§%&F§;
   import §#%!§.§[N§;
   import §#%!§.§^%c§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§2"B§;
   import §%&6§.§2$v§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#P§.§]!E§;
   import §+$=§.*;
   import §+%S§.§ #R§;
   import §+%S§.§?3§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0!Y§.§#!Z§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%j§.§#!U§;
   import §0%j§.§-,§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2!-§.NewUnitEvent;
   import §2"L§.§,'§;
   import §2#W§.*;
   import §4'§.§!!0§;
   import §4'§.§^"p§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §6%2§.§#"B§;
   import §7!B§.§&"T§;
   import §7!B§.§>"D§;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §8#<§.§!#^§;
   import §8$Z§.*;
   import §<!W§.§#&#§;
   import §<"?§.§7!@§;
   import §<$q§.§"%r§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%E§.§0#G§;
   import §<%E§.§;!y§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §="z§.§9%1§;
   import §=&!§.§]$d§;
   import §=1§.*;
   import §>!_§.§'!&§;
   import §>%S§.§^!V§;
   import §?#g§.§&"P§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?%J§.*;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §^4§.§>"$§;
   import com.greensock.data.TweenLiteVars;
   import config.achievements.§"!&§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextFieldType;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.GetSpecialDeal;
   import ru.pragmatix.wormix.messages.structures.LoginAwardStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   import ru.pragmatix.wormix.weapons.interfaces.§;$'§;
   
   public class §]$Z§ extends §=!z§ implements §;$'§, §^%c§
   {
      
      protected static const §%!y§:int = 5;
      
      protected var §]&#§:§&$2§ = new §&$2§(0);
      
      protected var duration:§&$2§ = new §&$2§(0);
      
      private var bar:§[N§;
      
      private var §+"`§:MovieClip;
      
      private var §2%b§:Number = 0.3;
      
      private var §2$?§:Number = 5;
      
      private var §@"2§:Number = 0;
      
      private var §`%s§:Boolean;
      
      public function §]$Z§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint)
      {
         §=#Y§ = false;
         super(param1,param1.x,param1.y,param2,param3,param4,0.5,§&i§);
         this.bar = new §[N§(param1,"(" + this.duration + ")",50);
         this.bar.§]%d§();
      }
      
      override protected function §+_§() : void
      {
         super.§+_§();
         physParams.§3&I§ = true;
      }
      
      override public function explode() : void
      {
         if(disposed)
         {
            return;
         }
         if(this.§?!f§)
         {
            this.setup();
         }
         else
         {
            this.§@$ §();
         }
      }
      
      private function §@$ §() : void
      {
         if(!disposed)
         {
            inflictDamage(null,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value);
            §1"-§.§&!C§(x,y,12);
            §1"-§.explode(§;n§.§8!-§,this.x,this.y,paramSet.explosionRadius.value,§`!v§.§["s§);
            disposed = true;
         }
      }
      
      override protected function §^$e§(param1:Event) : void
      {
         super.§^$e§(param1);
         if(this.§?!f§)
         {
            this.setup();
         }
         else
         {
            this.explode();
         }
      }
      
      override protected function §1$Z§(param1:Event) : void
      {
         if(disposed)
         {
            return;
         }
         if(this.§?!f§)
         {
            this.setup();
         }
         else
         {
            §##[§ = §&i§;
            super.§1$Z§(param1);
         }
      }
      
      protected function setup() : void
      {
         setSpeedXY(0,0);
         stable = true;
         y = this.§0"U§();
         §=s§ = 0;
         §##[§ = -1;
         §!%8§.rotation = 0;
         this.duration.value = §%!y§;
         physParams.§0#0§ = §<#`§.NONE;
         physParams.§5N§ = §9%1§.§>#T§;
         §@%;§.play(§`!v§.§=%2§(§>!P§));
         Application.scene.addEventListener(§0%v§.UNIT_DEACTIVATION,this.§8$n§);
         if(!this.§+"`§)
         {
            this.§+"`§ = §6#A§.§!&6§(§!%8§.name);
            Application.scene.§=P§().addChild(this.§+"`§);
            this.§+"`§.mouseChildren = this.§+"`§.mouseEnabled = false;
            §§push(this.§+"`§);
            §§push(this.§+"`§);
            var _temp_1:* = §!%8§.scaleX;
            §§pop().scaleX = §§pop().scaleY = §!%8§.scaleX;
            §!%8§.visible = false;
         }
         this.§`%s§ = true;
         dispatchEvent(new MineSetUpEvent(this,false));
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(this.§+"`§)
         {
            this.§@"2§ += this.§2%b§;
            this.§+"`§.x = §!%8§.x;
            this.§+"`§.y = §!%8§.y + this.§@"2§ + 5;
            if(Math.abs(this.§@"2§) > this.§2$?§)
            {
               this.§2%b§ *= -1;
            }
         }
      }
      
      protected function §8$n§(param1:Event) : void
      {
         y = this.§0"U§();
         if(this.bar.§""+§())
         {
            this.bar.§>$T§();
         }
         if(this.§]&#§.value >= this.duration.value)
         {
            disposed = true;
         }
         this.bar.§["n§("(" + int(this.duration.value - this.§]&#§.value) + ")");
      }
      
      override public function §[$u§(param1:Event) : void
      {
         if(this.§+"`§)
         {
            this.§+"`§.parent.removeChild(this.§+"`§);
         }
         Application.scene.removeEventListener(§0%v§.UNIT_DEACTIVATION,this.§8$n§);
         super.§[$u§(param1);
      }
      
      private function §0"U§() : Number
      {
         return Application.scene.height - Application.scene.§#%0§();
      }
      
      public function §8#H§() : int
      {
         return 0;
      }
      
      public function getBar() : §%&F§
      {
         return this.bar;
      }
      
      protected function get §?!f§() : Boolean
      {
         if(disposed)
         {
            return false;
         }
         if(!Application.scene.§""9§())
         {
            return false;
         }
         return y >= this.§0"U§() && x > 0 && x < Application.scene.width;
      }
      
      public function get §'"k§() : Boolean
      {
         return this.§`%s§;
      }
   }
}


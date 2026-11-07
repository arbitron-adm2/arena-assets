package §;"9§
{
   import § !8§.§`!d§;
   import § &5§.§0&$§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+5§.§^$[§;
   import §0!§.§8$Y§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §1&-§.§6"`§;
   import §2!-§.DamageEvent;
   import §2"L§.*;
   import §3#T§.*;
   import §4#`§.*;
   import §4$b§.§6!G§;
   import §4f§.§-&§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §=#g§.§&%5§;
   import §?$K§.§3#j§;
   import §?$K§.§=z§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §;"c§ extends §&"T§
   {
      
      private static const § "h§:String = "Generator";
      
      private static const §6!k§:uint = 100;
      
      private static const § %g§:uint = 0;
      
      private static const §,6§:uint = 20;
      
      public var charge:int = 100;
      
      private var §&%h§:MovieClip;
      
      private var §]%9§:uint;
      
      private var enabled:MovieClip;
      
      private var §0#<§:MovieClip;
      
      private var owner:§+%]§;
      
      public function §;"c§(param1:§+%]§, param2:Number, param3:Number)
      {
         super();
         canBeDamaged = true;
         this.owner = param1;
         §,q§.push(§-&§.IMMOVABLE);
         clip = §6#A§.§!&6§(§ "h§);
         physParams.§5N§ = §9%1§.§!#6§;
         physParams.§0#0§ = §<#`§.§&!c§;
         stable = true;
         this.x = param2;
         this.y = param3;
         this.§&%h§ = MovieClip(clip.getChildByName("chargeValue"));
         this.enabled = MovieClip(clip.getChildByName("generatorA"));
         this.§0#<§ = MovieClip(clip.getChildByName("generatorP"));
         this.§0#<§.visible = false;
         this.§]%9§ = this.§&%h§.width;
         this.§1"F§();
         addEventListener(§0%v§.§&!D§,this.§""0§);
         physicModel.addEventListener(§9#1§.§3%G§,this.§^"m§);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      public function get §[!Q§() : Boolean
      {
         return this.charge >= §6!k§;
      }
      
      public function get §@%b§() : Boolean
      {
         return this.charge > §,6§;
      }
      
      private function §1"F§() : void
      {
         this.§&%h§.width = this.§]%9§ * this.charge / 100;
         this.§>!i§();
      }
      
      public function §?"+§(param1:uint) : void
      {
         this.charge += param1;
         this.charge = this.charge > §6!k§ ? int(§6!k§) : this.charge;
         this.§1"F§();
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         if(param1.source.owner != this.owner)
         {
            this.charge = this.charge < param1.power ? int(§ %g§) : int(this.charge - param1.power);
            this.§1"F§();
         }
      }
      
      private function §>!i§() : void
      {
         this.enabled.visible = this.§@%b§;
         this.§0#<§.visible = !this.§@%b§;
      }
      
      private function §^"m§(param1:Event) : void
      {
         stable = true;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         physicModel.removeEventListener(§9#1§.§3%G§,this.§^"m§);
         removeEventListener(§0%v§.§&!D§,this.§""0§);
         super.§[$u§(param1);
      }
   }
}


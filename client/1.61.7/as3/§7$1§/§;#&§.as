package §7$1§
{
   import § #m§.§;#^§;
   import § #m§.§[&H§;
   import §!$d§.§<$c§;
   import §"%H§.*;
   import §##y§.§9§;
   import §#%!§.§%&F§;
   import §#%!§.§[N§;
   import §#%!§.§^%c§;
   import §%"1§.§7#P§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §%# §.§##U§;
   import §%&6§.§0%2§;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#E§.§4##§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §-@§.§0"e§;
   import §0%[§.§0%§;
   import §0%z§.§,$h§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §2#s§.*;
   import §4$b§.§6!G§;
   import §4f§.§-&§;
   import §4u§.§[%u§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §="z§.*;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^#[§.§&$2§;
   import §`"p§.*;
   import §`%&§.§3!D§;
   import config.achievements.*;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§5%?§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetBundles;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.server.GetBundlesResult;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.interfaces.§;$'§;
   
   public class §;#&§ extends §;$n§ implements §;$'§, §^%c§
   {
      
      private static const § &G§:§&$2§ = new §&$2§(10);
      
      private static const §9!"§:int = 400;
      
      private var §[H§:int;
      
      private var §;P§:§&$2§;
      
      private var §[&D§:§7#P§;
      
      private var §4%j§:MovieClip;
      
      private var §;!M§:MovieClip;
      
      private var §"!N§:String;
      
      private var activatedAmmoClipName:String;
      
      private var bar:§[N§;
      
      private var sphere:MovieClip;
      
      private var invertedForce:Boolean;
      
      private var increasedForce:Boolean;
      
      private var staticPlacement:Boolean;
      
      private var §;I§:Boolean;
      
      public function §;#&§(param1:§+%]§, param2:int, param3:int, param4:§5$n§)
      {
         super(param1,param2,param3,param4,true,true,1);
         this.§;P§ = new §&$2§(this.§8#H§() + § &G§.value);
         §##9§.value = 0;
         §=$`§.value = §9!"§;
         this.§[H§ = 25;
         Application.scene.addEventListener(§0%v§.EOT,this.§^#P§);
         this.bar = new §[N§(param1,"(" + this.§;P§.value + ")",0);
         if(§5%g§(§-&§.CAPTURABLE))
         {
            §,q§.splice(§,q§.indexOf(§-&§.CAPTURABLE),1);
         }
      }
      
      override protected function initialize(param1:Point, param2:String = null) : void
      {
         super.initialize(param1,param2);
         if(!§!%8§)
         {
            §!%8§ = new MovieClip();
         }
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(disposed)
         {
            return;
         }
         this.§^#d§();
      }
      
      override protected function §^#d§() : §+%]§
      {
         var _loc2_:Vector.<§&"T§> = null;
         var _loc4_:§&"T§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(this.staticPlacement && !this.§;I§)
         {
            return null;
         }
         var _loc1_:uint = 0;
         _loc2_ = Application.scene.§@$I§.§;%a§.§'#&§(§<#`§.§^&0§);
         var _loc3_:Vector.<§&"T§> = §<H§.§3%'§(x,y,§=$`§.value,_loc2_);
         for each(_loc4_ in _loc3_)
         {
            if(!_loc4_.disposed && !_loc4_.stable && _loc4_ != this)
            {
               if(!_loc4_.§5%g§(§-&§.IGNORE_MAGNET))
               {
                  _loc5_ = §^$y§.distance(x - _loc4_.x,y - _loc4_.y);
                  _loc6_ = -Math.sqrt((§=$`§.value - _loc5_) / this.§[H§);
                  if(this.invertedForce)
                  {
                     _loc6_ *= -1;
                  }
                  _loc4_.§6"O§(Math.atan2(y - _loc4_.y,x - _loc4_.x),_loc6_);
                  _loc1_++;
               }
            }
         }
         if(this.§[&D§ == null && _loc1_ > 0)
         {
            this.§[&D§ = §@%;§.play(§`!v§.§+$a§);
         }
         if(this.§[&D§ != null && _loc1_ == 0)
         {
            this.§[&D§.stop();
            this.§[&D§ = null;
         }
         return null;
      }
      
      override public function explode() : void
      {
         var _loc1_:§5$n§ = null;
         if(disposed)
         {
            return;
         }
         if(stable)
         {
            return;
         }
         if(!this.staticPlacement)
         {
            return;
         }
         _loc1_ = paramSet.clone();
         _loc1_.ammoClassName = this.activatedAmmoClipName;
         var _loc2_:§;#&§ = new §;#&§(owner,x,y,_loc1_);
         _loc2_.setDuration(this.§;P§.value);
         if(this.increasedForce)
         {
            _loc2_.§0$K§();
         }
         if(this.invertedForce)
         {
            _loc2_.§4#D§();
         }
         _loc2_.§0!x§(true);
         _loc2_.§'"j§(this.§"!N§);
         _loc2_.clip.rotation = 0;
         disposed = true;
      }
      
      private function §1$H§() : void
      {
         if(§,q§.indexOf(§-&§.CAPTURABLE) > -1)
         {
            §,q§.splice(§,q§.indexOf(§-&§.CAPTURABLE),1);
         }
         physicModel.addEventListener(§9#1§.§3%G§,this.§^"m§);
         physParams.§0#0§ = §<#`§.NONE;
         physParams.§5N§ = §9%1§.§>#T§;
         physParams.§"%<§(§]%G§.§="u§);
         physParams.removeAllForces();
         setSpeedXY(0,0);
         stable = true;
         this.§;I§ = true;
      }
      
      private function §^"m§(param1:Event) : void
      {
         setSpeedXY(0,0);
         stable = true;
      }
      
      private function §^#P§(param1:Event) : void
      {
         if(--this.§;P§.value <= 0)
         {
            disposed = true;
            §1"-§.explode(§;n§.§7q§,x,y,10,§`!v§.§>l§);
         }
         else
         {
            this.bar.§["n§("(" + this.§;P§.value + ")");
         }
      }
      
      public function §8#H§() : int
      {
         return owner.bonuses.getStatValue(Bonus.DEVICE_DURATION) + owner.bonuses.getStatValue(Bonus.WEAPON_DEVICE_DURATION);
      }
      
      override public function §[$u§(param1:Event) : void
      {
         physicModel.removeEventListener(§9#1§.§3%G§,this.§^"m§);
         super.§[$u§(param1);
         if(this.§4%j§)
         {
            §!%8§.removeChild(this.§4%j§);
            §3!3§.§>!j§(null,this.§4%j§);
            this.§4%j§ = null;
         }
         if(this.invertedForce)
         {
            if(this.§;!M§)
            {
               §!%8§.removeChild(this.§;!M§);
               §3!3§.§>!j§(null,this.§;!M§);
               this.§;!M§ = null;
            }
            §!%8§.removeEventListener(MouseEvent.MOUSE_OVER,this.§]%l§);
            §!%8§.removeEventListener(MouseEvent.MOUSE_OUT,this.§-$K§);
         }
         if(this.§[&D§ != null)
         {
            this.§[&D§.stop();
            this.§[&D§ = null;
         }
         Application.scene.removeEventListener(§0%v§.EOT,this.§^#P§);
      }
      
      override public function §9$r§() : int
      {
         return -1;
      }
      
      public function getBar() : §%&F§
      {
         return this.bar;
      }
      
      override protected function §^$e§(param1:Event) : void
      {
         super.§^$e§(param1);
         if(this.staticPlacement && !disposed && !stable)
         {
            this.explode();
         }
      }
      
      public function setDuration(param1:int) : void
      {
         this.§;P§.value = param1;
         this.bar.§["n§("(" + this.§;P§.value + ")");
      }
      
      public function §0$K§() : void
      {
         this.increasedForce = true;
         this.§[H§ = 1;
      }
      
      public function §4#D§() : void
      {
         § "H§(physicModel).bounceCoeff = 0;
         this.invertedForce = true;
         this.§[H§ = 1;
      }
      
      public function §0!x§(param1:Boolean = false) : void
      {
         this.staticPlacement = true;
         §+!x§ = true;
         if(param1)
         {
            this.§1$H§();
         }
      }
      
      public function §0X§(param1:String) : void
      {
         this.activatedAmmoClipName = param1;
         if(param1.indexOf("Mech") > -1)
         {
            §`4§ = §]$S§;
         }
      }
      
      public function §'"j§(param1:String) : void
      {
         this.§"!N§ = param1;
         if(!this.staticPlacement || this.§;I§)
         {
            this.§"%j§();
         }
      }
      
      private function §"%j§() : void
      {
         §@%;§.play(§`!v§.§@"6§);
         this.§4%j§ = §1"-§.§ & §(this.§"!N§);
         this.§4%j§.mouseEnabled = false;
         this.§4%j§.mouseChildren = false;
         §!%8§.addChild(this.§4%j§);
         if(this.invertedForce)
         {
            this.§;!M§ = §1"-§.§ & §("SingularFieldRadius");
            this.§;!M§.width = this.§;!M§.height = §=$`§.value * 2;
            this.§;!M§.mouseEnabled = false;
            this.§;!M§.mouseChildren = false;
            this.§;!M§.visible = false;
            §!%8§.mouseEnabled = true;
            §!%8§.mouseChildren = true;
            §!%8§.addChild(this.§;!M§);
            §!%8§.addEventListener(MouseEvent.MOUSE_OVER,this.§]%l§);
            §!%8§.addEventListener(MouseEvent.MOUSE_OUT,this.§-$K§);
         }
      }
      
      private function §-$K§(param1:MouseEvent) : void
      {
         this.§;!M§.visible = false;
      }
      
      private function §]%l§(param1:MouseEvent) : void
      {
         this.§;!M§.visible = true;
      }
   }
}


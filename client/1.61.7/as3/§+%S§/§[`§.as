package §+%S§
{
   import § #9§.§"$t§;
   import §!L§.§+"'§;
   import §"!C§.*;
   import §%L§.§%%w§;
   import §&#h§.§-"F§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0!§.*;
   import §0%[§.§1%"§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §2#x§.*;
   import §4$b§.§6!G§;
   import §4'§.§`"q§;
   import §65§.§%%o§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §9%W§.§&!P§;
   import §=$#§.§1!$§;
   import §=7§.*;
   import §@!N§.§3!3§;
   import §@<§.§+%]§;
   import §[" §.*;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§&$2§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.*;
   import flash.geom.Point;
   import flash.net.*;
   import flash.utils.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §[`§ extends §%%o§
   {
      
      public static const NAME:String = "REDUCTION_ATTACK_DEBUFF";
      
      public static const §%!y§:int = 1;
      
      private var count:§&$2§ = new §&$2§(0);
      
      private var §@#w§:§&$2§ = new §&$2§(0);
      
      private var effectClip:MovieClip;
      
      private var §?#B§:Boolean = false;
      
      private var §1!6§:Boolean = false;
      
      public function §[`§(param1:int, param2:int = 1)
      {
         super(NAME,-1,param1);
         this.count.value = param2;
      }
      
      override protected function §5#F§() : void
      {
         if(!this.§?#B§)
         {
            this.§?#B§ = true;
            if(Boolean(unit) && !unit.disposed)
            {
               this.effectClip = §6#A§.§!&6§(§1"-§.§9$i§);
               unit.§#"%§(this.effectClip,0,0,false);
            }
         }
         this.§@#w§.value = getValue();
         unit.attributes.attack.§5#l§(-this.§@#w§.value);
         unit.addEventListener(§0%v§.UNIT_ACTIVATION,this.§"&1§);
         if(this.count.value == 0)
         {
            unit.buffs.§6C§(NAME);
         }
      }
      
      override protected function §0&"§() : void
      {
         if(!§&%M§)
         {
            if(this.effectClip)
            {
               unit.§'$§(this.effectClip);
            }
            this.effectClip = null;
            this.§?#B§ = false;
         }
         unit.attributes.attack.§5#l§(this.§@#w§.value);
         unit.removeEventListener(§0%v§.UNIT_ACTIVATION,this.§"&1§);
         Application.scene.removeEventListener(§0%v§.EOT,this.§,!l§);
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §[`§(getValue(),this.count.value));
      }
      
      override protected function onNextTurn(param1:Event) : void
      {
         this.§1!6§ = false;
         super.onNextTurn(param1);
      }
      
      private function §"&1§(param1:Event) : void
      {
         if(!this.§1!6§)
         {
            this.§1!6§ = true;
            if(this.count.value > 0)
            {
               --this.count.value;
            }
            if(this.count.value == 0)
            {
               Application.scene.addEventListener(§0%v§.EOT,this.§,!l§);
            }
         }
      }
      
      private function §,!l§(param1:Event) : void
      {
         if(!§&%M§)
         {
            clear();
         }
      }
   }
}


package §2#H§
{
   import § %?§.§;!T§;
   import §!$d§.§<$c§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%# §.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§6S§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§;!4§;
   import §,"v§.§9%d§;
   import §0!§.*;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2"L§.§,!t§;
   import §2#i§.§+%z§;
   import §2#s§.*;
   import §2B§.§#&E§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§;#_§;
   import §8#o§.§1@§;
   import §<%k§.§`!v§;
   import §="z§.§6a§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §[!`§.§ &-§;
   import §^#[§.§&$2§;
   import §^-§.Rope;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §^!J§ extends §%%o§
   {
      
      public static const NAME:String = "PROTECTION_DOME";
      
      private static const §9!"§:§&$2§ = new §&$2§(200);
      
      private var §1!j§:§6S§;
      
      private var count:int = 0;
      
      public function §^!J§(param1:§6S§, param2:uint)
      {
         super(NAME,-1,param2);
         this.§1!j§ = param1;
      }
      
      override protected function §5#F§() : void
      {
         if(this.§1!j§)
         {
            this.§1!j§.appear(unit);
         }
         Application.scene.addEventListener(§0%v§.FRAME,this.onFrame);
      }
      
      override protected function §0&"§() : void
      {
         if(!§&%M§)
         {
            Application.scene.removeEventListener(§0%v§.FRAME,this.onFrame);
            if(this.§1!j§)
            {
               this.§1!j§.§=$5§();
               this.§1!j§ = null;
            }
         }
      }
      
      private function onFrame(param1:Event) : void
      {
         var _loc3_:§6#I§ = null;
         var _loc2_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([§6#I§]);
         _loc2_ = §<H§.§3%'§(unit.x,unit.y,§9!"§.value,_loc2_);
         for each(_loc3_ in _loc2_)
         {
            if(Boolean(_loc3_.owner && _loc3_.owner.squad.getTeamId() != unit.squad.getTeamId()) && Boolean(!(_loc3_ is Rope)) && !(_loc3_ is § &-§))
            {
               §1"-§.explode(§;n§.§8!-§,_loc3_.x,_loc3_.y,26);
               _loc3_.disposed = true;
               var _loc6_:§^!J§ = this;
               var _temp_5:* = _loc6_.count;
               var _loc7_:Number = _temp_5 + 1;
               _loc6_.count = _loc7_;
               if(_temp_5 >= getValue())
               {
                  clear();
                  return;
               }
            }
         }
      }
   }
}


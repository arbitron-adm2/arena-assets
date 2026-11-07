package §]#b§
{
   import § "L§.§1%b§;
   import § m§.§9!^§;
   import §"!C§.§3#n§;
   import §"%H§.§`"w§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§7#P§;
   import §%"1§.§=#?§;
   import §%&6§.§8!`§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+#U§.§'#w§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#o§.§-#d§;
   import §2"L§.§^$y§;
   import §2#H§.§#$A§;
   import §3#T§.§;'§;
   import §3#T§.§^!P§;
   import §3#a§.§-#M§;
   import §3%J§.§;&<§;
   import §4!x§.§@& §;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.*;
   import §9"-§.§?!s§;
   import §9%W§.§&!P§;
   import §;$8§.§6"E§;
   import §<$2§.§<%>§;
   import §="z§.*;
   import §?#g§.Race;
   import §@!i§.§<#&§;
   import §@$§.§`&C§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §]^§.*;
   import §^!"§.§^$F§;
   import §^#[§.§?"&§;
   import §`"p§.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.media.SoundTransform;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class §["J§ extends §8!d§
   {
      
      private static const §]!Q§:Array = [§8!`§,§;'§,§^!P§,§1%b§];
      
      private var §>v§:Vector.<§&"T§>;
      
      public function §["J§(param1:§+%]§, param2:§5$n§, param3:§5$n§, param4:Number, param5:uint)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      private static function §@%'§(param1:§&"T§) : Boolean
      {
         var _loc2_:Class = null;
         for each(_loc2_ in §]!Q§)
         {
            if(param1 is _loc2_)
            {
               return true;
            }
         }
         return false;
      }
      
      override protected function onCollide(param1:CollisionEvent) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:Vector.<§&"T§> = null;
         var _loc4_:§&"T§ = null;
         if(owner.squad.isLocal())
         {
            this.§>v§ = new Vector.<§&"T§>(0);
            _loc3_ = Application.scene.§@$I§.§;%a§.§"L§(§]!Q§);
            _loc3_ = §<H§.§3%'§(x,y,paramSet.damageRadius.value,_loc3_);
            for each(_loc4_ in _loc3_)
            {
               if(§@%'§(_loc4_))
               {
                  if(_loc4_ is §6#I§)
                  {
                     _loc2_ = §6#I§(_loc4_).owner;
                  }
                  else if(_loc4_ is §1%b§)
                  {
                     _loc2_ = §1%b§(_loc4_).owner;
                  }
                  if(_loc2_)
                  {
                     if(!owner.§+&,§(_loc2_) && !_loc2_.squad.isAi())
                     {
                        _loc4_.addEventListener(§0%v§.DISPOSED,this.§[#7§);
                        this.§>v§.push(_loc4_);
                     }
                     _loc2_ = null;
                  }
               }
            }
         }
         super.onCollide(param1);
         §-#M§.§62§(owner,x,y,§`!C§ - 100);
      }
      
      private function §[#7§(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         param1.target.removeEventListener(§0%v§.DISPOSED,this.§[#7§);
         if(this.§>v§)
         {
            _loc2_ = this.§>v§.indexOf(param1.target);
            if(_loc2_ > -1)
            {
               this.§>v§.splice(_loc2_,1);
            }
         }
         §8"%§.§?!W§.§7%@§.§'"B§(§3#n§.§4!"§);
      }
      
      override protected function §1!Z§() : void
      {
         var _loc1_:§&"T§ = null;
         if(this.§>v§)
         {
            for each(_loc1_ in this.§>v§)
            {
               _loc1_.removeEventListener(§0%v§.DISPOSED,this.§[#7§);
            }
            this.§>v§ = null;
         }
      }
   }
}


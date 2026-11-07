package §+5§
{
   import §!!!§.§7&%§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §"$+§.§^$`§;
   import §"%H§.§'%u§;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §##y§.§9§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §&"c§.§5$n§;
   import §&#E§.§4##§;
   import §&#h§.*;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$j§.QuestGiftItem;
   import §+%S§.§ #R§;
   import §+&<§.*;
   import §,!f§.*;
   import §-!U§.*;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §1#p§.§"Z§;
   import §2!-§.NewUnitEvent;
   import §2"L§.*;
   import §2#H§.§!%C§;
   import §2#H§.§0"u§;
   import §2#V§.§-#U§;
   import §2#i§.§+%z§;
   import §2B§.§#&E§;
   import §3"@§.§#$O§;
   import §3#a§.§-#M§;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §7!B§.§1"?§;
   import §7!B§.§6#I§;
   import §7!B§.§>"D§;
   import §7"Q§.§0$L§;
   import §7$t§.§=?§;
   import §7$t§.§^$E§;
   import §<$2§.§<%>§;
   import §<%k§.§`!v§;
   import §="z§.§7%-§;
   import §="z§.§9%1§;
   import §?"[§.*;
   import §?#g§.Race;
   import §?$7§.§+l§;
   import §?$7§.§8"e§;
   import §?$K§.§=z§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§'#E§;
   import §@!i§.§<!9§;
   import §@!i§.§<,§;
   import §@#K§.§-§;
   import §@$§.§6$[§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §`v§.§2&H§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import config.achievements.§^t§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.ServerCommands;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class Boulder extends §6#I§
   {
      
      private static const §&D§:uint = 20;
      
      private static const §6$E§:uint = 25;
      
      private static const §7-§:uint = 45;
      
      private static const §+!@§:uint = 5;
      
      private static const §2;§:Number = 1.4;
      
      private static const §,"D§:Number = 15;
      
      private static const §>9§:Number = 8;
      
      private static const §9%y§:Number = 1.8;
      
      protected var paramSet:§5$n§;
      
      private var targets:Vector.<§+%]§> = new Vector.<§+%]§>(0);
      
      public function Boulder(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:int, param6:int, param7:Number, param8:int, param9:Boolean)
      {
         var _loc10_:Boolean = false;
         super(param1,param3,param4,false);
         _loc10_ = param8 == int.MIN_VALUE;
         var _loc11_:Point = _loc10_ ? new Point(param3,param4) : param1.weapon.getBarrelPoint(param7);
         initialize(_loc11_,param2.ammoClassName);
         this.paramSet = param2;
         if(_loc10_)
         {
            setSpeedXY(param5,param6);
         }
         else
         {
            §^"F§(param7,param8);
         }
         this.targets.push(param1);
         Application.scene.§@$I§.§1$+§(this);
         §@%;§.play(§`!v§.§7#O§);
         §,q§.push(§-&§.IGNORE_MAGNET);
         if(param1.squad.isLocal())
         {
            _customSource = §<$c§.§ !=§(§+%z§.BOULDER);
         }
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§^&0§);
         physParams.addForce(§]%G§.§5$r§);
         physParams.§5N§ = §9%1§.§&!A§ + §9%1§.§@%h§;
         physicModel = new §7%-§(physParams,§&D§,§+!@§);
         physicModel.addEventListener(§9#1§.§>&9§,this.§`&,§);
         physicModel.addEventListener(§9#1§.§@"-§,this.§^$e§);
      }
      
      protected function §`&,§(param1:Event) : void
      {
         if(!disposed && speed > §>9§)
         {
            §@%;§.play(§`!v§.§5%;§);
         }
      }
      
      protected function §^$e§(param1:Event) : void
      {
         this.dispose();
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         clip.rotation = rotation;
         if(speed > §>9§)
         {
            this.§!$-§();
         }
         if(§>#9§.§3m§(x,y,true,§&D§,true))
         {
            this.dispose();
         }
      }
      
      private function §!$-§() : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:Array = null;
         var _loc4_:Vector.<§&"T§> = null;
         var _loc5_:Vector.<§&"T§> = null;
         var _loc6_:§&"T§ = null;
         var _loc7_:Boolean = false;
         var _loc1_:Vector.<§+%]§> = new Vector.<§+%]§>(0);
         for each(_loc2_ in this.targets)
         {
            if(!_loc2_.disposed && §<H§.§8!P§(_loc2_,x,y,§7-§,true))
            {
               _loc1_.push(_loc2_);
            }
         }
         this.targets = _loc1_;
         _loc3_ = [§+%]§,§6#I§,§-#8§,§1"?§,§>"D§];
         _loc4_ = Application.scene.§@$I§.§;%a§.§"L§(_loc3_);
         _loc5_ = §<H§.§3%'§(x,y,§6$E§,_loc4_);
         for each(_loc6_ in _loc5_)
         {
            if(_loc6_ != this && !_loc6_.disposed)
            {
               _loc2_ = _loc6_ as §+%]§;
               _loc7_ = this.targets.indexOf(_loc2_) == -1;
               if(!_loc2_ || _loc7_)
               {
                  this.§8%"§(_loc6_);
               }
               if(Boolean(_loc2_) && _loc7_)
               {
                  this.targets.push(_loc2_);
               }
            }
         }
      }
      
      private function §8%"§(param1:§&"T§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         inflictDamage(param1,speed * §9%y§,0,0,true,false,true,param1 is §+%]§ ? _customSource : null);
         if(Math.abs(speedY) < Math.abs(speedX) * 3 && (!(param1 is §+%]§) || !§+%]§(param1).buffs.hasBuff(§=z§.NAME)))
         {
            _loc2_ = §="j§(owner);
            _loc3_ = Math.min(speed / §2;§,§,"D§);
            _loc4_ = (_loc3_ + _loc2_) * -1;
            §'"$§.§<#j§(param1,0,_loc4_,true);
         }
         §@%;§.play(§`!v§.§+!+§);
      }
      
      protected function dispose() : void
      {
         §1"-§.explode(§;n§.§7q§,x,y,clip.width,§1#t§);
         disposed = true;
      }
   }
}


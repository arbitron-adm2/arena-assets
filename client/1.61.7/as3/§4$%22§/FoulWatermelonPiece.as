package §4$"§
{
   import § !8§.§`!d§;
   import §!K§.§"%$§;
   import §"!C§.*;
   import §#"V§.§8"@§;
   import §##y§.CollisionEvent;
   import §#%!§.§[N§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.§-"F§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §-@§.*;
   import §0!§.§9"u§;
   import §1#p§.§"Z§;
   import §2#i§.§+%z§;
   import §3#T§.*;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4f§.§-&§;
   import §5!,§.§9$h§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §<%E§.§'$g§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?#g§.§&"P§;
   import §?$K§.§3#j§;
   import §@!N§.§4"0§;
   import §@<§.§+%]§;
   import §]$J§.§#"s§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.geom.Point;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class FoulWatermelonPiece extends WatermelonPiece
   {
      
      private static const § !6§:int = 5;
      
      public function FoulWatermelonPiece(param1:§+%]§, param2:int, param3:int, param4:Number, param5:uint, param6:§5$n§)
      {
         super(param1,param2,param3,param4,param5,param6);
         _damageType = §&!E§.POISON;
      }
      
      override protected function attachTrail() : void
      {
         if(§8"%§.§&S§.§-p§())
         {
            §1"-§.§;%k§(this,§;n§.§&#b§,15,2);
         }
      }
      
      override protected function onCollide(param1:CollisionEvent) : void
      {
         var _loc5_:§+%]§ = null;
         inflictDamage(param1.other,paramSet.damage.value,paramSet.damageRadius.value,paramSet.explosionRadius.value);
         disposed = true;
         §1"-§.explode(§;n§.§8%a§,x,y,paramSet.damageRadius.value,§`!v§.§>l§);
         var _loc2_:int = owner ? owner.bonuses.getStatValue(Bonus.POISONING_ADDITION) : 0;
         var _loc3_:int = § !6§ + _loc2_;
         var _loc4_:Vector.<§+%]§> = §<H§.§5"]§(x,y,paramSet.damageRadius.value);
         for each(_loc5_ in _loc4_)
         {
            §7%g§.§>!%§(_loc5_,owner,_loc3_);
         }
      }
   }
}


package §&!@§
{
   import § !8§.§`!d§;
   import § K§.§^#V§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%# §.§##U§;
   import §&!m§.§-$6§;
   import §&"c§.§5$n§;
   import §&#E§.MsgBoxSocialSelect;
   import §'!Z§.§1"-§;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §+%Q§.§+$#§;
   import §,$J§.§,$O§;
   import §-!U§.§&%j§;
   import §-%B§.*;
   import §0!Y§.§#!Z§;
   import §0%[§.§%"'§;
   import §1#p§.§2=§;
   import §2!-§.DamageEvent;
   import §2#x§.§]s§;
   import §4!!§.§6$V§;
   import §4u§.§9!]§;
   import §5%S§.§>&-§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §7$t§.§[!X§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8#<§.§!#^§;
   import §8#`§.§8!&§;
   import §8#a§.*;
   import §8#o§.§#$s§;
   import §9$-§.§!$W§;
   import §<!W§.§1N§;
   import §<!W§.§=!6§;
   import §<"?§.§6"d§;
   import §<%E§.§6$=§;
   import §<%k§.§`!v§;
   import §=&6§.§8c§;
   import §?"[§.§6#o§;
   import §?$7§.§+#N§;
   import §?$K§.§@$J§;
   import §?%J§.*;
   import §?>§.§0!7§;
   import §@!N§.§""L§;
   import §@!N§.§&#Z§;
   import §@!i§.§!m§;
   import §@!i§.§5%8§;
   import §@%I§.§2R§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §[#q§.§",§;
   import §]$&§.§3$%§;
   import §^#[§.§&$2§;
   import §`%c§.*;
   import §`v§.§!V§;
   import config.achievements.BossAchieves;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.*;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.common.post.§##Z§;
   import ru.pragmatix.wormix.social.facebook.controller.§8"x§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   
   public class §!6§ extends §6"d§
   {
      
      public static const REAGENTS:§&$2§ = new §&$2§(40);
      
      public static const §#!!§:uint = 1;
      
      public static const §@%P§:uint = 2;
      
      public static const §,!=§:uint = 3;
      
      public function §!6§()
      {
         super(94);
      }
      
      override public function getId() : int
      {
         return §+#N§.§[<§;
      }
      
      override protected function §4#d§() : void
      {
         §6%D§ = new <§-"o§>[new §`"]§()];
      }
      
      override protected function §2!9§() : void
      {
         super.§2!9§();
         §5"N§ = [§""L§.§6$6§([mapRecord.§8$2§[0],mapRecord.§8$2§[7],mapRecord.§8$2§[5],mapRecord.§8$2§[3],mapRecord.§8$2§[1]]),[mapRecord.§8$2§[2]],[mapRecord.§8$2§[4],mapRecord.§8$2§[6],mapRecord.§8$2§[8]]];
      }
      
      override protected function § %G§(param1:§7%K§) : void
      {
         var _loc2_:§2R§ = null;
         var _loc3_:§2R§ = null;
         var _loc4_:§2R§ = null;
         if(param1.code == §#!!§)
         {
            _loc2_ = §]%!§(BossAchieves.ALCHEMIST_EMPLOYEE);
            if(_loc2_.available)
            {
               §=$I§(_loc2_,REAGENTS.value);
            }
         }
         else if(param1.code == §@%P§)
         {
            _loc3_ = §]%!§(BossAchieves.ALCHEMIST_ELEMENTS);
            if(_loc3_.available)
            {
               _loc3_.§#"!§();
               §5X§(_loc3_);
            }
         }
         else if(param1.code == §,!=§)
         {
            _loc4_ = §]%!§(BossAchieves.ALCHEMIST_SAFETY);
            if(_loc4_.available)
            {
               _loc4_.§#"!§();
               §5X§(_loc4_);
            }
         }
      }
      
      override protected function §'G§() : void
      {
         §]%!§(BossAchieves.ALCHEMIST_SAFETY).§,%,§();
         §]%!§(BossAchieves.ALCHEMIST_ELEMENTS).§,%,§();
      }
   }
}


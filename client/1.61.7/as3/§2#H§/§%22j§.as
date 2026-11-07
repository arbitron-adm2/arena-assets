package §2#H§
{
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"%H§.§1! §;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§6S§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§2&>§;
   import §+%S§.§["4§;
   import §+%S§.§[0§;
   import §-&5§.*;
   import §-8§.§3!x§;
   import §0%[§.§0%§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.§2=§;
   import §1A§.§#"§;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §4!!§.§!%n§;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §9"-§.§?!s§;
   import §9%W§.§`"y§;
   import §<!W§.§!"+§;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §=&6§.*;
   import §>%I§.§-#f§;
   import §>%S§.§^!V§;
   import §?$7§.*;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^#[§.§?"&§;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[%l§;
   import ru.pragmatix.wormix.messages.client.EndTurn;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardStructure;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.messages.structures.ReconnectToSimpleBattleResultStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §"j§ extends §,"R§
   {
      
      public static const NAME:String = "QUEEN_ABSORB_REVENGE_BUFF";
      
      private static const §`#b§:uint = 10;
      
      private const §&#a§:§#"§ = new §#"§(§`#b§);
      
      public function §"j§(param1:§6S§)
      {
         super(param1,NAME);
      }
      
      override protected function §5#F§() : void
      {
         super.§5#F§();
         §@%;§.play(§`!v§.§+Q§);
      }
      
      override protected function §0&"§() : void
      {
         super.§0&"§();
         if(!Application.scene.§@$I§.§=%d§())
         {
            §@%;§.play(§`!v§.§0&C§);
         }
      }
      
      override protected function §?$u§(param1:DamageEvent) : void
      {
         var _loc3_:§+%]§ = null;
         var _loc4_:Number = NaN;
         var _loc2_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(unit);
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_.buffs.hasBuff(§1%I§.NAME) && this.§&#a§.tick())
            {
               _loc4_ = Math.max(10,param1.power / 2);
               new §!%n§(unit,unit.x,unit.y,false,_loc3_,_loc4_,0);
            }
         }
         super.§?$u§(param1);
      }
      
      override protected function §7$d§() : void
      {
         this.§&#a§.reset();
      }
   }
}


package §[!`§
{
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §+%S§.§@#s§;
   import §2!-§.DamageEvent;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§2& §;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §8#a§.§@#c§;
   import §<%k§.§`!v§;
   import §@#K§.§-§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§2%F§;
   import ru.pragmatix.wormix.game.ai.§5%?§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.IncreaseAchievements;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §@&3§ extends §-#8§
   {
      
      private static const §9"Q§:String = "AppleBoss";
      
      public function §@&3§(param1:Point)
      {
         super(param1.x,param1.y,§9"Q§,§0$N§.§%! §("ENHANCEMENT_APPLE_NAME"));
         §0$g§ = §`!v§.§9% §;
      }
      
      override protected function §0$j§(param1:§+%]§) : void
      {
         §@%;§.play(§`!v§.§1&"§);
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         super.§""0§(param1);
         disposed = true;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         §1"-§.explode(§;n§.§7q§,x,y,24);
         super.§[$u§(param1);
      }
   }
}


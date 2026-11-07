package §;$%§
{
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §"$+§.§`&$§;
   import §#k§.§9$v§;
   import §%"Z§.§2"B§;
   import §%Q§.*;
   import §&"c§.§!!q§;
   import §&"c§.§5$n§;
   import §&#E§.§4##§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#U§.*;
   import §+$=§.§6#A§;
   import §,#c§.ArenaMenu;
   import §-%B§.*;
   import §0%[§.§6!?§;
   import §1#p§.*;
   import §2"L§.§^$y§;
   import §3#T§.§;'§;
   import §5!,§.§?!P§;
   import §5"J§.*;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §8$V§.*;
   import §9"-§.§?!s§;
   import §<%k§.§`!v§;
   import §>$q§.§4#;§;
   import §?$K§.§3#j§;
   import §@!i§.§,! §;
   import §@8§.§5%>§;
   import §@<§.§+%]§;
   import §[$<§.§"#"§;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§6#Q§;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.Girder;
   
   public class §0%%§ extends §8"w§
   {
      
      private static const §6"m§:Number = 2 * (Math.PI / 360);
      
      private var §8"$§:§!!q§;
      
      public function §0%%§(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:int, param6:int, param7:§!!q§)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§8"$§ = param7;
         §1"-§.§;%k§(this,§;n§.§6#B§,8,1);
      }
      
      override protected function explode(param1:§&"T§) : void
      {
         super.explode(param1);
         §1"-§.§&!C§(x,y,16);
         §1"-§.explode(§;n§.MEDIUM,x,y,paramSet.explosionRadius.value,§`!v§.§4"t§);
      }
      
      override public function §!!>§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         super.§!!>§();
         if(this.§8"$§)
         {
            _loc1_ = Math.atan2(this.§8"$§.point.y - y,this.§8"$§.point.x - x);
            if(_loc1_ > 0)
            {
               _loc2_ = §^$y§.§ !Q§(angle,_loc1_,§6"m§);
               §^"F§(_loc2_,speed);
            }
         }
      }
   }
}


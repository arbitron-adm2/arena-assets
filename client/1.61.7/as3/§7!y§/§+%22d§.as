package §7!y§
{
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#h§.§&N§;
   import §&#h§.§-"F§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2"L§.§,'§;
   import §2#H§.§!%C§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §4%_§.§3§;
   import §4'§.§^"p§;
   import §5!,§.§9$h§;
   import §6$z§.§%&&§;
   import §6$z§.BonusStat;
   import §7!B§.§&"T§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §9%W§.§!7§;
   import §<$q§.*;
   import §<%k§.§`!v§;
   import §=$#§.§1!$§;
   import §?!E§.*;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!N§.§4"0§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@<§.§+%]§;
   import §]$J§.§#"s§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.plugins.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.serialization.ServerCommands;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §+"d§ extends BonusStat implements §%&&§
   {
      
      public function §+"d§()
      {
         super();
      }
      
      override public function add(param1:int) : void
      {
         super.add(param1);
         this.§3%<§(param1);
      }
      
      override public function subtract(param1:int) : void
      {
         super.subtract(param1);
         this.§3%<§(-param1);
      }
      
      private function §3%<§(param1:int) : void
      {
         var _loc2_:§+%]§ = null;
         owner.attributes.§8$e§.§5#l§(param1);
         if(owner.squad)
         {
            for each(_loc2_ in owner.squad.§1!n§())
            {
               if(_loc2_ != owner)
               {
                  _loc2_.attributes.§8$e§.§5#l§(param1);
               }
            }
         }
      }
      
      public function §[%x§(param1:§+%]§) : void
      {
         param1.attributes.§8$e§.§5#l§(§]%&§.value);
      }
   }
}


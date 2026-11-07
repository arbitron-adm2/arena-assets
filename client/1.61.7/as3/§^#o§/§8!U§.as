package §^#o§
{
   import §"$+§.§^$`§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#%!§.§%&F§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§-$s§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §0%[§.§0%§;
   import §1&-§.§'$y§;
   import §4'§.§`"q§;
   import §7!B§.§&"T§;
   import §9%W§.§&!P§;
   import §<"L§.*;
   import §<$q§.§,%3§;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?>§.§!q§;
   import §?>§.§^&<§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §]#[§.*;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`"x§.§-#z§;
   import §`"x§.SearchFriendMenu;
   import com.greensock.*;
   import com.greensock.core.*;
   import com.greensock.plugins.*;
   import config.achievements.§!$L§;
   import flash.display.*;
   import flash.events.*;
   import flash.utils.*;
   import org.gestouch.core.Touch;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.GetReagentsForProfile;
   import ru.pragmatix.wormix.messages.client.SyncInvestedAwardPoints;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §8!U§ implements §[&7§, §+%=§
   {
      
      private var ammo:§&"T§;
      
      private var §?"k§:uint;
      
      private var §4!,§:uint;
      
      private var target:§+%]§;
      
      private var enemies:Vector.<§+%]§>;
      
      public function §8!U§(param1:§&"T§, param2:uint, param3:uint = 1)
      {
         super();
         this.ammo = param1;
         this.§?"k§ = param2;
         this.§4!,§ = param3 > 0 ? param3 : 1;
         this.enemies = §8"%§.§?!W§.§4"m§.§6"M§();
      }
      
      public function §!!>§(param1:uint) : void
      {
         var _loc2_:Vector.<§+%]§> = null;
         if(!this.ammo.disposed && !this.target && param1 % this.§4!,§ == 0)
         {
            _loc2_ = §<H§.§5"]§(this.ammo.x,this.ammo.y,this.§?"k§,this.enemies);
            if(_loc2_.length > 0)
            {
               this.target = _loc2_[0];
            }
         }
      }
      
      public function §`"%§() : §+%]§
      {
         return this.target;
      }
      
      public function §>^§() : void
      {
         if(this.target)
         {
            this.target = null;
         }
      }
   }
}


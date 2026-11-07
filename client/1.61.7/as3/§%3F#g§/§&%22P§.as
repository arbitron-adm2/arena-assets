package §?#g§
{
   import §!$d§.*;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §-8§.*;
   import §0&F§.§0%v§;
   import §2"L§.*;
   import §2#8§.§6"a§;
   import §4!K§.§^%A§;
   import §4&F§.*;
   import §4^§.§'!u§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §<%J§.RopeRaceGiftMenu;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §?"j§.§]!<§;
   import §?"j§.§`%+§;
   import §@$§.*;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[!`§.*;
   import §[%§.Boar;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.ui.Mouse;
   import ru.pragmatix.flox.logger.§4"P§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ChooseBonusItemResult;
   import ru.pragmatix.wormix.messages.server.GetAchievementsResult;
   import ru.pragmatix.wormix.messages.server.IncreaseAchievementResult;
   import ru.pragmatix.wormix.messages.server.SyncInvestedAwardPointsResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§'"<§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpCommand;
   import ru.pragmatix.wormix.pvp.messages.ex.CancelBattle;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §&"P§
   {
      
      private var raceId:int;
      
      private var name:String;
      
      private var §;$$§:String;
      
      private var realprice:int;
      
      private var requiredLevel:int;
      
      private var §1%]§:int;
      
      private var §1#c§:§]!<§;
      
      private var §8"P§:Vector.<int> = new Vector.<int>(0);
      
      public function §&"P§(param1:§]!<§)
      {
         super();
         this.§1#c§ = param1;
         this.§1"c§();
      }
      
      public static function §!%4§(param1:int) : §&"P§
      {
         var _loc3_:§]!<§ = null;
         var _loc2_:Object = §`%+§.§1$4§();
         for each(_loc3_ in _loc2_)
         {
            if(int(_loc3_.raceId) == param1)
            {
               break;
            }
         }
         return new §&"P§(_loc3_);
      }
      
      public function toString() : String
      {
         return "Skin {" + " raceId=" + this.raceId + " name=" + this.name + " modPrefix=" + this.§;$$§ + " realprice=" + this.realprice + " requiredLevel=" + this.requiredLevel + " activeModId=" + this.§1%]§ + " existMods=" + this.§8"P§ + " }";
      }
      
      public function §@_§() : int
      {
         return this.raceId;
      }
      
      public function §7%z§() : String
      {
         return this.name;
      }
      
      public function §^#;§() : String
      {
         return this.§;$$§;
      }
      
      public function §,$1§() : int
      {
         return this.realprice;
      }
      
      public function §,X§() : int
      {
         return this.requiredLevel;
      }
      
      public function §7"=§() : int
      {
         return this.§1%]§;
      }
      
      public function §`!§(param1:int) : Boolean
      {
         return param1 == 0 || this.§8"P§.indexOf(param1) > -1;
      }
      
      public function §=#;§() : Vector.<int>
      {
         return this.§8"P§;
      }
      
      public function getRecord() : §]!<§
      {
         return this.§1#c§;
      }
      
      public function §%#L§(param1:int, param2:Boolean = true) : void
      {
         var _loc3_:§"&>§ = null;
         if(param1 == 0)
         {
            this.§1"c§();
         }
         else
         {
            for each(_loc3_ in this.§1#c§.modify)
            {
               if(_loc3_.getId() == param1)
               {
                  if(param2)
                  {
                     this.name = _loc3_.§7%z§();
                     this.§;$$§ = _loc3_.§<%-§();
                     this.realprice = _loc3_.§,$1§();
                     this.§1%]§ = param1;
                  }
                  if(this.§8"P§.indexOf(param1) == -1)
                  {
                     this.§8"P§.push(param1);
                  }
                  break;
               }
            }
         }
      }
      
      public function §1"c§() : void
      {
         this.raceId = this.§1#c§.getId();
         this.name = this.§1#c§.§7%z§();
         this.§;$$§ = "";
         this.realprice = 0;
         this.requiredLevel = 1;
         this.§1%]§ = 0;
      }
      
      public function §4%S§(param1:int) : §"&>§
      {
         var _loc2_:§"&>§ = null;
         for each(_loc2_ in this.§1#c§.modify)
         {
            if(_loc2_.getId() == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function § "P§() : §&"P§
      {
         var _loc1_:§&"P§ = new §&"P§(this.§1#c§);
         _loc1_.§8"P§ = new Vector.<int>().concat(this.§8"P§);
         _loc1_.§%#L§(this.§1%]§);
         return _loc1_;
      }
   }
}


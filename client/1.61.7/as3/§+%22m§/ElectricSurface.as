package §+"m§
{
   import § $q§.*;
   import § L§.§`T§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §#%!§.§%&F§;
   import §%L§.§%%w§;
   import §&!&§.§8%f§;
   import §&!&§.§<"p§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §0!Y§.§#!Z§;
   import §0"L§.§+# §;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §4#`§.BattleInterface;
   import §4%_§.§3§;
   import §4f§.§-&§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7$1§.§3&G§;
   import §7$t§.§&!e§;
   import §7$t§.§=?§;
   import §;!J§.*;
   import §<!W§.§=!6§;
   import §="z§.§9%1§;
   import §>"l§.*;
   import §>%S§.§^!V§;
   import §?!E§.*;
   import §?>§.§0!7§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §]&?§.§7#g§;
   import flash.display.DisplayObject;
   import flash.display.SimpleButton;
   import flash.display.StageQuality;
   import flash.events.*;
   import flash.filters.BitmapFilterQuality;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.house.team.TeamRoom;
   import ru.pragmatix.wormix.messages.client.BuySelectRace;
   import ru.pragmatix.wormix.messages.client.SetHotkeys;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.WithdrawSeasonWeaponsResult;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§%%a§;
   import ru.pragmatix.wormix.weapons.BagHackWeapon;
   import vk.*;
   import vk.api.§;&G§;
   
   public class ElectricSurface extends §&"T§
   {
      
      private static const §@!9§:String = "ElectricSurface";
      
      private static const §]#2§:int = 5;
      
      private var target:§+%]§;
      
      protected var §"#w§:Point;
      
      protected var §'%F§:Point;
      
      private var §5"C§:int = 0;
      
      public function ElectricSurface(param1:int, param2:int, param3:int = -1, param4:int = 0)
      {
         super();
         this.target = this.target;
         §,q§.push(§-&§.IGNORE_MAGNET);
         physParams.§5N§ = §9%1§.§@%h§;
         this.x = param1;
         this.y = param2;
         stable = true;
         §!%8§ = §6#A§.§!&6§(§@!9§);
         if(param3 > 0)
         {
            §!%8§.width = param3;
         }
         §!%8§.rotation = param4;
         var _loc5_:int = §!%8§.height >> 1;
         var _loc6_:int = §!%8§.width >> 1;
         this.§"#w§ = new Point(param1 - _loc6_,param2 - _loc5_);
         this.§'%F§ = new Point(param1 + _loc6_,param2 + _loc5_);
         Application.scene.§@$I§.§1$+§(this);
         Application.scene.addEventListener(§0%v§.SOT,this.§@%D§);
      }
      
      override public function §!!>§() : void
      {
         var _loc1_:Number = NaN;
         super.§!!>§();
         if(Boolean(this.target && !this.target.disposed) && Boolean(frames >= this.§5"C§) && §§pop().§%$Q§(§§pop(),§§pop(),§§pop(),§§pop(),new <§&"T§>[this.target]).length > 0)
         {
            §'"$§.§]#I§(null,this.target.x,this.target.y,this.target,30,0,0,false);
            this.§5"C§ = frames + §]#2§;
            if(!this.target.disposed)
            {
               §1"-§.§`$Q§(this.target.x,this.target.y,§1"-§.§9a§);
               _loc1_ = §-q§.§'x§(x,y,this.target.x,this.target.y);
               §'"$§.§@$t§(this.target,_loc1_,10,false);
            }
         }
      }
      
      private function §@%D§(param1:Event) : void
      {
         this.target = §8"%§.§?!W§.§4"m§.activeUnit;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         Application.scene.removeEventListener(§0%v§.SOT,this.§@%D§);
      }
   }
}


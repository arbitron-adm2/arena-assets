package ru.pragmatix.flox.gui.controls
{
   import § "L§.*;
   import § &5§.§0&$§;
   import §!$d§.§<$c§;
   import §!%6§.*;
   import §!L§.§+"'§;
   import §"$+§.*;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%L§.§%%w§;
   import §%Q§.§<&A§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'"N§.§4&5§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §,"v§.§9%d§;
   import §-G§.§ A§;
   import §-G§.§1$l§;
   import §-G§.§^$ §;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0%z§.*;
   import §5!,§.§9$h§;
   import §5!b§.*;
   import §5#`§.§7%g§;
   import §6"'§.§&"3§;
   import §6%2§.§,x§;
   import §7!B§.§&"T§;
   import §7$t§.§;#_§;
   import §9%W§.§!"G§;
   import §9%k§.*;
   import §;#O§.§+%7§;
   import §<!^§.§]#u§;
   import §<"L§.§##-§;
   import §<%J§.RopeRaceGiftMenu;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §?$7§.*;
   import §?>§.§]!V§;
   import §?o§.§?!x§;
   import §@!i§.§"-§;
   import §@!i§.§8%6§;
   import §@"x§.CommonSettingsMenu;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]^§.§-$T§;
   import §^!"§.§^$F§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §^4§.§@#J§;
   import §^4§.§]"8§;
   import §^4§.§^"Y§;
   import §`"p§.§20§;
   import §`#x§.§"$r§;
   import §`%&§.§5$1§;
   import com.greensock.*;
   import com.greensock.loading.core.LoaderItem;
   import com.greensock.plugins.*;
   import config.achievements.§^t§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import org.gestouch.core.Touch;
   import org.gestouch.core.gestouch_internal;
   import org.gestouch.gestures.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§9!Q§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanSummaryMainRequest;
   import ru.pragmatix.wormix.messages.clans.request.ClanSummaryRequest;
   import ru.pragmatix.wormix.messages.clans.response.ClanSummaryResponse;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§#"h§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.HomingMinigun;
   import ru.pragmatix.wormix.weapons.Kalash;
   import ru.pragmatix.wormix.weapons.Minigun;
   import ru.pragmatix.wormix.weapons.Rifle;
   import ru.pragmatix.wormix.weapons.SniperRifle;
   import ru.pragmatix.wormix.weapons.Uzi;
   
   use namespace gestouch_internal;
   
   public class §<#D§
   {
      
      protected var data:Array;
      
      private var page:int;
      
      private var §?&§:int;
      
      private var pageSize:int;
      
      public function §<#D§(param1:Array, param2:int, param3:int = 0)
      {
         super();
         this.data = param1;
         this.pageSize = param2;
         this.§?&§ = param3 ? this.§8%p§(param3) : this.§8%p§(param1.length);
         this.page = 1;
      }
      
      private function §8%p§(param1:uint) : int
      {
         if(!param1)
         {
            return 1;
         }
         return Math.ceil(param1 / this.pageSize);
      }
      
      public function §#<§() : int
      {
         return (this.page - 1) * this.pageSize;
      }
      
      public function §+%R§(param1:uint, param2:uint, param3:Function) : void
      {
         param3(this.data.slice(param1,param1 + param2));
      }
      
      public function §"%S§(param1:Function) : void
      {
         var _loc2_:int = this.§#<§();
         this.§+%R§(_loc2_,_loc2_ + this.pageSize,param1);
      }
      
      public function §>$6§() : int
      {
         return this.data.length;
      }
      
      public function §1"J§() : int
      {
         return this.page;
      }
      
      public function §%$S§(param1:int) : void
      {
         this.page = param1;
      }
      
      public function §<v§() : Boolean
      {
         return this.page == 1;
      }
      
      public function §4$`§() : int
      {
         return this.pageSize;
      }
      
      public function §"$!§() : Boolean
      {
         return this.page == this.§?&§;
      }
      
      public function §-J§() : int
      {
         return this.§?&§;
      }
      
      public function indexOf(param1:Object) : int
      {
         return this.data.indexOf(param1);
      }
      
      public function §[5§() : Array
      {
         return this.data;
      }
   }
}


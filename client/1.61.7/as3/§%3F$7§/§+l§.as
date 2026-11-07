package §?$7§
{
   import §!L§.§+"'§;
   import §"%H§.§'%u§;
   import §"%H§.§`"w§;
   import §##j§.§`%g§;
   import §##y§.§9§;
   import §#%!§.§%&F§;
   import §%"1§.§@%;§;
   import §%$!§.§9$p§;
   import §&&6§.*;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0%j§.*;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §2!-§.DamageEvent;
   import §2#H§.§"j§;
   import §4f§.§-&§;
   import §9%W§.§&!P§;
   import §;!Z§.*;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=!p§.§!"9§;
   import §=!p§.§7#E§;
   import §="z§.§9%1§;
   import §>%S§.§^!V§;
   import §@!i§.§!m§;
   import §@!i§.§8%6§;
   import §@"s§.§#&3§;
   import §@"s§.§]!>§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import §`%&§.§,%§;
   import com.greensock.loading.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.server.WhoPumpedReactionResult;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.ProfileDoubleKeyStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §+l§
   {
      
      public static const §?!$§:uint = 6;
      
      public static const §9!A§:uint = 10;
      
      public static const §4!b§:uint = 7;
      
      private var §!%s§:int = 0;
      
      public function §+l§()
      {
         super();
      }
      
      public function get §^&§() : int
      {
         return this.§!%s§;
      }
      
      public function §?U§() : int
      {
         return Math.max(this.§+#q§(),this.§^&§);
      }
      
      public function set §^&§(param1:int) : void
      {
         this.§!%s§ = param1;
      }
      
      public function §!!e§() : Vector.<§8%6§>
      {
         return null;
      }
      
      public function §%#y§() : uint
      {
         return 0;
      }
      
      public function §##H§(param1:int) : Vector.<§-$T§>
      {
         return null;
      }
      
      public function §;#S§(param1:int) : Boolean
      {
         var _loc2_:Vector.<§8%6§> = null;
         _loc2_ = this.§!!e§();
         var _loc3_:int = _loc2_[_loc2_.length - 1].getId();
         return _loc3_ == param1;
      }
      
      protected function get minId() : int
      {
         return 0;
      }
      
      protected function get maxId() : int
      {
         return 0;
      }
      
      public function §+#q§() : uint
      {
         return 0;
      }
      
      public function contains(param1:int) : Boolean
      {
         return param1 >= this.minId && param1 <= this.maxId;
      }
   }
}


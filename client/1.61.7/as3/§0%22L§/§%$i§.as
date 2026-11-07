package §0"L§
{
   import § %f§.§ "r§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §#"V§.§8"@§;
   import §##y§.§9§;
   import §#5§.§!&"§;
   import §#5§.§9%$§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&&6§.*;
   import §'!Z§.§'!j§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§;n§;
   import §+%S§.§+m§;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2!-§.NewUnitEvent;
   import §2#s§.§7"N§;
   import §3#a§.§-!`§;
   import §4%_§.ZombieGrave;
   import §4'§.§`"q§;
   import §6%2§.§'"Y§;
   import §7$t§.§;#_§;
   import §8#o§.§1@§;
   import §9%W§.§!"G§;
   import §9%W§.§!7§;
   import §9%W§.§&!P§;
   import §<"L§.*;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §="z§.§ "H§;
   import §="z§.§9%1§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$K§.§=z§;
   import §?$K§.§@$J§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §[%§.*;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import com.greensock.core.TweenCore;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.response.CommonClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.DeleteClanResponse;
   import ru.pragmatix.wormix.messages.clans.response.LoginClanEnterAccount;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.messages.structures.LoginAwardStructure;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §%$i§
   {
      
      private var states:ByteArray;
      
      private var §4n§:DisplayObject;
      
      public function §%$i§(param1:DisplayObject)
      {
         super();
         this.states = new ByteArray();
         this.states.writeUnsignedInt(0);
         this.states.writeUnsignedInt(0);
         this.states.writeUnsignedInt(0);
         this.states.writeUnsignedInt(0);
         this.states.writeUnsignedInt(0);
         this.states.writeUnsignedInt(0);
         this.states.writeUnsignedInt(0);
         this.states.writeUnsignedInt(0);
         this.§4n§ = param1;
         this.§4n§.addEventListener(KeyboardEvent.KEY_DOWN,this.§1i§,false,0,true);
         this.§4n§.addEventListener(KeyboardEvent.KEY_UP,this.§,#D§,false,0,true);
         this.§4n§.addEventListener(Event.ACTIVATE,this.§+%P§,false,0,true);
         this.§4n§.addEventListener(Event.DEACTIVATE,this.§!& §,false,0,true);
      }
      
      private function §1i§(param1:KeyboardEvent) : void
      {
         this.states[param1.keyCode >>> 3] |= 1 << (param1.keyCode & 7);
      }
      
      private function §,#D§(param1:KeyboardEvent) : void
      {
         this.states[param1.keyCode >>> 3] &= ~(1 << (param1.keyCode & 7));
      }
      
      private function §+%P§(param1:Event) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < 32)
         {
            this.states[_loc2_] = 0;
            _loc2_++;
         }
      }
      
      private function §!& §(param1:Event) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < 32)
         {
            this.states[_loc2_] = 0;
            _loc2_++;
         }
      }
      
      public function §;"M§(param1:uint) : Boolean
      {
         return (this.states[param1 >>> 3] & 1 << (param1 & 7)) != 0;
      }
      
      public function §<#0§(param1:uint) : Boolean
      {
         return (this.states[param1 >>> 3] & 1 << (param1 & 7)) == 0;
      }
   }
}


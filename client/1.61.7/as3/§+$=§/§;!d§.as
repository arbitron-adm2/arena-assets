package §+$=§
{
   import § !8§.§`!d§;
   import § !P§.§<#q§;
   import § #m§.§2#P§;
   import § L§.§`T§;
   import §!$d§.§<$c§;
   import §"$+§.*;
   import §##y§.§9§;
   import §#P§.§`o§;
   import §#k§.§9$v§;
   import §%"Z§.§2"B§;
   import §&!m§.§-$6§;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §&#h§.*;
   import §0!Y§.§#!Z§;
   import §0"L§.*;
   import §0%[§.§0%§;
   import §0%[§.§]%s§;
   import §0%[§.§]2§;
   import §0%z§.§&%&§;
   import §0&F§.§0%v§;
   import §1!J§.§"t§;
   import §1#p§.§"Z§;
   import §2"L§.§;#L§;
   import §2#i§.§+%z§;
   import §2#x§.§]s§;
   import §3#a§.§-!`§;
   import §4%_§.§3§;
   import §4f§.§-&§;
   import §7$1§.§3&G§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §;!J§.*;
   import §;&2§.§!#W§;
   import §<!^§.§]#u§;
   import §<"?§.§7!@§;
   import §<"?§.§@&#§;
   import §<"L§.*;
   import §<%c§.*;
   import §=!V§.*;
   import §="z§.§9%1§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §?!E§.*;
   import §?$7§.§!§;
   import §?$L§.§0"-§;
   import §@!i§.§!m§;
   import §@$§.*;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`#x§.*;
   import §`%&§.§@&,§;
   import config.§=%A§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.*;
   import flash.media.Sound;
   import flash.net.LocalConnection;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.ui.Keyboard;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.rules.§6#H§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.§3!f§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.IncomingClanMessage;
   import ru.pragmatix.wormix.messages.clans.structures.*;
   import ru.pragmatix.wormix.messages.server.DistributePointsResult;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpCommand;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurnResponse;
   import ru.pragmatix.wormix.pvp.messages.ex.WidenSearch;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§,$n§;
   import vk.*;
   import vk.api.§;&G§;
   
   public class §;!d§
   {
      
      public static const log:§&`§ = new §&`§(§;!d§);
      
      protected var className:String;
      
      protected var §@!r§:Class;
      
      protected var x:int;
      
      protected var y:int;
      
      protected var width:int;
      
      protected var height:int;
      
      protected var color:int;
      
      protected var scale:Number;
      
      public function §;!d§()
      {
         super();
      }
      
      public function §+"]§() : String
      {
         return this.className;
      }
      
      public function §8!w§(param1:String) : void
      {
         this.className = param1;
      }
      
      public function getClass() : Class
      {
         return this.§@!r§;
      }
      
      public function §6&6§(param1:Class) : void
      {
         this.§@!r§ = param1;
      }
      
      public function §#X§() : int
      {
         return this.x;
      }
      
      public function §5!&§(param1:int) : void
      {
         this.x = param1;
      }
      
      public function §5#g§() : int
      {
         return this.y;
      }
      
      public function §7+§(param1:int) : void
      {
         this.y = param1;
      }
      
      public function §@%<§() : int
      {
         return this.width;
      }
      
      public function §&Z§(param1:int) : void
      {
         this.width = param1;
      }
      
      public function §'$#§() : int
      {
         return this.height;
      }
      
      public function §!%V§(param1:int) : void
      {
         this.height = param1;
      }
      
      public function §?!+§() : int
      {
         return this.color;
      }
      
      public function §&&§(param1:int) : void
      {
         this.color = param1;
      }
      
      public function §4"'§() : Number
      {
         return this.scale;
      }
      
      public function §9!?§(param1:Number) : void
      {
         this.scale = param1;
      }
      
      public function §!&6§() : MovieClip
      {
         return this.§,%"§() as MovieClip;
      }
      
      public function §]#$§() : SimpleButton
      {
         return this.§,%"§() as SimpleButton;
      }
      
      public function § !7§() : Font
      {
         Font.registerFont(this.getClass());
         return new (this.getClass())() as Font;
      }
      
      private function §,%"§() : DisplayObject
      {
         var _loc2_:DisplayObject = null;
         var _loc1_:Class = this.getClass();
         if(_loc1_)
         {
            _loc2_ = new (this.getClass())() as DisplayObject;
            if(this.x)
            {
               _loc2_.x = this.x;
            }
            if(this.y)
            {
               _loc2_.y = this.y;
            }
            if(this.width)
            {
               _loc2_.width = this.width;
            }
            if(this.height)
            {
               _loc2_.height = this.height;
            }
            if(this.color)
            {
               §;#L§.§&&§(_loc2_,this.color);
            }
            if(this.scale)
            {
               _loc2_.scaleX = this.scale;
               _loc2_.scaleY = this.scale;
            }
            return _loc2_;
         }
         log.§3"l§("Resource \'" + this.className + "\'class is null");
         return null;
      }
      
      public function §'8§() : Sound
      {
         return new (this.getClass())() as Sound;
      }
      
      public function apply(param1:§;!d§) : void
      {
         this.§@!r§ = param1.§@!r§;
         if(!this.x)
         {
            this.x = param1.x;
         }
         if(!this.y)
         {
            this.y = param1.y;
         }
         if(!this.width)
         {
            this.width = param1.width;
         }
         if(!this.height)
         {
            this.height = param1.height;
         }
      }
   }
}


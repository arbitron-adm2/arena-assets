package §=!C§
{
   import §!L§.§+"'§;
   import §#!5§.§>S§;
   import §#"V§.§!&5§;
   import §%L§.§'$T§;
   import §&#h§.*;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §4$b§.§2m§;
   import §5!,§.*;
   import §8$Z§.*;
   import §<V§.§!&-§;
   import §>!_§.§'!&§;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §74§ extends §`&-§
   {
      
      protected var _msg:ChatMessage;
      
      protected var textField:TextField;
      
      public function §74§(param1:DisplayObject)
      {
         super(param1);
      }
      
      protected function §8$H§() : String
      {
         return "<font color=\'#696969\'>" + §0#2§.§3"?§(this._msg.logDate).split(" ")[1] + "</font>";
      }
      
      public function get msg() : ChatMessage
      {
         return this._msg;
      }
   }
}


package ru.pragmatix.wormix.gui.window
{
   import § $q§.§3U§;
   import §!L§.§+"'§;
   import §#%!§.§%&F§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §,#_§.FrameTimer;
   import §-%B§.*;
   import §0%[§.§0%§;
   import §0&F§.FrameTimerEvent;
   import §1!J§.§@#%§;
   import §4!x§.§@& §;
   import §4$b§.§2m§;
   import §6_§.§&$6§;
   import §7!B§.§&"T§;
   import §<!^§.§]#u§;
   import §@!N§.§3!3§;
   import §@<§.§+%]§;
   import §[" §.*;
   import §`#x§.§"$r§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.*;
   import ru.pragmatix.wormix.messages.clans.request.edit.CloseExitClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanEmblemResponse;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.social.Social;
   
   public class §9!Q§ extends §@& §
   {
      
      private var §=$_§:Function;
      
      private var §+!=§:Function;
      
      public function §9!Q§(param1:Number, param2:Function, param3:Function)
      {
         super(§6#A§.§!&6§(§+"'§.§#"p§));
         this.§=$_§ = param2;
         this.§+!=§ = param3;
         §#7§(§0$N§.VIDEO_SAVE_TITLE);
         TextField(getChildByName("attention")).htmlText = §0$N§.VIDEO_SAVE_ATTENTION;
         TextField(getChildByName("value")).htmlText = §0%§.format(§0$N§.VIDEO_SAVE_SIZE,{"value":param1.toFixed(2)});
         TextField(getChildByName("question")).htmlText = §0$N§.VIDEO_SAVE_QUESTION;
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §=#h§ = §0$N§.BUTTON_OK;
         §-!^§ = §0$N§.BUTTON_CANCEL;
         §<"b§ = true;
      }
      
      override protected function okAction() : void
      {
         super.okAction();
         this.§=$_§();
      }
      
      override protected function §0!j§(param1:MouseEvent) : void
      {
         super.§0!j§(param1);
         this.§+!=§();
      }
   }
}


package §%"1§
{
   import § !8§.§`!d§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §"$+§.§@C§;
   import §+#U§.§'#w§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §0%"§.§[!^§;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §2#i§.§+%z§;
   import §4&F§.*;
   import §7!-§.*;
   import §7$t§.§[!X§;
   import §9%W§.§&!P§;
   import §<%k§.*;
   import §=!C§.§?$3§;
   import §=!C§.§@"h§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!N§.§4"0§;
   import §@!i§.*;
   import §@<§.§+%]§;
   import §]$v§.§5"R§;
   import §]^§.§-$T§;
   import §^"y§.§]#i§;
   import §`"p§.*;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.text.TextFieldType;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.server.StartTurnResponse;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §7#P§ extends EventDispatcher
   {
      
      private static const §+!i§:Number = 0.001;
      
      private static var §]#K§:int = 0;
      
      private var settings:§=#?§;
      
      private var transform:SoundTransform;
      
      private var §]"i§:SoundChannel;
      
      private var §[#D§:int;
      
      private var _status:§+#h§ = §+#h§.NONE;
      
      private var §9!4§:uint;
      
      public function §7#P§(param1:§=#?§, param2:SoundTransform, param3:int)
      {
         super();
         this.settings = param1;
         this.transform = param2;
         this.§[#D§ = param3;
         this.§9!4§ = §]#K§++;
      }
      
      internal static function create(param1:§=#?§, param2:Boolean = false, param3:SoundTransform = null) : §7#P§
      {
         if(!param3 && param1.§`5§() != 1)
         {
            param3 = new SoundTransform(param1.§`5§());
         }
         var _loc4_:int = param2 ? int.MAX_VALUE : 0;
         return new §7#P§(param1,param3,_loc4_);
      }
      
      internal static function §6$B§(param1:§=#?§, param2:Boolean = false, param3:SoundTransform = null) : §7#P§
      {
         var _loc4_:§7#P§ = create(param1,param2,param3);
         _loc4_.play();
         return _loc4_;
      }
      
      public function play() : void
      {
         var _loc1_:Sound = null;
         if(this._status != §+#h§.§!#5§ && this._status != §+#h§.§[&,§)
         {
            _loc1_ = §@%;§.§7#j§(this.settings);
            if(_loc1_)
            {
               this.§]"i§ = _loc1_.play(0,this.§[#D§,this.transform);
               if(this.§]"i§)
               {
                  this._status = §+#h§.§!#5§;
                  §""n§.single(this.§]"i§,Event.SOUND_COMPLETE,this.§9%z§);
               }
            }
         }
      }
      
      private function §9%z§(param1:Event) : void
      {
         if(!this.§[#D§ || this._status != §+#h§.§ #'§)
         {
            this._status = §+#h§.§[&,§;
            dispatchEvent(new Event(Event.SOUND_COMPLETE));
            if(this.§[#D§)
            {
               §@%;§.§,#v§(this);
            }
         }
      }
      
      public function isPlaying() : Boolean
      {
         return this._status == §+#h§.§!#5§;
      }
      
      internal function §>"X§() : void
      {
         this._status = §+#h§.§ #'§;
         if(this.§]"i§)
         {
            this.§]"i§.stop();
            this.§]"i§ = null;
         }
      }
      
      public function stop() : void
      {
         if(this.§]"i§)
         {
            this.§]"i§.stop();
            this.§]"i§ = null;
         }
         this._status = §+#h§.§[&,§;
         §@%;§.§,#v§(this);
         dispatchEvent(new Event(Event.SOUND_COMPLETE));
      }
      
      internal function §&#@§() : void
      {
         if(this.§]"i§)
         {
            this.transform = this.§]"i§.soundTransform;
            this.§]"i§.soundTransform = new SoundTransform(§+!i§);
         }
      }
      
      internal function §!$M§() : void
      {
         if(Boolean(this.§]"i§) && Boolean(this.transform))
         {
            this.§]"i§.soundTransform = this.transform;
         }
      }
      
      internal function get id() : uint
      {
         return this.§9!4§;
      }
      
      public function set soundTransform(param1:SoundTransform) : void
      {
         if(this.§]"i§)
         {
            this.§]"i§.soundTransform = param1;
         }
         this.transform = param1;
      }
      
      public function get soundTransform() : SoundTransform
      {
         return this.transform;
      }
      
      public function get status() : §+#h§
      {
         return this._status;
      }
      
      override public function toString() : String
      {
         return super.toString() + "{" + this.settings.§+"]§() + ": " + this.id + "}";
      }
   }
}


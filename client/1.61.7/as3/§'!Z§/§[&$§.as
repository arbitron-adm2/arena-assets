package §'!Z§
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §%"1§.§7#P§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §+#U§.§'#w§;
   import §+$=§.§6#A§;
   import §+$=§.§;!d§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §,#_§.§%!_§;
   import §-%B§.*;
   import §0!§.§[k§;
   import §0%j§.§0$+§;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §2#H§.§+N§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §4#2§.*;
   import §7!-§.*;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7$t§.§^%%§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §9%W§.§!"G§;
   import §9%W§.§&!P§;
   import §<!^§.§]#u§;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §="z§.§9%1§;
   import §="z§.§<$t§;
   import §=#g§.*;
   import §?"j§.§]!<§;
   import §@!N§.*;
   import §@!i§.§!m§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §]$v§.§5"R§;
   import §]$v§.§]%_§;
   import §]^§.§-$T§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`%&§.§5$1§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.media.SoundTransform;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.§+$w§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.UnluckyCraftCount;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §[&$§
   {
      
      public static const §'"6§:String = "appear";
      
      public static const §^0§:String = "idle";
      
      public static const §5$P§:String = "fading";
      
      private var _state:String;
      
      private var §-#%§:MovieClip;
      
      private var §?]§:String;
      
      private var §<$w§:String;
      
      private var §9!t§:String;
      
      private var isPlaying:Boolean = false;
      
      private var timer:§%!_§;
      
      private var §"!G§:MovieClip;
      
      private var §5x§:Boolean = false;
      
      private var §8!]§:Boolean = true;
      
      private var callback:Function;
      
      public function §[&$§(param1:MovieClip, param2:String, param3:String = null, param4:String = null)
      {
         super();
         this.§-#%§ = param1;
         this.§?]§ = param2;
         this.§<$w§ = param3;
         this.§9!t§ = param4;
         this.timer = new §%!_§(0,1);
         this.timer.addEventListener(FrameTimerEvent.§;$>§,this.onFrameTimerComplete);
      }
      
      public function start() : void
      {
         if(this.isPlaying)
         {
            throw new Error("Already playing!");
         }
         this.isPlaying = true;
         if(this.§<$w§)
         {
            this.§?!9§(this.§<$w§);
            this.§`"&§();
            this._state = §'"6§;
            this.timer.restart(this.§"!G§.totalFrames);
         }
         else
         {
            this.§?c§();
         }
      }
      
      private function §?!9§(param1:String) : void
      {
         if(this.§"!G§)
         {
            §3!3§.§>!j§(null,this.§"!G§);
            if(this.§"!G§.parent)
            {
               this.§"!G§.parent.removeChild(this.§"!G§);
            }
         }
         this.§"!G§ = §6#A§.§!&6§(param1);
         this.§"!G§.name = param1;
      }
      
      private function §?c§() : void
      {
         this.§?!9§(this.§?]§);
         this.§`"&§();
         this._state = §^0§;
         if(§8"%§.§&S§.§41§())
         {
            §3!3§.§<%W§(null,this.§-#%§);
         }
         else
         {
            §3!3§.§>!j§(null,this.§-#%§);
         }
      }
      
      public function §=$5§(param1:Boolean = false, param2:Boolean = true, param3:Function = null) : void
      {
         if(this.§9!t§)
         {
            this.§5x§ = param1;
            this.§8!]§ = param2;
            this.callback = param3;
            this.§ y§();
            this.§?!9§(this.§9!t§);
            if(param1)
            {
               Application.scene.§=P§().addChild(this.§"!G§);
               this.§"!G§.x = this.§-#%§.x;
               this.§"!G§.y = this.§-#%§.y;
            }
            else
            {
               this.§`"&§();
            }
            this.timer.restart(this.§"!G§.totalFrames);
            this._state = §5$P§;
            return;
         }
         throw new Error("Clip for fading not setted!");
      }
      
      public function stop() : void
      {
         this.§4#E§();
      }
      
      private function onFrameTimerComplete(param1:FrameTimerEvent) : void
      {
         switch(this._state)
         {
            case §'"6§:
               this.§ y§();
               this.§?c§();
               break;
            case §^0§:
               break;
            case §5$P§:
               §3!3§.§>!j§(null,this.§"!G§);
               if(this.§5x§)
               {
                  Application.scene.§=P§().removeChild(this.§"!G§);
               }
               else
               {
                  this.§ y§();
               }
               this.§5x§ = false;
               if(this.§8!]§)
               {
                  this.§4#E§();
               }
               else
               {
                  this.§?c§();
                  if(this.callback != null)
                  {
                     this.callback();
                     this.callback = null;
                  }
               }
         }
      }
      
      private function §`"&§() : void
      {
         this.§"!G§.name = "animation";
         this.§-#%§.addChild(this.§"!G§);
      }
      
      private function § y§() : void
      {
         §3!3§.§>!j§(null,this.§-#%§);
         if(this.§"!G§.parent)
         {
            this.§"!G§.parent.removeChild(this.§"!G§);
         }
         this.§"!G§ = null;
      }
      
      public function §4#E§() : void
      {
         §3!3§.§>!j§(null,this.§-#%§);
         this.§-#%§ = null;
         this.isPlaying = false;
      }
      
      public function setVisible(param1:Boolean) : void
      {
         if(this.§"!G§)
         {
            this.§"!G§.visible = param1;
         }
      }
      
      public function getClip() : MovieClip
      {
         return this.§-#%§;
      }
      
      public function get state() : String
      {
         return this._state;
      }
   }
}


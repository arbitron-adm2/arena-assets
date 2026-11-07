package ru.pragmatix.wormix.gui.window
{
   import § !8§.§`!d§;
   import § !P§.§<#q§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §#"V§.§8"@§;
   import §##j§.§%&G§;
   import §##j§.§6#v§;
   import §##j§.§7,§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#5§.*;
   import §%"1§.§7#P§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&#E§.§4##§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §+#U§.§'#w§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0%z§.§+y§;
   import §0&F§.§0%v§;
   import §2#x§.*;
   import §3#a§.§-#M§;
   import §4!!§.§2&F§;
   import §4#`§.*;
   import §5!b§.§'!O§;
   import §5!b§.§0&%§;
   import §5!b§.§]!4§;
   import §5"J§.*;
   import §5$p§.§4&$§;
   import §5$p§.ArchdemonRope;
   import §5%S§.§>&-§;
   import §6"'§.§&"3§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §7"Q§.§0$L§;
   import §7$t§.§9#x§;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §8#o§.§1@§;
   import §8$V§.§`"c§;
   import §9%W§.§&!P§;
   import §9&+§.§6&=§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §?#g§.Race;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import com.greensock.loading.*;
   import com.greensock.loading.core.LoaderCore;
   import config.achievements.§!$L§;
   import config.achievements.§^t§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.media.SoundTransform;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import org.gestouch.core.*;
   import org.gestouch.gestures.Gesture;
   import ru.pragmatix.flox.gui.controls.§ M§;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.SelectRace;
   import ru.pragmatix.wormix.messages.structures.*;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.server.*;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   use namespace gestouch_internal;
   
   public class §2[§ extends § M§ implements §^c§
   {
      
      private var §2#0§:int;
      
      private var §0#I§:int;
      
      private var §8#,§:Boolean;
      
      private var §0"M§:MovieClip;
      
      public function §2[§(param1:DisplayObjectContainer, param2:Object = null, param3:Boolean = false)
      {
         var _loc4_:String = null;
         var _loc5_:TextField = null;
         var _loc6_:Object = null;
         var _loc7_:TextFormat = null;
         super(param1);
         this.§8#,§ = param3;
         if(param2 == null)
         {
            return;
         }
         for(_loc4_ in param2)
         {
            _loc5_ = §'%s§(_loc4_);
            if(_loc5_)
            {
               _loc6_ = param2[_loc4_];
               if(_loc6_ is String)
               {
                  _loc5_.text = String(_loc6_);
               }
               else
               {
                  if(_loc6_.fontSize)
                  {
                     _loc7_ = _loc5_.getTextFormat();
                     _loc7_.size = _loc6_.fontSize;
                     _loc5_.defaultTextFormat = _loc7_;
                  }
                  _loc5_.text = _loc6_.text;
               }
               if(param3)
               {
                  _loc5_.autoSize = TextFieldAutoSize.LEFT;
                  this.§2#0§ = Math.max(_loc5_.width,this.§2#0§);
               }
            }
         }
         this.§0"M§ = §'$a§("loading");
         this.stopAnimations();
      }
      
      override public function show(param1:Boolean = true) : void
      {
         if(this.§8#,§)
         {
            this.§#$t§();
         }
         this.playAnimations();
         super.show(param1);
      }
      
      override public function hide() : void
      {
         this.stopAnimations();
         super.hide();
      }
      
      private function §#$t§() : void
      {
         if(!this.§0#I§)
         {
            this.§0#I§ = 40 + (this.§0"M§ ? this.§0"M§.width : 0);
         }
         panel.width = this.§2#0§ + this.§0#I§ + 10;
      }
      
      override public function §3#1§(param1:String, param2:Object, param3:TextFormat = null) : TextField
      {
         var _loc4_:TextField = super.§3#1§(param1,param2,param3);
         if(this.§8#,§)
         {
            this.§2#0§ = Math.max(_loc4_.width,this.§2#0§);
            this.§#$t§();
         }
         return _loc4_;
      }
      
      public function playAnimations() : void
      {
         if(Boolean(this.§0"M§) && isVisible())
         {
            this.§0"M§.play();
         }
      }
      
      public function stopAnimations() : void
      {
         if(this.§0"M§)
         {
            this.§0"M§.stop();
         }
      }
   }
}


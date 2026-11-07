package ru.pragmatix.flox.gui.controls
{
   import § !P§.§<#q§;
   import § #m§.§[&H§;
   import § &5§.§0&$§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##j§.§!%&§;
   import §##y§.§9§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#h§.§,#;§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §-@§.*;
   import §0!§.§6#z§;
   import §0%[§.§0%§;
   import §0%j§.*;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2!-§.HpChangeEvent;
   import §2!-§.§^!9§;
   import §2#H§.§>#M§;
   import §4$b§.§2m§;
   import §6"'§.§&"3§;
   import §6_§.*;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §8#o§.§#$s§;
   import §9![§.§^§;
   import §9%W§.§!7§;
   import §<!W§.*;
   import §<"?§.*;
   import §<$2§.§<%>§;
   import §<$q§.§6%b§;
   import §<%E§.§0#G§;
   import §<%k§.§`!v§;
   import §=!p§.§9#n§;
   import §=$#§.*;
   import §=1§.*;
   import §>$q§.§4#;§;
   import §>%S§.§^!V§;
   import §?"j§.*;
   import §?#g§.Race;
   import §?$7§.§6%k§;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]$&§.§2&2§;
   import §]^§.§-$T§;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import com.greensock.TweenLite;
   import com.greensock.data.TweenLiteVars;
   import com.greensock.loading.*;
   import com.greensock.loading.core.LoaderItem;
   import config.achievements.§^t§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getQualifiedClassName;
   import org.gestouch.extensions.native.*;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§1W§;
   import ru.pragmatix.wormix.gui.§#A§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.main.server.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.ActivatePromoKey;
   import ru.pragmatix.wormix.messages.client.RemoveFromGroup;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.ReadyForBattle;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §1#g§ extends §`&-§ implements §&#>§
   {
      
      protected var §>"P§:String = "loading";
      
      protected var §?$f§:String;
      
      protected var §4#Z§:String = "ok";
      
      protected var §=#h§:String;
      
      protected var §>!-§:§?%>§;
      
      protected var loading:MovieClip;
      
      protected var §+"[§:§=#?§;
      
      protected var §5T§:§=#?§;
      
      protected var panel:DisplayObject;
      
      public function §1#g§(param1:DisplayObjectContainer = null)
      {
         super(param1);
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.loading = getChildByName("loading") as MovieClip;
         if(Boolean(this.loading) && Boolean(this.loading.text))
         {
            TextField(this.loading.text).text = §0"-§.LOADING;
            TextField(this.loading.text).autoSize = TextFieldAutoSize.LEFT;
         }
         if(this.§4#Z§)
         {
            this.§>!-§ = §!&5§.§7#[§(getChildByName(this.§4#Z§));
            if(this.§>!-§)
            {
               this.§>!-§.§[!u§(this.onOkClick);
               if(this.§=#h§)
               {
                  this.§>!-§.setText(this.§=#h§);
               }
            }
         }
         this.panel = getChildByName("panel");
      }
      
      public function §&#F§(param1:Boolean) : void
      {
         if(this.loading)
         {
            if(param1 && !§#!`§().contains(this.loading))
            {
               §?!C§(this.loading);
            }
            else if(!param1 && §#!`§().contains(this.loading))
            {
               _removeChild(this.loading);
            }
         }
         if(this.§>!-§)
         {
            this.§>!-§.setDisabled(param1);
         }
      }
      
      protected function onOkClick(param1:MouseEvent) : void
      {
         this.okAction();
      }
      
      protected function okAction() : void
      {
      }
      
      override public function destroy() : void
      {
         if(this.§>!-§)
         {
            this.§>!-§.destroy();
         }
         super.destroy();
      }
      
      public function activate() : void
      {
         if(this.§+"[§)
         {
            §@%;§.play(this.§+"[§);
         }
         if(this.§5T§)
         {
            §@%;§.§@#y§(this.§5T§);
         }
      }
      
      public function deactivate() : void
      {
         if(this.§5T§)
         {
            §@%;§.§&$w§();
         }
      }
      
      public function §%!f§(param1:§=#?§) : void
      {
         this.§+"[§ = param1;
      }
      
      public function §#!J§(param1:§=#?§) : void
      {
         this.§5T§ = param1;
      }
      
      override public function get width() : Number
      {
         return this.panel ? this.panel.width : super.width;
      }
      
      override public function set height(param1:Number) : void
      {
         if(this.panel)
         {
            this.panel.height = param1;
         }
         else
         {
            super.height = param1;
         }
      }
      
      override public function get height() : Number
      {
         return this.panel ? this.panel.height : super.height;
      }
      
      override public function set width(param1:Number) : void
      {
         if(this.panel)
         {
            this.panel.width = param1;
         }
         else
         {
            super.width = param1;
         }
      }
      
      public function §##b§(param1:String) : void
      {
         this.§=#h§ = param1;
         if(this.§>!-§)
         {
            this.§>!-§.setText(param1);
         }
      }
   }
}


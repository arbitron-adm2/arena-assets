package ru.pragmatix.flox.gui.controls
{
   import § "L§.§`#r§;
   import § #k§.*;
   import §!!i§.§@&&§;
   import §!$d§.§<$c§;
   import §!K§.§!!n§;
   import §!K§.§"%$§;
   import §!K§.§&#Q§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §"%H§.§1! §;
   import §##y§.BeforeHitEvent;
   import §##y§.CollisionEvent;
   import §#%!§.§ §;
   import §#P§.§`o§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§+$A§;
   import §%"Z§.§2"B§;
   import §%# §.§##U§;
   import §%$!§.§@!o§;
   import §&"c§.§5$n§;
   import §&#h§.§-"F§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'!Z§.§]!&§;
   import §+$=§.§6#A§;
   import §+%S§.§"$7§;
   import §+%S§.§+m§;
   import §+%S§.§;!4§;
   import §+%S§.§[&;§;
   import §+5§.§^$[§;
   import §,"v§.§9%d§;
   import §0!§.§9"u§;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0%[§.§^"5§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2#H§.§3$p§;
   import §3#T§.AtomBomb;
   import §3%J§.SpecialDealWindow;
   import §4!x§.§@& §;
   import §5#`§.§7%g§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7!B§.§+%-§;
   import §7!B§.§6#I§;
   import §7!n§.§'#n§;
   import §7!n§.§-!!§;
   import §7!n§.§2!j§;
   import §7!n§.§>!k§;
   import §7!n§.§@!g§;
   import §7!n§.§[&#§;
   import §7!n§.§`$m§;
   import §7"Q§.§"&=§;
   import §7$t§.§;#_§;
   import §7$t§.§??§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §>%S§.§^!V§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@%I§.§2R§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §[!`§.SolarSphere;
   import §^"y§.§]#i§;
   import §`%&§.§2§;
   import config.achievements.§!$L§;
   import config.achievements.§%#c§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.game.ai.§0$a§;
   import ru.pragmatix.wormix.game.ai.§3+§;
   import ru.pragmatix.wormix.game.ai.§5&6§;
   import ru.pragmatix.wormix.game.ai.§<%&§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.BuyResetBonusItems;
   import ru.pragmatix.wormix.messages.server.BuyResetBonusItemsResult;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §,#W§ extends §@& §
   {
      
      public static const §6!m§:int = 0;
      
      public static const §7"d§:int = 1;
      
      public static const §0!V§:int = 2;
      
      public static const §`$x§:int = 3;
      
      private var §="!§:TextField;
      
      private var §9b§:int = 25;
      
      private var §+#o§:int = 15;
      
      private var callback:Function;
      
      public var §!e§:Boolean = true;
      
      public function §,#W§(param1:String, param2:String, param3:int, param4:Function = null, param5:§=#?§ = null, param6:String = null, param7:Boolean = true)
      {
         var _loc9_:DisplayObject = null;
         var _loc10_:Number = NaN;
         super(§6#A§.§!&6§(param6 || § "N§.§+$t§));
         this.§!e§ = param7;
         §#7§(param1);
         this.§="!§ = TextField(getChildByName("msg"));
         var _loc8_:Number = this.§="!§.height;
         this.§="!§.autoSize = TextFieldAutoSize.CENTER;
         this.§="!§.htmlText = param2;
         this.callback = param4;
         §>!-§.setVisible(param3 != §0!V§);
         §!S§.setVisible(param3 == §7"d§ || param3 == §`$x§);
         §>!-§.setText(param3 == §`$x§ ? §0"-§.BUTTON_YES : §0"-§.BUTTON_OK);
         §!S§.setText(§0"-§.BUTTON_CANCEL);
         this.§%%R§ = param5;
         if(param7)
         {
            _loc9_ = §%!K§(§>!-§,§!S§);
            §`o§.§%&%§(_loc9_);
            _loc10_ = height - _loc9_.y;
            height += Math.max(0,this.§="!§.height - _loc8_);
            _loc9_.y = height - _loc10_;
         }
      }
      
      public static function §6!P§(param1:String, param2:String, param3:int = 0, param4:Function = null) : void
      {
         new §,#W§(param1,param2,param3,param4,§ "N§.§!% §).show();
      }
      
      public static function §-#&§(param1:String, param2:String, param3:String, param4:int = 0, param5:Function = null, param6:Function = null) : void
      {
         §=$"§(param1,param2,param3,param4,param5,param6).show();
      }
      
      public static function §'!+§(param1:String, param2:String, param3:int = 0, param4:Function = null, param5:Function = null) : §,#W§
      {
         var title:String = param1;
         var msg:String = param2;
         var buttons:int = param3;
         var onOkClick:Function = param4;
         var onCancelClick:Function = param5;
         var window:§,#W§ = new §,#W§(title,msg,buttons,onOkClick);
         if(onCancelClick != null)
         {
            window.addEventListener(§[%w§.WINDOW_CANCEL,function(param1:Event):void
            {
               onCancelClick();
            });
         }
         return window;
      }
      
      public static function §=$"§(param1:String, param2:String, param3:String, param4:int = 0, param5:Function = null, param6:Function = null) : §,#W§
      {
         var panelClassName:String = param1;
         var title:String = param2;
         var msg:String = param3;
         var buttons:int = param4;
         var onOkClick:Function = param5;
         var onCancelClick:Function = param6;
         var window:§,#W§ = new §,#W§(title,msg,buttons,onOkClick,null,panelClassName,true);
         if(onCancelClick != null)
         {
            window.addEventListener(§[%w§.WINDOW_CANCEL,function(param1:Event):void
            {
               onCancelClick();
            });
         }
         return window;
      }
      
      public static function §[#r§(param1:String, param2:String, param3:int = 0, param4:Function = null, param5:Function = null) : void
      {
         §'!+§(param1,param2,param3,param4,param5).show();
      }
      
      public static function §5%k§(param1:Object) : void
      {
         §[#r§("DEBUG",param1.toString());
      }
      
      public static function §`!U§(param1:String = "") : void
      {
         §[#r§("TODO",param1);
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §<"b§ = true;
      }
      
      override protected function okAction() : void
      {
         if(this.callback != null)
         {
            this.callback();
         }
         super.okAction();
      }
   }
}


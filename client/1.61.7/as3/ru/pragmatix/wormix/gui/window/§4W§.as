package ru.pragmatix.wormix.gui.window
{
   import §!$Z§.§"$I§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §"$+§.§<$&§;
   import §"$+§.§@C§;
   import §%"1§.§@%;§;
   import §&$Y§.*;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'%[§.§4,§;
   import §+#P§.§]!E§;
   import §-%B§.*;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%j§.§#!U§;
   import §0&F§.§0%v§;
   import §2#H§.§#$A§;
   import §2#H§.§,#V§;
   import §3"_§.*;
   import §3#a§.§-#M§;
   import §3%?§.§=E§;
   import §4#`§.*;
   import §4f§.§-&§;
   import §7$t§.§9#x§;
   import §7$t§.§^%%§;
   import §8#<§.§!#^§;
   import §<%E§.§,$2§;
   import §<%E§.§;!y§;
   import §<%k§.§`!v§;
   import §=!p§.§'%#§;
   import §=!p§.§1%?§;
   import §=!p§.§7#E§;
   import §="z§.§9%1§;
   import §>%S§.§^!V§;
   import §?$7§.§+#N§;
   import §?$L§.§ "N§;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#o§.§%%2§;
   import §`#x§.*;
   import §`%&§.§5$1§;
   import config.achievements.BossAchieves;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§4#_§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.SetCookies;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §4W§ extends §4#_§
   {
      
      private var §5&8§:§`$N§;
      
      public function §4W§(param1:DisplayObject, param2:DisplayObject)
      {
         super(param1);
         param1.addEventListener(MouseEvent.CLICK,this.§!#7§);
         var _loc3_:Boolean = §4,§.§9%B§(§8"%§.§[f§);
         setVisible(_loc3_);
         if(_loc3_)
         {
            this.§5&8§ = new §`$N§(param2);
         }
      }
      
      override protected function §%&9§() : void
      {
         super.§%&9§();
         §@$j§ = §`!v§.§!#@§;
      }
      
      override public function destroy() : void
      {
         container.removeEventListener(MouseEvent.CLICK,this.§!#7§);
         if(this.§5&8§)
         {
            this.§5&8§.destroy();
         }
         super.destroy();
      }
      
      public function §!#7§(param1:Event = null) : void
      {
         if(!this.§1;§() && Boolean(this.§5&8§))
         {
            this.§5&8§.§!<§(this.§<%m§(Application.instance,this.§5&8§.§&%Q§(),this.§5&8§.§1"9§),this.§5#Z§(Application.instance,§ "N§.stageWidth,§ "N§.stageHeight));
         }
      }
      
      public function §1;§() : Boolean
      {
         return this.§5&8§ != null && this.§5&8§.isShown();
      }
      
      private function §<%m§(param1:DisplayObject, param2:uint, param3:uint) : BitmapData
      {
         var _loc5_:Matrix = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Rectangle = null;
         var _loc4_:BitmapData = new BitmapData(param2,param3,false,0);
         if(§8"%§.§^%W§.§5!3§() && !Application.scene)
         {
            _loc6_ = param2 / § "N§.stageWidth;
            _loc7_ = 0;
            _loc8_ = § "N§.stageWidth * _loc6_;
            _loc9_ = (_loc8_ - _loc7_) / _loc6_;
            _loc10_ = new Rectangle(0,0,_loc9_,§ "N§.stageHeight);
            _loc5_ = new Matrix(param2 / § "N§.stageWidth,0,0,param3 / § "N§.stageHeight);
            _loc5_.translate(-_loc7_,0);
            _loc4_.draw(param1,_loc5_,null,null,_loc10_);
         }
         else
         {
            _loc5_ = new Matrix(param2 / § "N§.stageWidth,0,0,param3 / § "N§.stageHeight);
            _loc4_.draw(param1,_loc5_);
         }
         return _loc4_;
      }
      
      private function §5#Z§(param1:DisplayObject, param2:uint, param3:uint) : BitmapData
      {
         var _loc5_:BitmapData = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Rectangle = null;
         var _loc4_:Matrix = new Matrix(param2 / § "N§.stageWidth,0,0,param3 / § "N§.stageHeight);
         if(§8"%§.§^%W§.§5!3§() && !Application.scene)
         {
            _loc6_ = 0;
            _loc7_ = § "N§.stageWidth * _loc4_.a;
            _loc8_ = _loc7_ - _loc6_;
            _loc9_ = new Rectangle(0,0,_loc8_,§ "N§.stageHeight);
            _loc5_ = new BitmapData(_loc8_,_loc9_.height,false,0);
            _loc4_.translate(-_loc6_,0);
            _loc5_.draw(param1,_loc4_,null,null,_loc9_);
         }
         else
         {
            _loc5_ = new BitmapData(param2,param3);
            _loc5_.draw(param1,_loc4_);
         }
         return _loc5_;
      }
   }
}


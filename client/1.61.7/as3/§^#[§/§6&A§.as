package §^#[§
{
   import § #9§.§"$t§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §&&6§.*;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §3#a§.§-#M§;
   import §4$b§.§6!G§;
   import §4'§.§^"p§;
   import §7!-§.§%k§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=&!§.§<$Z§;
   import §=7§.*;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!i§.§"-§;
   import §@%I§.§2R§;
   import §@<§.§+%]§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObjectContainer;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ArenaResult;
   import ru.pragmatix.wormix.messages.structures.BossBattleAwardsStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionDailyProgressTO;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.common.post.*;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§>!n§;
   
   public class §6&A§
   {
      
      private static var log:§&`§ = new §&`§(§6&A§);
      
      public function §6&A§()
      {
         super();
      }
      
      public static function §,&!§(param1:ByteArray, param2:String) : void
      {
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeBytes(param1);
         _loc3_.writeUTFBytes(param2);
         var _loc4_:ByteArray = §%k§.hash(_loc3_);
         _loc4_.position = 0;
         param1.writeBytes(_loc4_,0,_loc4_.bytesAvailable);
      }
      
      public static function isSecure(param1:ByteArray, param2:String) : Boolean
      {
         param1.position = 0;
         var _loc3_:ByteArray = new ByteArray();
         param1.readBytes(_loc3_,0,param1.bytesAvailable - 16);
         _loc3_.position = _loc3_.length;
         _loc3_.writeUTFBytes(param2);
         var _loc4_:ByteArray = §%k§.hash(_loc3_);
         _loc4_.position = 0;
         var _loc5_:int = 0;
         while(_loc5_ < 16)
         {
            if(_loc4_.readByte() != param1.readByte())
            {
               return false;
            }
            _loc5_++;
         }
         return true;
      }
      
      private static function §!%F§(param1:ByteArray) : String
      {
         var _loc2_:String = "";
         param1.position = 0;
         while(param1.bytesAvailable > 0)
         {
            _loc2_ += " " + param1.readUnsignedByte().toString(16);
         }
         return _loc2_.toLocaleUpperCase();
      }
   }
}


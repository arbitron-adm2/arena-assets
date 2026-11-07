package ru.pragmatix.wormix.messages.server
{
   import §!L§.§+"'§;
   import §##j§.§`%g§;
   import §%"1§.§@%;§;
   import §%$!§.§9$p§;
   import §%$!§.§@!o§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §7$1§.§;$n§;
   import §;!Z§.*;
   import §<%k§.§`!v§;
   import §?"j§.*;
   import §?#g§.§"&>§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §]^§.§3$f§;
   import §^#[§.§&$2§;
   import config.§28§;
   import config.achievements.§!$L§;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class SellStuffResult
   {
      
      public var stuffIds:Vector.<int>;
      
      public var awards:Array;
      
      public var isSecure:Boolean;
      
      public var sessionKey:String;
      
      public function SellStuffResult()
      {
         super();
      }
      
      public function toString() : String
      {
         return "SellStuffResult {" + " stuffIds=" + this.stuffIds + ", awards=" + this.awards + " }";
      }
   }
}


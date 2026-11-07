package ru.pragmatix.wormix.messages.clans
{
   import § $q§.§<"]§;
   import §"!C§.§2v§;
   import §"#x§.§'"$§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%&3§.§'C§;
   import §&#h§.*;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §8#a§.§>!o§;
   import §<$q§.§6%b§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §=$#§.*;
   import §?$K§.§=z§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.GetQuestProgressResult;
   import ru.pragmatix.wormix.messages.structures.QuestProgressStructure;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class ClanServiceResult
   {
      
      private static var §?#u§:Vector.<ClanServiceResult> = new Vector.<ClanServiceResult>();
      
      public static const OK:ClanServiceResult = new ClanServiceResult(0,"OK");
      
      public static const ERR_INCORRECT_PROTOCOL:ClanServiceResult = new ClanServiceResult(1,"ERR_INCORRECT_PROTOCOL");
      
      public static const ERR_ALREADY_IN_GAME:ClanServiceResult = new ClanServiceResult(2,"ERR_ALREADY_IN_GAME");
      
      public static const ERR_CHEAT:ClanServiceResult = new ClanServiceResult(11,"ERR_CHEAT");
      
      public static const ERR_BAN:ClanServiceResult = new ClanServiceResult(12,"ERR_BAN");
      
      public static const ERR_RUNTIME:ClanServiceResult = new ClanServiceResult(14,"ERR_RUNTIME");
      
      public static const ERR_INDEFINITE:ClanServiceResult = new ClanServiceResult(15,"ERR_INDEFINITE");
      
      public static const ERR_DEADLOCK:ClanServiceResult = new ClanServiceResult(16,"ERR_DEADLOCK");
      
      public static const ERR_ACCESS_DENIED:ClanServiceResult = new ClanServiceResult(102,"ERR_ACCESS_DENIED");
      
      public static const ERR_INVALID_ARGUMENT:ClanServiceResult = new ClanServiceResult(104,"ERR_INVALID_ARGUMENT");
      
      public static const ERR_NOT_ENOUGH_MONEY:ClanServiceResult = new ClanServiceResult(105,"ERR_NOT_ENOUGH_MONEY");
      
      public static const ERR_REQUIREMENTS_FAILURE:ClanServiceResult = new ClanServiceResult(106,"ERR_REQUIREMENTS_FAILURE");
      
      public static const ERR_NOT_FOUND:ClanServiceResult = new ClanServiceResult(109,"ERR_NOT_FOUND");
      
      public static const ERR_INTEROP:ClanServiceResult = new ClanServiceResult(110,"ERR_INTEROP");
      
      public static const ERR_INVALID_STATE:ClanServiceResult = new ClanServiceResult(111,"ERR_INVALID_STATE");
      
      public static const ERR_NOT_ENOUGH_TREAS:ClanServiceResult = new ClanServiceResult(112,"ERR_NOT_ENOUGH_TREAS");
      
      public static const ERR_NOT_ENOUGH_RATING:ClanServiceResult = new ClanServiceResult(114,"ERR_NOT_ENOUGH_RATING");
      
      public static const ERR_ALREADY_IN_CLAN:ClanServiceResult = new ClanServiceResult(201,"ERR_ALREADY_IN_CLAN");
      
      public static const ERR_NOT_IN_CLAN:ClanServiceResult = new ClanServiceResult(202,"ERR_NOT_IN_CLAN");
      
      public static const ERR_CLAN_SIZE_LIMIT:ClanServiceResult = new ClanServiceResult(203,"ERR_CLAN_SIZE_LIMIT");
      
      public static const ERR_CLAN_INVITE_LIMIT:ClanServiceResult = new ClanServiceResult(204,"ERR_CLAN_INVITE_LIMIT");
      
      public static const ERR_PROFILE_INVITE_LIMIT:ClanServiceResult = new ClanServiceResult(205,"ERR_PROFILE_INVITE_LIMIT");
      
      public static const ERR_REPEATED_INVITE:ClanServiceResult = new ClanServiceResult(206,"ERR_REPEATED_INVITE");
      
      public static const ERR_CLAN_NAME_EXISTS:ClanServiceResult = new ClanServiceResult(207,"ERR_CLAN_NAME_EXISTS");
      
      public static const ERR_CLAN_LOCKED:ClanServiceResult = new ClanServiceResult(208,"ERR_CLAN_LOCKED");
      
      public static const ERR_EMPTY_SOCIAL_ID:ClanServiceResult = new ClanServiceResult(18,"ERR_EMPTY_SOCIAL_ID");
      
      public var code:int;
      
      public var name:String;
      
      public function ClanServiceResult(param1:int, param2:String)
      {
         super();
         this.code = param1;
         this.name = param2;
         §?#u§.push(this);
      }
      
      public static function getResultByCode(param1:int) : ClanServiceResult
      {
         var _loc2_:ClanServiceResult = null;
         for each(_loc2_ in §?#u§)
         {
            if(_loc2_.code == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function toString() : String
      {
         return "ClanServiceResult{" + "code=" + this.code + ",name=" + this.name + "}";
      }
   }
}


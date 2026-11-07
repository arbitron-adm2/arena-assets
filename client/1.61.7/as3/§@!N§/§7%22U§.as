package §@!N§
{
   import §%L§.§%%w§;
   import §&#h§.*;
   import §&&6§.*;
   import §+#P§.§]!E§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §2#i§.§+%z§;
   import §8#<§.§!#^§;
   import §?#g§.Race;
   import §@<§.§+%]§;
   import flash.events.Event;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.server.GetQuestProgressResult;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.utils.*;
   
   public class §7"U§
   {
      
      private static const §>%&§:RegExp = /(ftp|http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/;
      
      public function §7"U§()
      {
         super();
      }
      
      public static function §>$A§(param1:String) : String
      {
         return param1.replace(§>%&§,"<a href=\'$&\' target=\'_blank\'>$&</a>");
      }
   }
}


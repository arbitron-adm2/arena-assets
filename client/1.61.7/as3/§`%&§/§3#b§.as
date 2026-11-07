package §`%&§
{
   import §!!i§.§@&&§;
   import §!L§.§7%0§;
   import §#k§.§9$v§;
   import §%# §.§##U§;
   import §&!?§.§+" §;
   import §&#W§.§?#]§;
   import §&#h§.*;
   import §+#P§.§]!E§;
   import §+$=§.§6#A§;
   import §,$J§.§,$O§;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §8#<§.§!#^§;
   import §9%W§.§&!P§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §?#g§.Race;
   import §@!i§.§8%6§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequestMethod;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.messages.server.EnterAccount;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §3#b§ extends §2z§
   {
      
      private static const §;"=§:int = 50;
      
      public function §3#b§(param1:uint, param2:uint, param3:uint)
      {
         super(param1,param2);
         §,%H§ = param3 * 1.1;
         §-!I§ = param3 * 0.8;
         §1%A§ = param3 * 0.4;
      }
      
      override public function test(param1:§+%]§, param2:int, param3:int, param4:Number) : Object
      {
         var _loc5_:Object = §"$b§(param1,param2,param3,param4);
         if(_loc5_ != null && param1.hp < §-q§.§8$G§(§;"=§,param1.attributes.hp.§#&"§()))
         {
            return {
               "angle":_loc5_.angle,
               "power":§4_§,
               "clearPathPc":100,
               "rate":_loc5_.rate
            };
         }
         return null;
      }
   }
}


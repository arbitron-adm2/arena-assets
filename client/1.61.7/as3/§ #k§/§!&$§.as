package § #k§
{
   import § !P§.*;
   import §"$+§.§`&$§;
   import §#k§.§9$v§;
   import §'!Z§.§2!H§;
   import §+%S§.§ #R§;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §<"L§.*;
   import §>%S§.§^!V§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^4§.§9!K§;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.IncomingClanMessage;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.client.GetAchievements;
   import ru.pragmatix.wormix.messages.server.AddToGroupResult;
   import ru.pragmatix.wormix.messages.server.SelectRaceResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §!&$§ extends §3%0§
   {
      
      private static const §!$5§:int = 20;
      
      private var §%"O§:Dictionary = new Dictionary();
      
      public function §!&$§(param1:§+%]§, param2:Number, param3:Number)
      {
         name = §`"[§;
         clips = [§`%^§,§1`§,§1$_§];
         super(param1,param2,param3);
         if(!param1.disposed)
         {
            this.buff(1);
         }
      }
      
      private static function textColor(param1:int) : String
      {
         return param1 > 0 ? §2!H§.§5"H§ : §2!H§.§8"<§;
      }
      
      public function buff(param1:int) : void
      {
         var _loc4_:§+%]§ = null;
         var _loc2_:int = §!$5§ * param1;
         this.§3%<§(owner,_loc2_);
         param1 = param1 < 0 ? 1 : -1;
         _loc2_ = §!$5§ * param1;
         var _loc3_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(owner);
         for each(_loc4_ in _loc3_)
         {
            if(param1 < 0)
            {
               this.§%"O§[_loc4_] = true;
               this.§3%<§(_loc4_,_loc2_);
            }
            else if(param1 > 0 && Boolean(this.§%"O§[_loc4_]))
            {
               this.§3%<§(_loc4_,_loc2_);
            }
         }
      }
      
      public function §3%<§(param1:§+%]§, param2:int) : void
      {
         param1.attributes.armor.§5#l§(param2);
         param1.attributes.attack.§5#l§(param2);
         §2!H§.§'!i§(§0%§.format(§0$N§.ATTRIBUTES_BONUS,{
            "symbol":(param2 > 0 ? "+" : ""),
            "value":param2
         }),textColor(param2),param1.x + param1.width,param1.y + param1.height * 0.5,20);
      }
      
      override public function §[$u§(param1:Event) : void
      {
         if(!Application.scene.§@$I§.§=%d§() && !owner.disposed)
         {
            this.buff(-1);
         }
         super.§[$u§(param1);
      }
   }
}


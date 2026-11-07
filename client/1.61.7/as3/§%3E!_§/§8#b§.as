package §>!_§
{
   import §!L§.§+"'§;
   import §"$+§.§ G§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §#%!§.§%&F§;
   import §%#u§.§`"_§;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §3#T§.*;
   import §3%?§.§=E§;
   import §7"Q§.§"&=§;
   import §7$t§.§=?§;
   import §8$Z§.§9"t§;
   import §<!W§.§=!6§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import config.§;"I§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §8#b§ extends §"&=§
   {
      
      private var bgButton:§?%>§;
      
      private var §`!R§:ClanTO;
      
      public function §8#b§()
      {
         super(§6#A§.§!&6§(§+"'§.§,!S§));
         this.bgButton = §!&5§.§7#[§(getChildByName("bgButton"));
         this.bgButton.§[!u§(this.§[!w§);
      }
      
      private function §[!w§(param1:Event) : void
      {
         §9"t§.§]"N§(this.§`!R§.id);
      }
      
      public function update(param1:ClanTO) : void
      {
         var _loc2_:MovieClip = null;
         this.§`!R§ = param1;
         _loc2_ = §'$a§("logo");
         _loc2_.mouseEnabled = false;
         _loc2_.mouseChildren = false;
         var _loc3_:DisplayObjectContainer = _loc2_.getChildByName("logo") as DisplayObjectContainer;
         §=%_§.§!-§(_loc3_,param1.emblem);
         var _loc4_:TextField = §'%s§("title");
         §&$9§.§>&F§(_loc4_,§"-§.§+$m§,param1.name);
         _loc4_.mouseEnabled = false;
         var _loc5_:TextField = §'%s§("status");
         §&$9§.§>&F§(_loc5_,§"-§.§+$m§,this.§<%,§(param1));
         _loc5_.mouseEnabled = false;
         var _loc6_:TextField = §'%s§("capacity");
         §&$9§.§>&F§(_loc6_,§"-§.§6"j§,String(param1.size + "/" + § G§.getLevel(param1.level).capacity));
         _loc6_.mouseEnabled = false;
         var _loc7_:TextField = §'%s§("rating");
         §&$9§.§>&F§(_loc7_,§"-§.§6"j§,§2"e§.§5%t§(param1.seasonRating));
         _loc7_.mouseEnabled = false;
         var _loc8_:MovieClip = §'$a§("cup");
         _loc8_.mouseChildren = false;
         _loc8_.mouseEnabled = false;
      }
      
      private function §<%,§(param1:ClanTO) : String
      {
         if(param1.joinRating == -1)
         {
            return §0$N§.CLOSE_CLAN;
         }
         if(param1.joinRating == 0)
         {
            return §0$N§.OPEN_CLAN;
         }
         return §0%§.format(§0$N§.OPEN_FOR_RATING,{"value":param1.joinRating});
      }
   }
}


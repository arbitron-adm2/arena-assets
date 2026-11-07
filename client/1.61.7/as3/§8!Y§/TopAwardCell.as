package §8!Y§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import § $q§.§-%f§;
   import § $q§.§3U§;
   import §!$d§.§<$c§;
   import §!K§.§"%$§;
   import §"$+§.*;
   import §"% §.LevelUpDialog;
   import §#%!§.§[N§;
   import §%L§.§%%w§;
   import §'"N§.§4&5§;
   import §+$=§.§6#A§;
   import §-@§.*;
   import §0!§.§9"u§;
   import §3#T§.*;
   import §4'§.§^"p§;
   import §4f§.§-&§;
   import §4u§.§;$H§;
   import §5!b§.*;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §="z§.§9%1§;
   import §=#g§.*;
   import §=&!§.§<$!§;
   import §@<§.§+%]§;
   import §[$<§.§>"9§;
   import §]^§.§4&+§;
   import §^!"§.§"$k§;
   import §^!"§.§0^§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.core.*;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.*;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.interfaces.§=!s§;
   
   public class TopAwardCell extends §3U§
   {
      
      private var icon:§3U§;
      
      public function TopAwardCell()
      {
         super(§6#A§.§!&6§("TopAwardCell"));
         this.icon = new §3U§(getChildByName("icon"),true);
      }
      
      public function §3§(param1:§`#Q§) : void
      {
         var _loc2_:§^$E§ = §<$c§.§^&1§(param1.itemId,Application.userProfile.getRace());
         this.setItem(_loc2_);
         this.§;"J§(param1.§;&#§,param1.§[%v§);
         this.§@$h§(param1.§;&#§);
      }
      
      override public function setItem(param1:§&!e§, param2:§;$H§ = null) : void
      {
         this.icon.setItem(param1);
      }
      
      public function §;"J§(param1:uint, param2:uint = 0) : void
      {
         if(param2 == 0)
         {
            §7&5§.§?$k§(§'%s§("positions"),String(param1));
         }
         else
         {
            §7&5§.§?$k§(§'%s§("positions"),String(param1 + "-" + param2));
         }
      }
      
      private function §@$h§(param1:uint) : void
      {
         var _loc2_:DisplayObject = getChildByName("gold");
         _loc2_.visible = false;
         var _loc3_:DisplayObject = getChildByName("silver");
         _loc3_.visible = false;
         var _loc4_:DisplayObject = getChildByName("bronse");
         _loc4_.visible = false;
         if(param1 == 1)
         {
            _loc2_.visible = true;
         }
         else if(param1 > 1 && param1 <= 10)
         {
            _loc3_.visible = true;
         }
         else
         {
            _loc4_.visible = true;
         }
      }
   }
}


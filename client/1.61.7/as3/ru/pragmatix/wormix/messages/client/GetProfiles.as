package ru.pragmatix.wormix.messages.client
{
   import § #m§.§;#^§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §&&6§.*;
   import §'!Z§.§2!%§;
   import §-%B§.*;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §2#H§.§<§;
   import §3"_§.*;
   import §3#a§.§-#M§;
   import §<%E§.§,$2§;
   import §<%E§.§6#`§;
   import §?$K§.§`""§;
   import §?>§.§]!V§;
   import §@<§.§+%]§;
   import com.adobe.serialization.json.JSON;
   import com.greensock.TweenMax;
   import flash.display.DisplayObjectContainer;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.pvp.messages.server.PvpSystemMessage;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class GetProfiles
   {
      
      public var sessionKey:String;
      
      public var ids:Vector.<String>;
      
      public function GetProfiles()
      {
         super();
      }
      
      public function toString() : String
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         if(this.ids != null)
         {
            _loc1_ = "[";
            for each(_loc2_ in this.ids)
            {
               _loc1_ += _loc2_ + " ";
            }
            _loc1_ += "]";
            return "GetProfiles{ids= " + _loc1_ + " }";
         }
         return "GetProfiles{ids = null}";
      }
   }
}


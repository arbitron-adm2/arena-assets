package §=#y§
{
   import § !8§.§`!d§;
   import § #m§.§2#P§;
   import § #m§.§;#^§;
   import § %"§.§"%5§;
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§7%f§;
   import §,"v§.§9%d§;
   import §0!§.§[k§;
   import §0%[§.§1%"§;
   import §0%[§.§6!?§;
   import §0%[§.§^"5§;
   import §0&F§.§0%v§;
   import §2"L§.§^$y§;
   import §2#H§.§+N§;
   import §2#i§.§+%z§;
   import §4'§.§^"p§;
   import §7!B§.§&"T§;
   import §7$t§.§??§;
   import §9%W§.§!"G§;
   import §<%k§.§`!v§;
   import §?"j§.§]!<§;
   import §?$L§.§0"-§;
   import §@!i§.§<!9§;
   import §@8§.§%Z§;
   import §@<§.§+%]§;
   import §]$v§.§+%n§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import §`%&§.§5$1§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.client.BuyColiseumTicket;
   import ru.pragmatix.wormix.messages.client.SellStuff;
   import ru.pragmatix.wormix.messages.server.SellStuffResult;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.CallToBattleResultType;
   import ru.pragmatix.wormix.serialization.ServerCommands;
   import ru.pragmatix.wormix.social.Social;
   
   public class §"#K§ extends §+#D§
   {
      
      public function §"#K§(param1:Function, param2:MovieClip, param3:String, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function §`$+§(param1:UserProfile = null) : void
      {
         var _loc2_:§`!d§ = null;
         var _loc3_:§`!d§ = null;
         reset();
         var _loc4_:Vector.<§`!d§> = Application.userProfile.§;$F§();
         var _loc5_:int = 0;
         var _loc6_:int = int(_loc4_.length);
         while(_loc5_ < _loc6_)
         {
            _loc2_ = _loc4_[_loc5_];
            if(_loc2_ is §`!d§)
            {
               §+!§.push(_loc2_);
               if(param1.getRace() == _loc2_)
               {
                  _loc3_ = _loc2_ as §`!d§;
               }
            }
            _loc5_++;
         }
         if(§+!§.length <= 1)
         {
            §8%M§.setDisabled(true);
         }
         else
         {
            index = §6!?§.indexOf(§+!§,_loc3_);
         }
         §?"?§ = §+!§.length - 1;
      }
      
      public function §!"B§() : §`!d§
      {
         return §"#D§() as §`!d§;
      }
   }
}


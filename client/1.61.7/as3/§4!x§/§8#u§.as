package §4!x§
{
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#%!§.§^%c§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §'!Z§.§2!H§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-8§.§3!x§;
   import §0%[§.§>&&§;
   import §0&F§.§0%v§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §4#`§.§+!l§;
   import §4f§.§-&§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$t§.§;#_§;
   import §8#o§.§#$s§;
   import §9%W§.§&!P§;
   import §;$8§.§6"E§;
   import §<%E§.§=$u§;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §?$L§.§0"-§;
   import §@!N§.§&#Z§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.main.server.InviteFriendToClan;
   import ru.pragmatix.wormix.messages.clans.response.ListClansResponse;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.messages.server.DowngradeWeaponResult;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.server.MercenariesStateResponse;
   import ru.pragmatix.wormix.messages.structures.BossBattleWinAwardStructure;
   import ru.pragmatix.wormix.messages.structures.HeroicBossBattleAwardStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §8#u§
   {
      
      private static const §7F§:§8#u§ = new §8#u§();
      
      private var §'!<§:Vector.<§@& §> = new Vector.<§@& §>(0);
      
      public function §8#u§()
      {
         super();
      }
      
      internal static function §!D§(param1:§@& §) : void
      {
         §7F§.§'!<§.push(param1);
      }
      
      internal static function §6"_§(param1:§@& §) : void
      {
         §>&&§.remove(§7F§.§'!<§,param1);
      }
      
      public static function §0%5§() : Boolean
      {
         var _loc1_:§@& § = null;
         for each(_loc1_ in §7F§.§'!<§)
         {
            if(_loc1_.§ #P§())
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §^!c§() : void
      {
         var _loc1_:§@& § = null;
         for each(_loc1_ in §7F§.§'!<§)
         {
            _loc1_.hide();
         }
         §7F§.§'!<§ = new Vector.<§@& §>(0);
      }
      
      public static function §!s§() : void
      {
         var _loc1_:§@& § = null;
         for each(_loc1_ in §7F§.§'!<§)
         {
            _loc1_.§!s§();
         }
      }
   }
}


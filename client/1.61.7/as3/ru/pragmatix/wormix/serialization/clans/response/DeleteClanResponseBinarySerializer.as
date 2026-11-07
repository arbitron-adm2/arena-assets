package ru.pragmatix.wormix.serialization.clans.response
{
   import § &5§.§@N§;
   import §!L§.§+"'§;
   import §"$+§.§`&$§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%$!§.§@!o§;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0%[§.Cookie;
   import §0&F§.§0%v§;
   import §2"L§.§!#H§;
   import §2#H§.§!%C§;
   import §3#a§.§-#M§;
   import §4!!§.§'$V§;
   import §5!,§.§9$h§;
   import §7!B§.§&"T§;
   import §;$%§.§'%W§;
   import §<%k§.§`!v§;
   import §=&!§.§<$Z§;
   import §=;§.*;
   import §?$7§.§!§;
   import §?$L§.§0"-§;
   import §@!N§.§3!3§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §]$J§.§#"s§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`#x§.§"$r§;
   import config.achievements.BossAchieves;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.response.DeleteClanResponse;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class DeleteClanResponseBinarySerializer implements §&"a§
   {
      
      public function DeleteClanResponseBinarySerializer()
      {
         super();
      }
      
      public function serializeCommand(param1:Object, param2:IDataOutput) : void
      {
      }
      
      public function deserializeCommand(param1:IDataInput, param2:§9%d§) : Object
      {
         var _loc3_:DeleteClanResponse = new DeleteClanResponse();
         _loc3_.serviceResult = param1.readShort();
         _loc3_.comeback = param1.readInt();
         return _loc3_;
      }
      
      public function getCommandId() : uint
      {
         return ClanMessages.DELETE_CLAN_RESPONSE;
      }
   }
}


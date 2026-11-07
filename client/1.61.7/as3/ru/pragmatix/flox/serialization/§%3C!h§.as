package ru.pragmatix.flox.serialization
{
   import § m§.§9!^§;
   import §!L§.§+"'§;
   import §"%H§.§`"w§;
   import §#$e§.§!a§;
   import §#P§.§`o§;
   import §%"1§.§+#h§;
   import §%"1§.§=#?§;
   import §%# §.§##U§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'%[§.§ i§;
   import §'%[§.§3%5§;
   import §'%[§.§4!C§;
   import §'%[§.§@"4§;
   import §'%[§.§]$5§;
   import §+$=§.§6#A§;
   import §,"v§.§&"a§;
   import §,"v§.§9%d§;
   import §,"v§.§@#&§;
   import §-%B§.*;
   import §-@§.*;
   import §0%[§.*;
   import §0%j§.§0$+§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#o§.§-#d§;
   import §2#i§.§+%z§;
   import §2#x§.§]s§;
   import §3"_§.§?#w§;
   import §3#a§.§<#_§;
   import §7"Q§.§0$L§;
   import §9"-§.§?!s§;
   import §=&!§.§]$d§;
   import §?$K§.§3#j§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.MouseEvent;
   import flash.media.SoundTransform;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.getQualifiedClassName;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.clans.main.server.InviteFriendToClan;
   import ru.pragmatix.wormix.messages.clans.request.edit.ChangeClanDescriptionRequest;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanDescriptionResponse;
   import ru.pragmatix.wormix.messages.server.OpenChestResult;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §<!h§ extends § $7§
   {
      
      private static const §]!^§:§&`§ = new §&`§(§<!h§);
      
      private static const §,b§:Vector.<String> = new <String>["data/serializers.xml"];
      
      private static var §7F§:§<!h§ = null;
      
      public function §<!h§(param1:String, param2:String)
      {
         super(param1,param2,§<!h§.§,b§);
         if(§7F§ == null)
         {
            §7F§ = this;
            return;
         }
         throw new IllegalOperationError("double instatce for singelton BinarySerializer");
      }
      
      public static function getInstance() : §<!h§
      {
         return §<!h§.§7F§;
      }
      
      public static function §@%$§(param1:Object) : §@#&§
      {
         return §@#&§(§7F§.§9Y§[getQualifiedClassName(param1)]);
      }
      
      public static function §5"l§(param1:Object) : §&"a§
      {
         return §&"a§(§7F§.§9!+§[getQualifiedClassName(param1)]);
      }
      
      override protected function get log() : §&`§
      {
         return §]!^§;
      }
   }
}


package §=&6§
{
   import § &5§.§=#P§;
   import § m§.§9!^§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §"%H§.§`"w§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §%"Z§.§2"B§;
   import §%# §.§##U§;
   import §%$!§.§@!o§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&$Y§.§2$4§;
   import §&%X§.§-#N§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§@x§;
   import §,"v§.§9%d§;
   import §0!§.§[k§;
   import §0%[§.§^"5§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#o§.§-#d§;
   import §2#H§.§+N§;
   import §2#i§.§+%z§;
   import §5!,§.§?!P§;
   import §5#`§.§7%g§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §8$V§.*;
   import §9"-§.§?!s§;
   import §9%W§.§!"G§;
   import §;!J§.§8!a§;
   import §<$2§.§+$9§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §<K§.*;
   import §?"j§.*;
   import §?#g§.§"&>§;
   import §?$L§.§ "N§;
   import §@!N§.*;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[!`§.§!$^§;
   import §[%§.Boar;
   import §]^§.§3$f§;
   import §^!]§.MineSetUpEvent;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§?"&§;
   import §^4§.§@#J§;
   import §`%&§.§5$1§;
   import config.§28§;
   import config.achievements.*;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetFriendListPage;
   import ru.pragmatix.wormix.messages.server.EquipExpired;
   import ru.pragmatix.wormix.messages.server.GetFriendListPageResult;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§!!"§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §[$f§ extends §2$4§
   {
      
      public function §[$f§(param1:§1#+§)
      {
         super(param1);
      }
      
      override public function §&"J§(param1:§2"B§) : String
      {
         return "";
      }
      
      override public function §-"U§() : String
      {
         return §8"%§.§[f§.§0#C§() + "/wormix.club/album/52415149965558";
      }
      
      override public function §1"@§() : Boolean
      {
         return true;
      }
      
      override public function §!"?§() : String
      {
         return §8"%§.§[f§.§0#C§() + "/settings";
      }
      
      override public function §"!5§() : Boolean
      {
         return true;
      }
      
      override public function §8!?§() : Boolean
      {
         return !§8"%§.context.§]"&§().isLocal();
      }
      
      override public function §9!@§() : Date
      {
         return new Date(2015,1,1,0,0);
      }
      
      override public function §>Y§() : String
      {
         return "stub_50x50.gif";
      }
      
      override public function §@%"§(param1:String) : String
      {
         return §8"%§.§[f§.§0#C§() + "/profile/" + param1;
      }
   }
}


package §=!p§
{
   import §"#x§.§'"$§;
   import §#!5§.§>S§;
   import §%"1§.§7#P§;
   import §%"1§.§=#?§;
   import §%"1§.§@%;§;
   import §%L§.§%§;
   import §%L§.§%%w§;
   import §%L§.§'$T§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+#U§.§'#w§;
   import §+$=§.*;
   import §-G§.§&"7§;
   import §0%[§.§>&&§;
   import §0%z§.BossAchieveHint;
   import §2#V§.§-#U§;
   import §4!!§.§76§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §9%W§.§&!P§;
   import §<%k§.§`!v§;
   import §=&!§.§]$d§;
   import §@!N§.§3!3§;
   import §@<§.§+%]§;
   import §]^§.§-$T§;
   import §^"y§.§]#i§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.media.SoundTransform;
   import flash.ui.Mouse;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.main.server.InviteFriendToClan;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §1%?§
   {
      
      public static const §8$S§:§1%?§ = new §1%?§(1,"male");
      
      public static const §<&2§:§1%?§ = new §1%?§(0,"female");
      
      private var §`B§:int;
      
      private var §4"4§:String;
      
      public function §1%?§(param1:int, param2:String = "")
      {
         super();
         this.§`B§ = param1;
         this.§4"4§ = param2;
      }
      
      public static function valueOf(param1:int) : §1%?§
      {
         if(param1 == 0)
         {
            return §<&2§;
         }
         return §8$S§;
      }
      
      public function toString() : String
      {
         return "Gender {" + " code=" + this.§`B§ + " name=" + this.§4"4§ + " }";
      }
      
      public function equals(param1:§1%?§) : Boolean
      {
         return Boolean(param1) && this.code == param1.code;
      }
      
      public function get code() : int
      {
         return this.§`B§;
      }
      
      public function get name() : String
      {
         return this.§4"4§;
      }
   }
}


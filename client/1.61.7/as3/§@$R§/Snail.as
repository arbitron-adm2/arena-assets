package §@$R§
{
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §%L§.§%§;
   import §%L§.§%%w§;
   import §&#W§.§4#T§;
   import §+%S§.§"!q§;
   import §+5§.§8$W§;
   import §-G§.§&"7§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#V§.§-#U§;
   import §3"_§.*;
   import §3#T§.Meteor;
   import §4!!§.§76§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6%2§.§#"B§;
   import §7$t§.§;#_§;
   import §8$V§.*;
   import §<%k§.§`!v§;
   import §>%S§.§^!V§;
   import §?$L§.§0"-§;
   import §@!i§.§!m§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import com.inreflected.ui.touchScroll.VelocityCalculator;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanMemberStructure;
   import ru.pragmatix.wormix.messages.clans.main.server.InviteFriendToClan;
   import ru.pragmatix.wormix.messages.client.SetBackpackConf;
   import ru.pragmatix.wormix.messages.structures.BackpackConfStructure;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class Snail extends §+%]§
   {
      
      internal static const §&! §:int = 20;
      
      internal static const §0o§:int = 6;
      
      internal static const §1#?§:int = 4;
      
      public function Snail(param1:UserProfile, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
         attributes.§8$e§.§5#l§(-§&! §);
         attributes.jump.§]x§(-§0o§);
         attributes.jump.§9"y§(-§1#?§);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         super.§""0§(param1);
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
      }
   }
}


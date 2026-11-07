package §?$K§
{
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"%H§.§'%u§;
   import §"%H§.§1! §;
   import §"%H§.§6$3§;
   import §#"V§.§!&5§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&!m§.§-$6§;
   import §&"c§.§5$n§;
   import §&#E§.§;"v§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0%[§.§1%"§;
   import §0%[§.§]%s§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §1#0§.§;!L§;
   import §3#T§.AtomBomb;
   import §3#a§.§-#M§;
   import §4$b§.§2m§;
   import §5#`§.§7%g§;
   import §65§.§5#A§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §7$t§.§&!e§;
   import §7$t§.§^$E§;
   import §7$t§.§^%%§;
   import §8$Z§.§9!&§;
   import §<$q§.§"%r§;
   import §<$q§.§,%3§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%E§.§4T§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §="z§.§9%1§;
   import §=$#§.§1!$§;
   import §>%S§.§^!V§;
   import §?$7§.§+l§;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §^!]§.MineSetUpEvent;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import com.greensock.loading.*;
   import com.greensock.loading.core.LoaderCore;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.§-"P§;
   import ru.pragmatix.wormix.messages.client.GetAchievements;
   import ru.pragmatix.wormix.messages.client.GetBundles;
   import ru.pragmatix.wormix.messages.client.GetColiseumReward;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.structures.ProfileDoubleKeyStructure;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §=z§ extends §5#A§
   {
      
      public static const NAME:String = "BOUNCE_PROTECTION_BUFF";
      
      private var §8<§:§]$q§;
      
      public function §=z§(param1:String = "BOUNCE_PROTECTION_BUFF", param2:int = -1)
      {
         super(param1,param2,1);
      }
      
      public static function §-L§(param1:§&"T§) : Point
      {
         var _loc2_:§+%]§ = Boolean(param1) && Boolean(!param1.disposed) && param1 is §+%]§ ? param1 as §+%]§ : null;
         return Boolean(_loc2_) && _loc2_.buffs.hasBuff(NAME) ? new Point(_loc2_.x,_loc2_.y) : null;
      }
      
      public static function §5!u§(param1:§&"T§, param2:Point) : void
      {
         if(param2)
         {
            param1.setSpeedXY(0,0);
            param1.x = param2.x;
            param1.y = param2.y;
         }
      }
      
      override protected function §5#F§() : void
      {
         this.§8<§ = new §]$q§(NAME);
         this.§8<§.§3%<§(new §@"I§(Bonus.FORTITUDE,100));
         unit.bonuses.§]!X§(this.§8<§);
      }
      
      override protected function §0&"§() : void
      {
         unit.bonuses.§9=§(this.§8<§);
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §=z§(NAME,duration.value));
      }
      
      public function setDuration(param1:int) : void
      {
         duration.value = param1;
      }
   }
}


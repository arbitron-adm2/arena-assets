package §2#H§
{
   import § !8§.§`!d§;
   import § "L§.RebelRobotTurret;
   import §!!i§.§@&&§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"% §.LevelUpDialog;
   import §#"V§.§!&5§;
   import §#"V§.§'$h§;
   import §#"V§.§8"@§;
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §'!Z§.§1"-§;
   import §'!Z§.§2!H§;
   import §'!Z§.§6S§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§ #R§;
   import §+%S§.§2$#§;
   import §,"v§.§9%d§;
   import §,$J§.§,$O§;
   import §-%B§.*;
   import §0!Y§.§#!Z§;
   import §0"L§.*;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §2!-§.NewUnitEvent;
   import §2#i§.§+%z§;
   import §3"_§.*;
   import §3#a§.§-!`§;
   import §3#a§.§-#M§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §65§.§`"C§;
   import §7!B§.§&"T§;
   import §7!B§.§1"?§;
   import §7$1§.§;$n§;
   import §7$t§.§;#_§;
   import §9%k§.*;
   import §<%c§.*;
   import §<%k§.§`!v§;
   import §=&!§.§<$Z§;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §?$7§.§8"e§;
   import §?$L§.§&$9§;
   import §?%J§.*;
   import §@!N§.§""L§;
   import §@!N§.§2"e§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[!`§.§1%0§;
   import §["3§.§ V§;
   import §[$<§.§;"E§;
   import §[%§.*;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.*;
   import com.greensock.loading.core.LoaderCore;
   import config.§5%T§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Multitouch;
   import flash.ui.MultitouchInputMode;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.*;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.ai.§,%8§;
   import ru.pragmatix.wormix.game.ai.§>%Q§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.clans.main.server.ClanInviteStructure;
   import ru.pragmatix.wormix.messages.client.IncreaseAchievements;
   import ru.pragmatix.wormix.messages.client.JoinToChat;
   import ru.pragmatix.wormix.messages.server.ReorderGroupResult;
   import ru.pragmatix.wormix.messages.structures.LoginAwardStructure;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.serialization.client.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §"#5§ extends §,"R§
   {
      
      private static var §]"i§:§7#P§;
      
      public static const NAME:String = "DARK_SHIELD";
      
      private static const §9^§:int = 30;
      
      private static const §-&F§:int = 10;
      
      private var §7#>§:§&$2§;
      
      private var § $R§:Function;
      
      private var §@"z§:Boolean = true;
      
      private var §2`§:Boolean = true;
      
      private var §?%=§:Number = 1;
      
      private var §^i§:Boolean;
      
      public function §"#5§(param1:§6S§, param2:int, param3:Number, param4:Function, param5:Boolean)
      {
         this.§7#>§ = new §&$2§(param2);
         this.§ $R§ = param4;
         this.§^i§ = param5;
         this.§?%=§ = param3;
         super(param1,NAME);
      }
      
      override protected function §5#F§() : void
      {
         super.§5#F§();
         §@%;§.play(§`!v§.§+Q§);
      }
      
      override protected function §?$u§(param1:DamageEvent) : void
      {
         var _loc2_:uint = Math.ceil(param1.power);
         this.§7#>§.value -= _loc2_;
         if(this.§7#>§.value >= 0)
         {
            param1.power = 0;
         }
         else
         {
            param1.power = this.§7#>§.value * -1;
         }
         §2!H§.§'!i§("(" + _loc2_ + ")",§2!H§.§?$!§,unit.x + unit.width * 0.5,unit.y + unit.height * 0.5,20);
         if(this.§7#>§.value <= 0)
         {
            clear();
         }
      }
      
      override protected function §0&"§() : void
      {
         if(§&%M§)
         {
            return;
         }
         if(§8"%§.§?!W§.§4"m§)
         {
            if(this.§2`§)
            {
               this.§^#n§();
            }
            if(this.§@"z§)
            {
               this.§7&"§();
            }
            §@%;§.play(§`!v§.§0&C§);
         }
         super.§0&"§();
      }
      
      private function §^#n§() : void
      {
         var _loc2_:§+%]§ = null;
         var _loc1_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§6"M§(unit);
         for each(_loc2_ in _loc1_)
         {
            if(!_loc2_.disposed)
            {
               §-#M§.§<$$§(unit.x,unit.y,_loc2_,§9^§ * this.§?%=§,§-&F§);
            }
         }
      }
      
      private function §7&"§() : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:§1"?§ = null;
         var _loc4_:§&"T§ = null;
         var _loc5_:MovieClip = null;
         var _loc1_:Vector.<§&"T§> = Application.scene.§@$I§.§;%a§.§"L§([§1"?§]);
         for each(_loc3_ in _loc1_)
         {
            _loc2_ = _loc3_.getOwner();
            if(Boolean(_loc2_) && (this.§^i§ ? Boolean(_loc2_.squad.getNumber() == unit.squad.getNumber()) : Boolean(_loc2_.squad.getTeamId() == unit.squad.getTeamId())))
            {
               _loc4_ = Application.scene.§,$z§();
               _loc5_ = §6#A§.§!&6§("ResurrectionDarkKnight");
               _loc5_.x = _loc3_.x;
               _loc5_.y = _loc3_.y;
               Application.scene.addChild(_loc5_);
               §8$a§.§%!E§(100,§1%"§.§]$<§(this.§7!>§,this,[_loc5_,_loc3_,_loc4_]));
            }
         }
      }
      
      private function §7!>§(param1:MovieClip, param2:§1"?§, param3:§&"T§) : void
      {
         var _loc4_:§+%]§ = null;
         if(param1.parent)
         {
            param1.parent.removeChild(param1);
         }
         if(!Application.scene)
         {
            return;
         }
         if(Application.scene.§@$I§.§=%d§())
         {
            return;
         }
         if(!param2.disposed)
         {
            §'"$§.§]#I§(null,param2.x,param2.y - §<H§.§-#C§,null,1,35,22,false,true);
            _loc4_ = §-#M§.§4$S§(new Point(param2.x,param2.y - §<H§.§-#C§),param2.getOwner());
            param2.disposed = true;
            this.§ $R§(_loc4_,param2.getOwner());
            if(this.§^i§)
            {
               §>!r§.§6!d§(_loc4_);
            }
         }
         param3.disposed = true;
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         var _loc2_:§"#5§ = new §"#5§(§1!j§,this.§7#>§.value,this.§?%=§,this.§ $R§,this.§^i§);
         _loc2_.§2`§ = this.§2`§;
         _loc2_.§@"z§ = this.§@"z§;
         param1.buffs.place(_loc2_);
      }
      
      public function §"#`§() : void
      {
         this.§2`§ = false;
      }
      
      public function §3">§() : void
      {
         this.§@"z§ = false;
      }
   }
}


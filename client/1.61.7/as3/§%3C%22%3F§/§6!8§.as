package §<"?§
{
   import § "d§.§,!c§;
   import §##y§.CollisionEvent;
   import §&!m§.§-$6§;
   import §'!Z§.§1"-§;
   import §-%B§.§-"o§;
   import §1!J§.§@#%§;
   import §1#p§.§"Z§;
   import §1#p§.Team;
   import §2!-§.DamageEvent;
   import §2#x§.*;
   import §3#a§.§-!`§;
   import §4!!§.§76§;
   import §4!K§.*;
   import §7!B§.§6#I§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §<!W§.*;
   import §<"L§.§##-§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §<%c§.§>!^§;
   import §=!p§.§7#E§;
   import §=#g§.*;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §?$7§.§+#N§;
   import §@!N§.§2"e§;
   import §@!i§.§!m§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@!i§.§<!9§;
   import §@%I§.§7%K§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%'§.§<"G§;
   import §[%§.Rhino;
   import §^#[§.§?"&§;
   import §`%&§.§@&,§;
   import com.adobe.images.PNGEncoder;
   import config.achievements.BossAchieves;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLVariables;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.inspirit.net.MultipartURLLoader;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.messages.structures.*;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.ex.PvpBattleType;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §6!8§ extends §>!^§
   {
      
      protected var §^i§:Boolean;
      
      protected var resource:§@#%§;
      
      protected var §6%D§:Vector.<§-"o§> = new Vector.<§-"o§>(0);
      
      public function §6!8§(param1:uint, param2:Boolean, param3:Boolean = false)
      {
         super(param1,param3);
         this.§^i§ = param2;
         this.§4#d§();
      }
      
      override protected function §2!9§() : void
      {
         var _loc1_:§-"o§ = null;
         var _loc2_:Vector.<§-!`§> = null;
         var _loc3_:§-!`§ = null;
         super.§2!9§();
         §"!p§ = [];
         for each(_loc1_ in this.§6%D§)
         {
            _loc2_ = _loc1_.§<"u§(playerSquads,§,!c§.§;&$§(playerSquads),§,!c§.§=$k§(playerSquads));
            for each(_loc3_ in _loc2_)
            {
               §"!p§.push(_loc3_);
            }
         }
      }
      
      protected function §4#d§() : void
      {
      }
      
      override protected function §6&§(param1:uint) : void
      {
         var _loc2_:§-"o§ = null;
         for each(_loc2_ in this.§6%D§)
         {
            _loc2_.§6&§(param1);
         }
      }
      
      override protected function § "a§(param1:uint) : void
      {
         var _loc2_:§-"o§ = null;
         super.§ "a§(param1);
         for each(_loc2_ in this.§6%D§)
         {
            _loc2_.§ "a§(param1,currentUnit);
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:§-"o§ = null;
         for each(_loc1_ in this.§6%D§)
         {
            _loc1_.clear();
         }
         this.§6%D§.length = 0;
         super.clear();
      }
      
      public function getScripts() : Vector.<§-"o§>
      {
         return this.§6%D§;
      }
      
      public function getResources() : Vector.<§@#%§>
      {
         var _loc2_:§-"o§ = null;
         var _loc3_:§@#%§ = null;
         var _loc1_:Vector.<§@#%§> = new Vector.<§@#%§>(0);
         for each(_loc2_ in this.§6%D§)
         {
            _loc3_ = _loc2_.§4$t§();
            if(_loc3_)
            {
               _loc1_.push(_loc3_);
            }
         }
         if(this.resource)
         {
            _loc1_.push(this.resource);
         }
         return _loc1_;
      }
      
      public function getId() : int
      {
         return 0;
      }
      
      protected function §5&C§() : void
      {
         var _loc1_:§-!`§ = null;
         var _loc2_:UserProfile = null;
         for each(_loc1_ in §"!p§)
         {
            for each(_loc2_ in _loc1_.units)
            {
               _loc2_.setLevel(1);
               _loc2_.stats.§8+§.value = 1;
               _loc2_.stats.§+#+§.value = 1;
               _loc2_.stats.§'$Q§.value = 1;
               _loc2_.§;"U§(null);
               _loc2_.§7"i§(null);
               _loc2_.§&$g§(Race.§+#T§.§]!D§());
            }
         }
      }
   }
}


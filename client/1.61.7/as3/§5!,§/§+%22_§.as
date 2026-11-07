package §5!,§
{
   import §!$Z§.§"$I§;
   import §!L§.§+"'§;
   import §!L§.§`#p§;
   import §"#x§.§'"$§;
   import §"$+§.§@C§;
   import §#"V§.§6"%§;
   import §##j§.§'"%§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%"Z§.§2"B§;
   import §%&3§.§[$z§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#h§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §2!-§.§-!6§;
   import §2#H§.§!%C§;
   import §3"_§.*;
   import §4!!§.§6$V§;
   import §4'§.§`"q§;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §7$t§.§^%%§;
   import §<"?§.§6"d§;
   import §<%c§.§-! §;
   import §<%k§.§`!v§;
   import §=$#§.§`%u§;
   import §=&!§.§ "^§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[!`§.§8%U§;
   import §[$P§.§+H§;
   import §[%§.Cat;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§?"&§;
   import §^#[§.§["u§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.filters.DropShadowFilter;
   import flash.geom.Point;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.messages.client.BuyBattle;
   import ru.pragmatix.wormix.messages.server.MoveProfileSecureToken;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.*;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.weapons.*;
   
   use namespace gestouch_internal;
   
   public class §+"_§ extends §%%o§
   {
      
      public static const NAME:String = "ROPE_USE_BUFF";
      
      public static const §,h§:int = 5;
      
      private var §2M§:int;
      
      public function §+"_§(param1:int = 0)
      {
         this.§2M§ = param1;
         super(NAME,1);
      }
      
      public static function update(param1:§+%]§) : void
      {
         if(param1.squad.isAi())
         {
            return;
         }
         if(!§8"%§.§?!W§.§^!U§().§=M§())
         {
            return;
         }
         var _loc2_:§+"_§ = §8z§(param1);
         if(_loc2_)
         {
            _loc2_.increase();
         }
         else
         {
            param1.buffs.place(new §+"_§(1));
         }
      }
      
      public static function §8z§(param1:§+%]§) : §+"_§
      {
         var _loc3_:Vector.<§+%]§> = null;
         var _loc4_:§+%]§ = null;
         var _loc2_:§+"_§ = §+"_§(param1.buffs.getBuff(NAME));
         if(!_loc2_)
         {
            _loc3_ = param1.squad.§1!n§();
            for each(_loc4_ in _loc3_)
            {
               _loc2_ = §+"_§(_loc4_.buffs.getBuff(NAME));
               if(_loc2_)
               {
                  break;
               }
            }
         }
         return _loc2_;
      }
      
      public static function §!%w§(param1:§+%]§) : Boolean
      {
         var _loc2_:§+"_§ = null;
         if(!param1.squad.isAi() && §8"%§.§?!W§.§^!U§().§=M§())
         {
            _loc2_ = §8z§(param1);
            return _loc2_ ? _loc2_.§5c§ : false;
         }
         return false;
      }
      
      public function increase() : void
      {
         if(this.§2M§ < §,h§)
         {
            ++this.§2M§;
         }
      }
      
      override public function reset() : void
      {
         super.reset();
         this.§2M§ = 0;
      }
      
      override public function §+"k§(param1:§+%]§) : void
      {
         param1.buffs.place(new §+"_§(this.§2M§));
      }
      
      public function get used() : int
      {
         return this.§2M§;
      }
      
      public function get §5c§() : Boolean
      {
         return this.§2M§ >= §,h§;
      }
   }
}


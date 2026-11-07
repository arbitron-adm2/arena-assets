package ru.pragmatix.wormix.controller
{
   import § !8§.§9%+§;
   import § "I§.§,!D§;
   import § &5§.Water;
   import §!$d§.§<$c§;
   import §!L§.§%!I§;
   import §!L§.§+"'§;
   import §!L§.§-"t§;
   import §%"Z§.§2"B§;
   import §+#P§.§8"j§;
   import §+$=§.§6#A§;
   import §+$=§.§9"%§;
   import §+$=§.§;!d§;
   import §,&+§.§=#x§;
   import §,&8§.§@r§;
   import §0%"§.§`"`§;
   import §0%[§.§0%§;
   import §2"L§.§5#E§;
   import §2#i§.§9##§;
   import §3"@§.§""m§;
   import §4#`§.§>$K§;
   import §7$t§.§&!e§;
   import §7$t§.§2"y§;
   import §7$t§.§[!X§;
   import §7$t§.§^%%§;
   import §8#<§.§&§;
   import §8#<§.§1"k§;
   import §8#o§.§#$s§;
   import §8#o§.§1@§;
   import §<%k§.§`!v§;
   import §?"j§.§`%+§;
   import §?$7§.§`%2§;
   import §?$L§.§ "N§;
   import §?$L§.§0"-§;
   import §[%'§.§<"G§;
   import §]^§.§3$f§;
   import §]^§.§4&+§;
   import §]^§.§5" §;
   import §^"y§.§`#e§;
   import config.§28§;
   import config.§9+§;
   import config.§^"2§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.flox.social.controller.§1#+§;
   import ru.pragmatix.flox.social.controller.§7"n§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.social.Social;
   
   public class §2L§ extends EventDispatcher
   {
      
      private static const §"'§:String = "data/";
      
      private static const §6"I§:String = "data/social/{social}/lang/";
      
      private static const §@!j§:String = "data/lang/";
      
      private static const §+#e§:String = "data/resconfigs/";
      
      private static const §]$b§:String = "resconfig.xml";
      
      private static const §]Y§:String = "bosses_config.xml";
      
      private static const §,"§:String = "battle_stuff_config.xml";
      
      private static const §#$?§:Array = ["achievments","ban","boss.achievments","bosses","bot.names","clan","craft","daily.tasks","date","help","items","messages","news","tutorials","upgrades","viral","weapons"];
      
      private var log:§&`§ = new §&`§(§2L§);
      
      private var §;!2§:§%!I§;
      
      private var §[f§:§1#+§;
      
      private var context:§>C§;
      
      public function §2L§(param1:§>C§, param2:§1#+§)
      {
         super();
         this.§[f§ = param2;
         this.context = param1;
      }
      
      public static function §5#q§() : String
      {
         return §"'§;
      }
      
      private static function §-#9§(param1:String, param2:Array) : Vector.<String>
      {
         var _loc4_:String = null;
         var _loc3_:Vector.<String> = new Vector.<String>(0);
         for each(_loc4_ in param2)
         {
            _loc3_.push(param1 + _loc4_);
         }
         return _loc3_;
      }
      
      private static function §+#F§(param1:String, param2:String, param3:String = ".xml") : String
      {
         var _loc4_:int = param1.indexOf(param3);
         if(_loc4_ != -1)
         {
            return param1.slice(0,_loc4_) + param2 + param3;
         }
         return param1;
      }
      
      public static function § #<§() : void
      {
         §0"-§.TITLE_ERROR = §<"G§.§%! §("TITLE_ERROR");
         §0"-§.ERROR_SOCIAL_OP = §<"G§.§%! §("ERROR_SOCIAL_OP");
         §0"-§.TITLE_ATTENTION = §<"G§.§%! §("TITLE_ATTENTION");
         §0"-§.PHOTO_LOAD_COMPLETE = §<"G§.§%! §("PHOTO_LOAD_COMPLETE");
         § "N§.§!% § = §`!v§.§2$e§;
         § "N§.§,M§ = §`!v§.§1M§;
         § "N§.§+$t§ = §+"'§.§<"<§;
         § "N§.§&$q§ = §`!v§.§;$u§;
         § "N§.§["K§ = §`!v§.§3"[§;
         § "N§.§[!k§ = §`!v§.§;$u§;
         § "N§.§'?§ = §`!v§.§8#O§;
         § "N§.§^"Q§ = §`!v§.§4#7§;
         § "N§.§3$x§ = §`!v§.§@"`§;
         § "N§.§["K§ = §`!v§.§3"[§;
         § "N§.§["K§ = §`!v§.§3"[§;
         § "N§.§9!l§ = 0;
         § "N§.§ %j§ = 0.3;
         § "N§.§]p§ = false;
      }
      
      public function init() : void
      {
         this.§]F§();
      }
      
      private function §]F§() : void
      {
         var _loc1_:Vector.<String> = null;
         §,!D§.publish(20);
         Application.§`l§("Loading...",20,"(localization)");
         _loc1_ = this.§2"4§();
         var _loc2_:§<"G§ = new §<"G§(Social.settings.§@"G§(),this.context.§]!f§(),this.context.§?"3§(),_loc1_,this.context.§=#V§());
         _loc2_.addEventListener(Event.COMPLETE,this.§;&B§);
         _loc2_.addEventListener(§9"%§.LOAD_ERROR,this.§`!_§);
         _loc2_.load();
      }
      
      private function §;&B§(param1:Event) : void
      {
         §5#E§.init(§<"G§.§3$e§());
         §0$N§.§]"4§ = true;
         Application.§5&=§(§0$N§.HOLIDAY_EVENT_TEXT);
         §,!D§.publish(25);
         Application.§`l§("Loading...",25,"(more localization)");
         var _loc2_:Vector.<String> = new <String>[this.§ F§() + "taunts"];
         this.§;!2§ = new §%!I§(Social.settings.§@"G§(),this.context.§]!f§(),this.context.§?"3§(),_loc2_);
         this.§;!2§.addEventListener(Event.COMPLETE,this.§1#^§);
         this.§;!2§.addEventListener(§9"%§.LOAD_ERROR,this.§`!_§);
         this.§;!2§.load();
      }
      
      private function §1#^§(param1:Event) : void
      {
         §>$K§.init(this.§;!2§.§"!l§,this.§;!2§.§4%-§,this.§;!2§.§>!D§);
         §,!D§.publish(30);
         Application.§`l§("Loading...",30,"(other localization)");
         §8"%§.§2#<§ = new §@r§(this.context.§]!f§(),this.context.§?"3§(),this.§2#%§());
         §8"%§.§2#<§.addEventListener(Event.COMPLETE,this.§;%D§);
         §8"%§.§2#<§.addEventListener(§9"%§.LOAD_ERROR,this.§`!_§);
         §8"%§.§2#<§.load();
      }
      
      private function §;%D§(param1:Event) : void
      {
         §,!D§.publish(35);
         Application.§`l§("Loading...",35,"(other resources)");
         var _loc2_:§<!h§ = new §<!h§(this.context.§]!f§(),this.context.§?"3§());
         _loc2_.addEventListener(Event.COMPLETE,this.§!!-§);
         _loc2_.addEventListener(§9"%§.LOAD_ERROR,this.§`!_§);
         _loc2_.load();
      }
      
      private function §!!-§(param1:Event) : void
      {
         this.§<&,§();
      }
      
      private function §<&,§() : void
      {
         var _loc2_:String = null;
         §,!D§.publish(40);
         Application.§`l§("Loading...",40,"(resources)");
         var _loc1_:Vector.<String> = new <String>[§]$b§,§]Y§,§,"§];
         var _loc3_:uint = 0;
         while(_loc3_ < _loc1_.length)
         {
            if(this.context.§]"&§().isLocal())
            {
               _loc2_ = _loc1_[_loc3_];
            }
            else
            {
               _loc2_ = §+#F§(_loc1_[_loc3_],this.context.§ $'§());
            }
            _loc1_[_loc3_] = §+#e§ + _loc2_;
            _loc3_++;
         }
         var _loc4_:§6#A§ = new §-"t§(this.context.§]!f§(),this.context.§?"3§(),_loc1_,this.context.§?w§());
         var _loc5_:Object = {"pathParams":{"social":this.§@i§()}};
         if(!Application.instance.§;"7§())
         {
            _loc5_["returnFriendObjects"] = {"lazy":!Social.settings.§1"@§()};
         }
         _loc4_.load(this.§"!v§,this.§`!_§,_loc5_);
      }
      
      private function §"!v§() : void
      {
         var _loc1_:§;!d§ = new §;!d§();
         _loc1_.§6&6§(Water);
         §6#A§.§]##§("Water",_loc1_);
         this.§9#E§();
      }
      
      private function §9#E§() : void
      {
         §,!D§.publish(75);
         Application.§`l§("Initialization...",75);
         §`#e§.§9$F§(§9+§.list,§9%+§.§?%S§());
         §`#e§.§;&I§(§28§.list,§`%+§.§1$4§());
         §`#e§.§-#y§(Social.§^"U§.§=";§());
         §`#e§.§;$@§(new §&#1§(),new §1"k§());
         §`#e§.§]#N§(Social.§^"U§.§'&8§(),§<$c§.getWeapons());
         §`#e§.§]#N§(new §9##§(),§<$c§.getWeapons());
         §`#e§.§8!y§(Social.§^"U§.§+?§().§""!§(),§1@§.§""!§(),§#$s§);
         §`#e§.§8!y§(Social.§^"U§.§5#H§().§]#x§(),§1@§.§]#x§(),§&!e§);
         §`#e§.§8!y§(§8"j§.§1^§(),§<$c§.§0$^§(),§^%%§);
         §`#e§.§8!y§(new §""m§().boosters(),§<$c§.§+Z§(),§2"y§);
         §`#e§.§8!y§(new §`"`§().§9#0§,§<$c§.§@$F§(),§[!X§);
         §`#e§.§3!`§(Social.§^"U§.§>%j§().§1^§(),§1@§.§^$U§());
         §1@§.§=#<§(§<$c§.getWeapons());
         §`#e§.§8!y§(§`%2§.list,§3$f§.getBosses(),§5" §);
         §`#e§.§8!y§(new §=#x§().§&#T§,§3$f§.§+!7§(),§4&+§);
         §`#e§.§-$M§(§^"2§.list);
         this.dispatchEvent(new Event(Event.COMPLETE,true));
      }
      
      public function §2"4§() : Vector.<String>
      {
         var _loc1_:Vector.<String> = §-#9§(this.§ F§(),§#$?§);
         _loc1_.push(this.§?#t§() + "messages");
         if(§8"%§.§[f§.getType() == §7"n§.§;"B§)
         {
            _loc1_.push(this.§?#t§() + "scenario");
         }
         else if(§8"%§.§[f§.getType() == §7"n§.FB)
         {
            _loc1_.push(this.§?#t§() + "achievments");
         }
         else if(§8"%§.§[f§.getType() == §7"n§.§"%O§)
         {
            _loc1_.push(this.§?#t§() + "ban");
         }
         if(Social.settings.§5$a§())
         {
            _loc1_.push(this.§?#t§() + "avatar.messages");
         }
         if(Social.§%#-§())
         {
         }
         return _loc1_;
      }
      
      private function §2#%§() : Vector.<String>
      {
         var _loc2_:§2"B§ = null;
         var _loc1_:Vector.<String> = new Vector.<String>(0);
         _loc1_.push(§"'§ + "common/chat.xml");
         for each(_loc2_ in Social.settings.§##i§())
         {
            _loc1_.push(this.§ !Y§(_loc2_) + "chat_" + _loc2_.§%F§() + ".xml");
         }
         return _loc1_;
      }
      
      private function § F§() : String
      {
         if(Social.settings.§@"G§() == §2"B§.EN || Social.settings.§@"G§() == §2"B§.RU || Social.settings.§@"G§() == §2"B§.UA)
         {
            return §@!j§;
         }
         return this.§?#t§();
      }
      
      private function § !Y§(param1:§2"B§) : String
      {
         if(param1 == §2"B§.EN || param1 == §2"B§.RU || param1 == §2"B§.UA)
         {
            return §@!j§;
         }
         return this.§?#t§();
      }
      
      private function §?#t§() : String
      {
         return §0%§.format(§6"I§,{"social":this.§@i§()});
      }
      
      private function §@i§() : String
      {
         return this.§[f§.getType().name;
      }
      
      private function §`!_§(param1:§9"%§) : void
      {
         this.log.§3"l§("LOAD ERROR:" + param1.msg);
         this.log.error(param1);
         this.dispatchEvent(param1);
      }
   }
}


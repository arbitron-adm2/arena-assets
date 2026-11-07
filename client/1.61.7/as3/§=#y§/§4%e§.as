package §=#y§
{
   import §!L§.§+"'§;
   import §#P§.§`o§;
   import §%# §.§##U§;
   import §&!?§.§"_§;
   import §&#h§.*;
   import §+$=§.§6#A§;
   import §+$=§.§;!d§;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §5"J§.*;
   import §6"'§.§>"V§;
   import §7$t§.§&!e§;
   import §?$L§.§&$9§;
   import §@!N§.§2"e§;
   import §@!i§.§"-§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.globalization.DateTimeFormatter;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.wormix.game.ai.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.house.craft.*;
   import ru.pragmatix.wormix.messages.server.ActivatePromoKeyError;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   
   public class §4%e§ extends §+#D§
   {
      
      private const §9"d§:int = 9;
      
      public function §4%e§(param1:Function, param2:MovieClip, param3:String, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function §`$+§(param1:UserProfile = null) : void
      {
         var bestRankText:String;
         var fullName:String;
         var ratingCount:String;
         var fuzyCount:String;
         var rubyCount:String;
         var i:int;
         var profile:UserProfile = param1;
         reset();
         bestRankText = profile.getBestRank() == 0 ? §0$N§.RUBY_RATING_LEAGUE : §0$N§.§%! §("RANK_TEXT") + ": " + profile.getBestRank();
         fullName = §4! §.§<&-§(profile);
         ratingCount = §2"e§.§5%t§(profile.getRating(),true);
         fuzyCount = §2"e§.§5%t§(profile.§#!G§(),true);
         rubyCount = §2"e§.§5%t§(profile.§@$D§(),true);
         i = 0;
         while(i < this.§9"d§)
         {
            try
            {
               §+!§.push(§0%§.format(§<"G§.§%! §("AVATAR_DESCR" + i),{
                  "name":fullName,
                  "level":profile.getLevel(),
                  "ratingCount":ratingCount,
                  "bestRank":bestRankText,
                  "fuzyCount":fuzyCount,
                  "rubyCount":rubyCount
               }));
            }
            catch(error:Error)
            {
               break;
            }
            i++;
         }
         §?"?§ = §+!§.length - 1;
      }
      
      override protected function §,$3§() : void
      {
         §=%p§();
      }
      
      public function §1# §(param1:UserProfile) : String
      {
         var _loc2_:String = §"#D§() as String;
         try
         {
            _loc2_ = §0%§.format(_loc2_,{"raceName":param1.getRace().§7%z§()});
         }
         catch(error:Error)
         {
         }
         return _loc2_;
      }
   }
}


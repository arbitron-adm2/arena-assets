package §=&6§
{
   import § !8§.§`!d§;
   import § #m§.§;#^§;
   import § #m§.§?A§;
   import § &5§.§@N§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §"% §.LevelUpDialog;
   import §#"V§.§8"@§;
   import §#"V§.§?%>§;
   import §##y§.§9§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§!!q§;
   import §&#E§.§;2§;
   import §'"N§.*;
   import §+$=§.§1§;
   import §+$=§.§6#A§;
   import §+%Q§.§#%9§;
   import §,$J§.§,$O§;
   import §-"N§.§+#R§;
   import §-@§.*;
   import §0%[§.§""n§;
   import §0%[§.§%"'§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%j§.*;
   import §0&F§.§0%v§;
   import §1!#§.§^$!§;
   import §2!-§.§'5§;
   import §3"_§.§?#w§;
   import §4!!§.§'$V§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7"Q§.*;
   import §7$t§.§&!e§;
   import §7$t§.§9#x§;
   import §8#<§.§!#^§;
   import §8#`§.§#%r§;
   import §;#O§.§+%7§;
   import §;#O§.§4&A§;
   import §<%k§.§`!v§;
   import §="z§.§7%[§;
   import §="z§.§9%1§;
   import §?#g§.Race;
   import §?$7§.§6%k§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§,! §;
   import §@$§.§+%>§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §[%§.Cat;
   import §]^§.§-$T§;
   import §]^§.§4&+§;
   import §^"y§.*;
   import §^#[§.§&$2§;
   import com.greensock.TweenLite;
   import com.greensock.loading.DataLoader;
   import com.greensock.loading.XMLLoader;
   import com.greensock.loading.core.LoaderCore;
   import config.§#!"§;
   import config.achievements.§!$L§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextFormat;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanNewsTO;
   import ru.pragmatix.wormix.model.bonus.§]$q§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpRetryCommandRequestClient;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §&"K§ implements §1"$§
   {
      
      private static var instance:§&"K§;
      
      private static var button:§?%>§;
      
      public static const LOG:§&`§ = new §&`§(§&"K§);
      
      private static const §?W§:Array = [{
         "from":new Date(2017,5,28),
         "to":new Date(2017,6,1)
      }];
      
      public static const BONUS:uint = 40;
      
      private static var §^&$§:Object = null;
      
      private const § $W§:int = 60000;
      
      private var isShown:Boolean;
      
      public function §&"K§()
      {
         super();
         if(§8"%§.§[f§.getType() == §7"n§.OK)
         {
            this.§=">§();
         }
      }
      
      public static function getInstance() : §&"K§
      {
         if(!instance)
         {
            instance = new §&"K§();
         }
         return instance;
      }
      
      public static function §3%s§() : Date
      {
         return §^&$§.to;
      }
      
      public static function §-!T§() : Boolean
      {
         return §^&$§ != null;
      }
      
      private function §=">§() : void
      {
         if(instance)
         {
            this.§]!w§();
         }
         §1%"§.delay(this.§=">§,this,this.§ $W§);
      }
      
      public function §]!w§() : void
      {
         §^&$§ = this.§`%-§();
         var _loc1_:Boolean = §8"%§.§[f§.getType() == §7"n§.OK;
         if(Boolean(§^&$§) && _loc1_)
         {
            LOG.info("Odnoklassniki special offer is available!");
            instance.§0!@§();
            this.§-"d§();
         }
         if(button)
         {
            button.setVisible(§^&$§ != null);
            §;2§.align();
         }
      }
      
      public function §0!@§() : void
      {
         if(!button)
         {
            button = §;2§.§7#[§(§+"'§.§`!=§,§0$N§.ACTION_TITLE,this.§[F§);
         }
      }
      
      public function §[F§(param1:MouseEvent) : void
      {
         new §^$!§(BONUS).show();
      }
      
      private function §`%-§() : Object
      {
         var _loc2_:Object = null;
         var _loc1_:uint = §0#2§.§@&6§();
         for each(_loc2_ in §?W§)
         {
            if(_loc2_.from.getTime() / 1000 < _loc1_ && _loc1_ < _loc2_.to.getTime() / 1000)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function §-"d§() : void
      {
         var _loc1_:Function = null;
         if(§8"%§.§?!W§.inBattle || §8"%§.§?!W§.§3#r§)
         {
            _loc1_ = §1%"§.§]$<§(this.showPaymentPromo,this);
            §""n§.single(§8"%§.§?!W§,§+#R§.§7%^§,_loc1_);
         }
         else
         {
            this.showPaymentPromo();
         }
      }
      
      private function showPaymentPromo(param1:Event = null) : void
      {
         if(!this.isShown)
         {
            this.isShown = true;
            §?#w§(§8"%§.§[f§).showPaymentPromo();
         }
      }
   }
}


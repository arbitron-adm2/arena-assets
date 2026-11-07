package §1%H§
{
   import § $q§.§<"]§;
   import §!L§.§+"'§;
   import §"%H§.§'%u§;
   import §"%H§.§1! §;
   import §"%H§.§6$3§;
   import §"%H§.§`"w§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §&#E§.§;2§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §+%S§.§;%l§;
   import §-"N§.§+#R§;
   import §0%[§.§""n§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §0%[§.Cookie;
   import §0%[§.§^"5§;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#V§.§-#U§;
   import §2#W§.§ #,§;
   import §2#x§.*;
   import §3#T§.AtomBomb;
   import §4!!§.§6$V§;
   import §4$b§.§2m§;
   import §4'§.§^"p§;
   import §4'§.§`"q§;
   import §5#`§.§7%g§;
   import §7!B§.§&"T§;
   import §7$t§.§??§;
   import §8#a§.§>!o§;
   import §8$V§.§`"c§;
   import §8$Z§.§9!&§;
   import §<!W§.§=!6§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §<V§.§!&-§;
   import §=!p§.§1e§;
   import §>%S§.§^!V§;
   import §?"[§.*;
   import §?$L§.§ "N§;
   import §?$L§.§&$9§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@<§.§+%]§;
   import §]&?§.§?u§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`#x§.*;
   import §`v§.§2&H§;
   import config.achievements.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.SetMuteModeRequest;
   import ru.pragmatix.wormix.messages.clans.response.SetMuteModeResponse;
   import ru.pragmatix.wormix.messages.clans.response.treasury.CashMedalsClanResponse;
   import ru.pragmatix.wormix.messages.clans.structures.ClanMemberTO;
   import ru.pragmatix.wormix.messages.client.BuyBattle;
   import ru.pragmatix.wormix.messages.server.AwardedFriendsComeback;
   import ru.pragmatix.wormix.messages.server.NeedMoneyResult;
   import ru.pragmatix.wormix.messages.server.ReagentsForProfile;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.model.items.backpack.§#$R§;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.§@$l§;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.utils.§=%_§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §9&§ implements §1"$§
   {
      
      private static var instance:§9&§;
      
      private static var button:§?%>§;
      
      private static const §9!v§:Vector.<§!"=§> = new Vector.<§!"=§>(0);
      
      private static var §]%`§:§!"=§ = null;
      
      private static var §7!k§:Boolean = false;
      
      private const § $W§:int = 60000;
      
      private var isShown:Boolean;
      
      public function §9&§()
      {
         super();
         this.§=">§();
      }
      
      public static function getInstance() : §9&§
      {
         if(!instance)
         {
            instance = new §9&§();
         }
         return instance;
      }
      
      public static function §3%s§() : Date
      {
         return §]%`§ ? §]%`§.finish : null;
      }
      
      public static function §^#@§() : §^"p§
      {
         return §7!k§ || Boolean(§]%`§) ? §^"p§.§;#'§ : null;
      }
      
      public static function get §[# §() : Boolean
      {
         return §7!k§;
      }
      
      public static function §-!T§() : Boolean
      {
         return §]%`§ != null;
      }
      
      private function §=">§() : void
      {
         this.§]!w§();
         §1%"§.delay(this.§=">§,this,this.§ $W§);
      }
      
      public function §]!w§() : void
      {
         §]%`§ = this.§-#-§();
         if(§]%`§)
         {
            §7!k§ = false;
            switch(§]%`§.season)
            {
               case §&t§.§-$>§:
                  §7!k§ = true;
            }
            this.§0!@§();
            this.§-"d§();
         }
         if(button)
         {
            button.setVisible(§]%`§ != null);
            §;2§.align();
         }
      }
      
      public function §0!@§() : void
      {
         if(!§]%`§)
         {
            return;
         }
         if(!button)
         {
            button = §;2§.§7#[§(§+"'§.§?%6§,§]%`§.season.title,this.§[F§);
         }
      }
      
      private function §-"d§() : void
      {
         var _loc1_:Function = null;
         if(§8"%§.§?!W§.inBattle || §8"%§.§?!W§.§3#r§)
         {
            _loc1_ = §1%"§.§]$<§(this.§[%0§,this);
            §""n§.single(§8"%§.§?!W§,§+#R§.§7%^§,_loc1_);
         }
         else
         {
            this.§[%0§();
         }
      }
      
      public function §[F§(param1:MouseEvent) : void
      {
         new §?u§().show();
      }
      
      private function §[%0§(param1:Event = null) : void
      {
         if(!this.isShown)
         {
            this.isShown = true;
         }
      }
      
      private function §-#-§() : §!"=§
      {
         var _loc2_:§!"=§ = null;
         var _loc1_:uint = §0#2§.§@&6§();
         for each(_loc2_ in §9!v§)
         {
            if(_loc2_.start.getTime() / §0#2§.§9$f§ < _loc1_ && _loc1_ < _loc2_.finish.getTime() / §0#2§.§9$f§)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}


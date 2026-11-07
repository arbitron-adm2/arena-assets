package §<!G§
{
   import § !8§.§9%+§;
   import § $q§.§3U§;
   import § $q§.§<"]§;
   import § &5§.§=#P§;
   import §!K§.§"%$§;
   import §%"1§.§@%;§;
   import §%"Z§.§+$A§;
   import §%L§.§%%w§;
   import §&!?§.§0!G§;
   import §&!?§.§0%W§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§1"-§;
   import §'!Z§.§6S§;
   import §'!Z§.§;n§;
   import §'"N§.*;
   import §'$j§.§'-§;
   import §+$=§.§;!d§;
   import §+%S§.§+m§;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0%[§.§""n§;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §3"_§.*;
   import §4'§.§`"q§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5#`§.*;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §8#a§.§>!o§;
   import §9%W§.§ !@§;
   import §9%W§.§&!P§;
   import §9%W§.§8#p§;
   import §<%E§.§,$2§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?#g§.*;
   import §?$7§.§+l§;
   import §?$L§.§&$9§;
   import §@!N§.*;
   import §@!i§.§"-§;
   import §@!i§.§5&4§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^!]§.WeaponShootEvent;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import §`#x§.§"$r§;
   import api.com.odnoklassniki.Odnoklassniki;
   import api.com.odnoklassniki.events.ApiCallbackEvent;
   import avmplus.getQualifiedClassName;
   import com.adobe.serialization.json.JSON;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.logger.§^!e§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.PostClanNewsRequest;
   import ru.pragmatix.wormix.messages.clans.response.PostClanNewsResponse;
   import ru.pragmatix.wormix.messages.client.BuyGroupSlot;
   import ru.pragmatix.wormix.messages.client.GetBundles;
   import ru.pragmatix.wormix.messages.server.BuyGroupSlotResult;
   import ru.pragmatix.wormix.messages.server.GetBundlesResult;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.objects.mutators.§^#%§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §&!;§ extends §,%r§
   {
      
      protected static const §?$a§:Number = -20;
      
      protected static const §6&?§:Number = 15;
      
      protected static const §6"o§:int = 100;
      
      private var §3"g§:Boolean;
      
      protected var fixedDirection:Boolean = false;
      
      public function §&!;§(param1:Boolean = true)
      {
         super(§2"w§);
         this.§3"g§ = param1;
         if(!param1)
         {
            §^&I§.value = false;
         }
         §7&§(new §8#p§(this.§@%@§));
      }
      
      override public function §""2§(param1:Object) : void
      {
         this.fixedDirection = param1["fixedDirection"] ? §?"&§(param1["fixedDirection"]).value : false;
         super.§""2§(param1);
      }
      
      protected function §@%@§(param1:int, param2:int) : Boolean
      {
         var _loc3_:String = null;
         if(!this.§3"g§ && §9$h§.§!%w§(owner) || Boolean(getProperty("seasonal")) && Boolean(§?!P§.§!%w§(owner)))
         {
            if(§8"%§.§?!W§.§4"m§.§=%g§())
            {
               _loc3_ = §0$N§.ACTION_IMPOSSIBLE;
               if(§9$h§.§!%w§(owner))
               {
                  _loc3_ = §0$N§.USAGE_LIMIT_ON_TURN_EXHAUSTED;
               }
               if(§?!P§.§!%w§(owner))
               {
                  _loc3_ = §0$N§.USAGE_LIMIT_CONSUMABLES_EXHAUSTED;
               }
               §>&-§.§[$9§(_loc3_,true);
               §@%;§.play(§`!v§.§2$e§);
            }
            return false;
         }
         if(param2 > §6"o§)
         {
            return true;
         }
         if(§8"%§.§?!W§.§4"m§.§=%g§())
         {
            §>&-§.§[$9§(§0$N§.CROSSHAIR_TOO_HIGH,true);
         }
         return false;
      }
      
      override protected function §`%V§() : void
      {
         §?"'§ = true;
         this.§3$>§();
         if(!this.§3"g§)
         {
            §9$h§.update(owner);
         }
         if(getProperty("seasonal"))
         {
            §?!P§.update(owner);
         }
         this.§?!K§();
         if(this.§3"g§)
         {
            §=#P§.§6+§();
         }
         else if(§8"%§.§?!W§.§4"m§.§#"G§() && §8"%§.§?!W§.§4"m§.§=%g§())
         {
            §8"%§.§?!W§.§4"m§.§%!J§(true);
         }
         §?"'§ = false;
      }
      
      override public function activate() : void
      {
         if(!this.fixedDirection)
         {
            shotParams.§3f§ = 1;
            §8#p§(§;#x§()).setCrosshairClip(§ !@§.§"!"§);
            §+# §.§9! §.deactivate();
         }
         super.activate();
      }
      
      override public function §6!K§() : void
      {
         if(!this.fixedDirection)
         {
            shotParams.§3f§ = -1;
            §8#p§(§;#x§()).setCrosshairClip(§ !@§.§#!8§);
         }
      }
      
      override public function §?&!§() : void
      {
         if(!this.fixedDirection)
         {
            shotParams.§3f§ = 1;
            §8#p§(§;#x§()).setCrosshairClip(§ !@§.§"!"§);
         }
      }
      
      override public function §?!K§() : void
      {
         if(!this.fixedDirection)
         {
            §+# §.§9! §.activate();
         }
         super.§?!K§();
      }
      
      protected function §3$>§() : void
      {
         var _loc1_:Number = this.§^M§(shotParams.§3f§,shotParams.point.x,shotParams.point.y);
         this.§2",§(owner,paramSet,_loc1_,§?$a§,shotParams.§3f§ * §6&?§,0);
      }
      
      protected function §^M§(param1:int, param2:int, param3:int) : Number
      {
         var _loc4_:Number = NaN;
         _loc4_ = param1 * §6&?§;
         return param2 - _loc4_ * Math.sqrt((2 * param3 - §?$a§) / §]%G§.§5$r§.ay);
      }
      
      protected function §2",§(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:Number, param6:Number, param7:Boolean = true) : void
      {
         §1"-§.§##7§(shotParams.point.x,shotParams.point.y,20);
         if(param7)
         {
            §@%;§.play(§`!v§.AIR_STRIKE);
         }
      }
   }
}


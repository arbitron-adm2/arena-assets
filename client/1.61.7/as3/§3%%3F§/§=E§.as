package §3%?§
{
   import §!$d§.*;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §##y§.§9§;
   import §#%!§.§%&F§;
   import §#%!§.§[N§;
   import §#%!§.§^%c§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&&6§.*;
   import §'!Z§.§]!&§;
   import §+$=§.§6#A§;
   import §+%S§.§+m§;
   import §+%S§.§?3§;
   import §,"v§.§9%d§;
   import §-%B§.*;
   import §0!§.§9"u§;
   import §0!Y§.§!$%§;
   import §0%j§.*;
   import §2!-§.DamageEvent;
   import §2#H§.§1%I§;
   import §2#i§.§+%z§;
   import §4!!§.§%$$§;
   import §7!B§.§6#I§;
   import §7$t§.§[!X§;
   import §<%k§.§`!v§;
   import §=!p§.§%#'§;
   import §=!p§.§7#E§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §=#g§.*;
   import §=&!§.§<$Z§;
   import §>%S§.§^!V§;
   import §>1§.§^"&§;
   import §?$7§.§8"e§;
   import §@!N§.§2"e§;
   import §@!i§.§!m§;
   import §@!i§.§8%6§;
   import §@<§.§+%]§;
   import §["3§.*;
   import §^#[§.§&$2§;
   import §^4§.§]"8§;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.*;
   import com.greensock.loading.core.*;
   import flash.desktop.Clipboard;
   import flash.desktop.ClipboardFormats;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.GetReagentsForProfile;
   import ru.pragmatix.wormix.messages.server.WipeProfileResult;
   import ru.pragmatix.wormix.messages.structures.*;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.social.Social;
   
   public class §=E§ extends §6#I§ implements §^%c§
   {
      
      private static const DAMAGE:§&$2§ = new §&$2§(200);
      
      private static const §=%h§:String = "FireAppear";
      
      private static const §`#8§:String = "FireIdle";
      
      private static const §5$I§:String = "FireDisappear";
      
      public static const §"!Z§:uint = 16;
      
      public static const HP:uint = 100;
      
      private var bar:§%&F§;
      
      private var §>%4§:Point;
      
      public var §<%§:Boolean = false;
      
      public function §=E§(param1:§+%]§, param2:Number, param3:Number)
      {
         super(param1,param2,param3,false,0);
         canBeDamaged = false;
         §8%g§ = new §9"u§(this,§;$R§(),0,0);
         this.x = param2;
         this.y = param3;
         stable = true;
         §]!&§.§-#2§(this,§`#8§,§=%h§,§5$I§,null,this.release);
         this.bar = new §[N§(param1,§0$N§.§%! §("BOSS_ENCHANTER_FIRE_SOUL"),20);
         physicModel.addEventListener(§9#1§.§3%G§,this.§^"m§);
      }
      
      public static function §;$R§() : int
      {
         return HP * (§8"%§.§?!W§.§^!U§().§^"g§ ? 1.5 : 1);
      }
      
      private function §^"m§(param1:Event) : void
      {
         stable = true;
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§&!c§);
         physicModel = new §;$S§(physParams);
      }
      
      private function release() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:§+%]§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         if(this.§<%§ && Boolean(owner))
         {
            _loc1_ = §8"%§.§?!W§.§4"m§.§6"M§(owner);
            _loc2_ = _loc1_.length;
            if(_loc2_ > 0)
            {
               _loc3_ = §8"%§.randomSeed.§,!q§(0,_loc2_ - 1);
               _loc4_ = _loc1_[_loc3_];
               _loc5_ = 1;
               switch(§8"%§.§?!W§.§^!U§().§^"g§)
               {
                  case §8"e§.HARD:
                     _loc5_ = 1.4;
                     break;
                  case §8"e§.§?=§:
                     _loc5_ = 1.6;
               }
               _loc6_ = attributes.hp.§9"H§() * DAMAGE.value * _loc5_;
               if(_loc6_ > 0)
               {
                  new §%$$§(owner,this.§>%4§.x,this.§>%4§.y,_loc4_,_loc6_);
               }
            }
         }
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         var _loc2_:Number = NaN;
         if(Boolean(owner && !owner.disposed) && Boolean(param1.source.owner) && owner.squad.getTeamId() != param1.source.owner.squad.getTeamId())
         {
            _loc2_ = param1.power;
            §'"$§.inflictDamage(this,owner,_loc2_,0,0,false,true);
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         this.§>%4§ = new Point(x,y);
         physicModel.removeEventListener(§9#1§.§3%G§,this.§^"m§);
         super.§[$u§(param1);
      }
      
      public function getBar() : §%&F§
      {
         return this.bar;
      }
   }
}


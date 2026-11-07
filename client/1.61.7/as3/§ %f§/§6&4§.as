package § %f§
{
   import § &5§.§0&$§;
   import §!$Z§.§6=§;
   import §!L§.§+"'§;
   import §"!C§.§2v§;
   import §"$+§.§@C§;
   import §#k§.§9$v§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §+%S§.§="_§;
   import §0%[§.§0%§;
   import §2B§.§#&E§;
   import §3#T§.§5!M§;
   import §4!!§.§2&F§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §7!n§.§2!j§;
   import §7!n§.§[&#§;
   import §?$L§.§&$9§;
   import §?$L§.§0"-§;
   import §@!i§.§"-§;
   import §@!i§.§=$,§;
   import §@<§.§+%]§;
   import §^"y§.§]#i§;
   import §^#[§.§&$2§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.StatusEvent;
   import flash.geom.Rectangle;
   import flash.net.LocalConnection;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.pvp.messages.ex.StartPvpBattle;
   import ru.pragmatix.wormix.social.Social;
   
   public class §6&4§ extends Parasite
   {
      
      private static const §[#5§:§&$2§ = new §&$2§(100);
      
      public function §6&4§(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:Number, param6:uint)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function inflictDamage(param1:§&"T§, param2:Number, param3:Number, param4:Number, param5:Boolean = true, param6:Boolean = false, param7:Boolean = true, param8:Object = null) : void
      {
         var _loc9_:§+%]§ = null;
         var _loc10_:int = 0;
         if(param1 != null && param1 is §+%]§)
         {
            _loc9_ = §+%]§(param1);
            _loc10_ = _loc9_.hp;
         }
         super.inflictDamage(param1,param2,param3,param4,param5,param6,param7,param8);
         if(Boolean(_loc9_ && _loc9_.disposed) && Boolean(owner) && !owner.disposed)
         {
            new §2&F§(owner,owner.x,owner.y,owner,Math.min(_loc10_,§[#5§.value),true);
         }
      }
      
      override protected function §-$4§() : §="_§
      {
         return new §="_§(owner,§6&4§,paramSet,blinkClip,attachedClip);
      }
   }
}


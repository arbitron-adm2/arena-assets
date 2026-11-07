package §!L§
{
   import §##y§.CollisionEvent;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §%"Z§.§2"B§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§!w§;
   import §0&F§.§0%v§;
   import §4f§.§-&§;
   import §7$t§.§9#x§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §[$<§.§;%S§;
   import §[$<§.§>"9§;
   import §]$v§.§1>§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.getTimer;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.clans.ClanMessages;
   import ru.pragmatix.wormix.messages.client.GetBundles;
   import ru.pragmatix.wormix.messages.server.GetBundlesResult;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreationFailure;
   import ru.pragmatix.wormix.utils.§#&>§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §%!I§ extends §!w§
   {
      
      private static const §]!^§:§&`§ = new §&`§(§%!I§);
      
      public var §"!l§:Array;
      
      public var §4%-§:Array;
      
      public var §>!D§:Array;
      
      public function §%!I§(param1:§2"B§, param2:String, param3:String, param4:Vector.<String>)
      {
         super(param1,param2,param3,param4);
         this.§"!l§ = [];
         this.§4%-§ = [];
         this.§>!D§ = [];
      }
      
      override protected function §>!s§(param1:XML, param2:String) : void
      {
         var _loc3_:XML = null;
         XML.ignoreWhitespace = true;
         for each(_loc3_ in param1.onNextTurn.message)
         {
            this.§"!l§.push(§2!F§(_loc3_));
         }
         for each(_loc3_ in param1.onDamage.message)
         {
            this.§4%-§.push(§2!F§(_loc3_));
         }
         for each(_loc3_ in param1.onSelfDamage.message)
         {
            this.§>!D§.push(§2!F§(_loc3_));
         }
      }
      
      override protected function get log() : §&`§
      {
         return §]!^§;
      }
   }
}


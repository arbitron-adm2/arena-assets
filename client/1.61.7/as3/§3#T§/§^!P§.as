package §3#T§
{
   import § $q§.§<"]§;
   import §!K§.§"%$§;
   import §#"V§.§8"@§;
   import §##y§.CollisionEvent;
   import §#%!§.§%&F§;
   import §#%!§.§[N§;
   import §#%!§.§^%c§;
   import §%L§.§%%w§;
   import §&#h§.§-"F§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+&<§.*;
   import §-!U§.*;
   import §0!§.§9"u§;
   import §0&F§.§0%v§;
   import §1#p§.§"Z§;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §2o§.§]#@§;
   import §4f§.§-&§;
   import §6_§.§&$6§;
   import §7!B§.§&"T§;
   import §7!B§.§6#I§;
   import §8#a§.§>!o§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §?$7§.§6%k§;
   import §?$7§.§6J§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%§.Boar;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.structures.HeroicMissionStructure;
   import ru.pragmatix.wormix.model.items.backpack.§;#X§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§1!S§;
   
   public class §^!P§ extends §6#I§ implements §^%c§
   {
      
      private static var §`$8§:Boolean;
      
      private static var isBlocked:Boolean;
      
      §§push(§§findproperty(§1%k§));
      var _temp_8:* = new <int>[§+%z§.AIR_STRIKE,§+%z§.BUNKER_BUSTER,§+%z§.CARPET_STRIKE,§+%z§.NAPALM_STRIKE,§+%z§.§5-§,§+%z§.§!%D§,§+%z§.TELEPORT,§+%z§.§]!]§,§+%z§.METEOR,§+%z§.ANVIL,§+%z§.SNOWFLAKE_STRIKE,§+%z§.MESSY_BOMBARDMENT,§+%z§.ION_CANNON,§+%z§.BOULDER_UPG_3_SKY,§+%z§.PAPER_SQUADRON];
      
      private static const §1%k§:Vector.<int> = new <int>[§+%z§.AIR_STRIKE,§+%z§.BUNKER_BUSTER,§+%z§.CARPET_STRIKE,§+%z§.NAPALM_STRIKE,§+%z§.§5-§,§+%z§.§!%D§,§+%z§.TELEPORT,§+%z§.§]!]§,§+%z§.METEOR,§+%z§.ANVIL,§+%z§.SNOWFLAKE_STRIKE,§+%z§.MESSY_BOMBARDMENT,§+%z§.ION_CANNON,§+%z§.BOULDER_UPG_3_SKY,§+%z§.PAPER_SQUADRON];
      
      private static const §@!w§:Vector.<int> = new <int>[§+%z§.BOULDER_UPG_3_SKY];
      
      private static const § "h§:String = "InterferenceGeneratorAm";
      
      private static const HP:int = 100;
      
      private var bar:§%&F§;
      
      public function §^!P§(param1:Point, param2:§+%]§)
      {
         super(param2,param1.x,param1.y,false,0);
         §,q§ = new <§-&§>[§-&§.IGNORE_MAGNET];
         clip = §6#A§.§!&6§(§ "h§);
         clip.name = § "h§;
         §8%g§ = new §9"u§(this,HP,0,0);
         physParams.§5N§ = §9%1§.§&!A§;
         physParams.§0#0§ = §<#`§.§&!c§;
         canBeDamaged = true;
         physicModel.keepUnstable = false;
         stable = true;
         x = param1.x;
         y = param1.y;
         this.bar = new §[N§(param2,§0$N§.§%! §("INTERFERENCE_GENERATOR.NAME"),(height >> 1) + 10);
         Application.scene.§@$I§.§1$+§(this);
         if(!§`$8§)
         {
            §`$8§ = true;
            Application.scene.addEventListener(§"%$§.NAME,§&#C§,false,100);
         }
         §`%]§();
         setSpeedXY(0,5);
      }
      
      private static function §`%]§(param1:Boolean = true) : void
      {
         var _loc3_:BackpackItem = null;
         var _loc4_:§"Z§ = null;
         var _loc5_:§;#X§ = null;
         var _loc6_:int = 0;
         if(isBlocked == param1)
         {
            return;
         }
         isBlocked = param1;
         var _loc2_:Array = §8"%§.§?!W§.§4"m§.§+!0§();
         for each(_loc4_ in _loc2_)
         {
            _loc5_ = _loc4_.§?"#§().getBattleBackpack();
            for each(_loc6_ in §1%k§)
            {
               _loc3_ = §1!S§.§@!&§(_loc6_,_loc5_);
               if(_loc3_)
               {
                  _loc3_.isBlocked = param1;
               }
            }
            for each(_loc6_ in §@!w§)
            {
               _loc3_ = _loc5_.§8&E§(_loc6_);
               if(_loc3_)
               {
                  _loc3_.isBlocked = param1;
               }
            }
         }
      }
      
      private static function §&#C§(param1:§"%$§) : void
      {
         if(param1.§?%H§)
         {
            §`%]§();
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         var _loc2_:Vector.<§&"T§> = null;
         var _loc3_:int = 0;
         var _loc4_:§&"T§ = null;
         if(Application.scene.§@$I§.§=%d§())
         {
            Application.scene.removeEventListener(§"%$§.NAME,§&#C§);
            isBlocked = false;
         }
         else
         {
            §1"-§.explode(§;n§.§1"E§,x,y - height * 0.5,width * 0.5,§`!v§.§["s§);
            _loc2_ = Application.scene.§@$I§.§;%a§.§"L§([§^!P§]);
            _loc3_ = 0;
            for each(_loc4_ in _loc2_)
            {
               if(!_loc4_.disposed)
               {
                  _loc3_++;
               }
            }
            if(_loc3_ == 0)
            {
               §`%]§(false);
               Application.scene.removeEventListener(§"%$§.NAME,§&#C§);
            }
         }
         super.§[$u§(param1);
      }
      
      override protected function §%$e§(param1:CollisionEvent) : void
      {
         super.§%$e§(param1);
         if(!param1.other)
         {
            setSpeedXY(0,0);
            stable = true;
         }
      }
      
      public function getBar() : §%&F§
      {
         return this.bar;
      }
   }
}


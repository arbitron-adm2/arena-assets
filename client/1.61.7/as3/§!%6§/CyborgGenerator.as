package §!%6§
{
   import §"#x§.§'"$§;
   import §"$+§.*;
   import §%"1§.§@%;§;
   import §%&6§.§2$v§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§?3§;
   import §0&F§.§0%v§;
   import §2!-§.DamageEvent;
   import §2#x§.*;
   import §3#a§.§-#M§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §<%E§.§,$2§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import com.adobe.serialization.json.JSONEncoder;
   import com.inreflected.forks.spark.effects.interpolation.NumberInterpolator;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.text.TextFieldType;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.GetQuestProgressResult;
   import ru.pragmatix.wormix.messages.server.GetQuestRewardResponse;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class CyborgGenerator extends §&"T§
   {
      
      private var §5&I§:§+%]§;
      
      public function CyborgGenerator(param1:§+%]§, param2:Number, param3:Number)
      {
         super();
         canBeDamaged = true;
         clip = §6#A§.§!&6§("CyborgGenerator");
         this.x = param2;
         this.y = param3;
         this.§5&I§ = param1;
         addEventListener(§0%v§.§&!D§,this.§""0§);
         Application.scene.§@$I§.§1$+§(this);
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.§&!c§);
         physicModel = new §;$S§(physParams);
         stable = true;
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         var _loc2_:§+%]§ = null;
         var _loc3_:uint = 0;
         var _loc4_:Vector.<§+%]§> = null;
         var _loc5_:§+%]§ = null;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         if(!disposed)
         {
            if(param1.source.owner.squad.getTeamId() != this.§5&I§.squad.getTeamId())
            {
               super.§""0§(param1);
               _loc3_ = uint.MAX_VALUE;
               _loc4_ = §8"%§.§?!W§.§4"m§.§="T§(this.§5&I§,false,true);
               for each(_loc5_ in _loc4_)
               {
                  _loc6_ = §-q§.distance(x,y,_loc5_.x,_loc5_.y);
                  if(_loc6_ < _loc3_)
                  {
                     _loc3_ = _loc6_;
                     _loc2_ = _loc5_;
                  }
               }
               if(_loc2_)
               {
                  §1"-§.§,%F§(_loc2_,x,y,30,10,16776960,16);
                  _loc7_ = _loc2_.hp / 2 + §8"%§.randomSeed.§,!q§(0,50);
                  §'"$§.§]#I§(_loc2_,_loc2_.x,_loc2_.y,_loc2_,_loc7_,0,0,false,true);
                  if(!_loc2_.disposed)
                  {
                     _loc2_.setSpeedXY(0,-5);
                  }
               }
               §1"-§.explode(§;n§.§@"W§,x,y,14,§`!v§.§>l§);
               disposed = true;
            }
            else
            {
               stable = true;
            }
         }
      }
   }
}


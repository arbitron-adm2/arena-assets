package §[!`§
{
   import §"#x§.§'"$§;
   import §#%!§.§%&F§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §+$=§.§6#A§;
   import §2!-§.DamageEvent;
   import §2"L§.§^$y§;
   import §7!B§.§&"T§;
   import §<%k§.§`!v§;
   import §="z§.§9%1§;
   import §="z§.§;$S§;
   import §="z§.§<$t§;
   import §?$L§.§ "N§;
   import §@<§.§+%]§;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.physics.§3!=§;
   import ru.pragmatix.wormix.physics.§7z§;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §%5§ extends §&"T§
   {
      
      private static const §@!9§:String = "DragonFireInactiveMC";
      
      private static const §%#E§:uint = 90;
      
      private static const DAMAGE:uint = 35;
      
      private static const §9!"§:uint = 20;
      
      private static const §+#2§:uint = 20;
      
      private static const §6!N§:Number = 180 / Math.PI;
      
      private var owner:§+%]§;
      
      private var teamId:int;
      
      private var frame:uint = 0;
      
      private var lifetime:int;
      
      private var §7"c§:Vector.<§+%]§> = new Vector.<§+%]§>(0);
      
      private var enemies:Vector.<§+%]§>;
      
      public function §%5§(param1:§+%]§, param2:int, param3:int, param4:Number, param5:int, param6:int = -1, param7:Vector.<§+%]§> = null)
      {
         this.owner = param1;
         super();
         this.clip = §6#A§.§!&6§(§@!9§);
         this.x = param2;
         this.y = param3;
         this.lifetime = param5;
         this.teamId = param6 == -1 ? param1.squad.getTeamId() : param6;
         this.enemies = param7;
         Application.scene.§@$I§.§1$+§(this);
         clip.rotation = param4 * §6!N§ - §%#E§;
         §^"F§(param4,§+#2§);
      }
      
      override protected function §+_§() : void
      {
         physParams = new §9%1§(§<#`§.NONE);
         physicModel = new §;$S§(physParams);
      }
      
      override public function §!!>§() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         var _loc2_:§+%]§ = null;
         var _loc3_:Boolean = false;
         super.§!!>§();
         ++this.frame;
         if(this.frame >= this.lifetime)
         {
            disposed = true;
         }
         else
         {
            _loc1_ = §<H§.§5"]§(x,y,§9!"§);
            if(_loc1_.length == 0)
            {
               return;
            }
            _loc2_ = _loc1_[0];
            _loc3_ = _loc2_.squad.getTeamId() == this.teamId;
            if(_loc3_ && this.§7"c§.indexOf(_loc2_) == -1 && _loc2_ != this.owner)
            {
               if(frames % 10 == 0 || !this.enemies || this.enemies.length == 0)
               {
                  this.enemies = §8"%§.§?!W§.§4"m§.§6"M§(_loc2_);
               }
               else
               {
                  §7z§.§7"K§(this.enemies);
               }
               this.reflect(_loc2_,this.enemies);
            }
            else if(!_loc3_)
            {
               §'"$§.§]#I§(this.owner,x,y,_loc2_,DAMAGE,0,0,false);
               §@%;§.play(§`!v§.§;]§);
               disposed = true;
            }
         }
      }
      
      private function reflect(param1:§+%]§, param2:Vector.<§+%]§>) : void
      {
         var _loc4_:§+%]§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc3_:uint = param2 ? param2.length : 0;
         this.§7"c§.push(param1);
         if(_loc3_ > 0)
         {
            _loc4_ = param2[0];
            if(_loc3_ > 1)
            {
               _loc6_ = 1;
               while(_loc6_ < _loc3_)
               {
                  _loc7_ = §<H§.distance(param1,param2[_loc6_ - 1]);
                  _loc8_ = §<H§.distance(param1,param2[_loc6_]);
                  if(_loc7_ > _loc8_)
                  {
                     _loc4_ = param2[_loc6_];
                  }
                  _loc6_++;
               }
            }
            _loc5_ = §-q§.§'x§(x,y,_loc4_.x,_loc4_.y);
            this.lifetime += 45;
            clip.rotation = _loc5_ * §6!N§ - §%#E§;
            §^"F§(_loc5_,§+#2§);
         }
      }
      
      override protected function §1$Z§(param1:Event) : void
      {
         §-#@§ = true;
         disposed = true;
         dispatchEvent(param1);
      }
      
      override public function §[$u§(param1:Event) : void
      {
         super.§[$u§(param1);
         this.enemies = null;
      }
   }
}


package §[!`§
{
   import § &5§.§@N§;
   import §!L§.§`#p§;
   import §"#x§.§'"$§;
   import §#k§.§9$v§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §6",§.§[%w§;
   import §7!B§.§&"T§;
   import §7"Q§.§0$L§;
   import §8$V§.*;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §="z§.§9%1§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.events.Event;
   import ru.pragmatix.wormix.game.ai.§2%F§;
   import ru.pragmatix.wormix.messages.server.AwardedFriendsComeback;
   import ru.pragmatix.wormix.physics.§<#`§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §!$^§ extends §&"T§ implements §2%F§
   {
      
      private static const §<$C§:§&$2§ = new §&$2§(20);
      
      private static const DAMAGE:§&$2§ = new §&$2§(5);
      
      private static const §7&4§:Class = §6#A§.getClass("DragonFireActiveMC");
      
      private var owner:§+%]§;
      
      public function §!$^§(param1:§+%]§, param2:Number, param3:Number)
      {
         super(false,§@N§.§@$8§);
         this.owner = param1;
         canBeDamaged = false;
         physParams.addForce(§]%G§.§5$r§);
         physParams.§5N§ = §9%1§.§&!A§;
         physParams.§0#0§ = §<#`§.§&!c§;
         clip = new §7&4§();
         clip.gotoAndPlay(§-q§.random(1,clip.totalFrames));
         §-b§(0,1);
         clip.alpha = 1;
         this.x = param2;
         this.y = param3;
         Application.scene.§@$I§.§1$+§(this);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         if(frames % 3 == 0)
         {
            this.§8#m§(§<$C§.value);
         }
      }
      
      override protected function §+_§() : void
      {
         super.§+_§();
      }
      
      private function §8#m§(param1:int) : void
      {
         var _loc4_:§+%]§ = null;
         var _loc2_:Vector.<§+%]§> = §<H§.§5"]§(x,y,param1);
         var _loc3_:uint = uint(this.owner.squad.getTeamId());
         for each(_loc4_ in _loc2_)
         {
            if(_loc4_.squad.getTeamId() != _loc3_)
            {
               §'"$§.§]#I§(this.owner,_loc4_.x,_loc4_.y,_loc4_,DAMAGE.value,0,0,false,true,§&!E§.§!?§);
               disposed = true;
            }
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         §1"-§.attachTrail(this,8,11,13934615,13934615,0.995);
         super.§[$u§(param1);
      }
      
      public function §9$r§() : int
      {
         return §<$C§.value + 14;
      }
   }
}


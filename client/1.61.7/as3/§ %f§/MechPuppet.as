package § %f§
{
   import § &5§.§0&$§;
   import § &5§.§@N§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.§2!I§;
   import §0&F§.§0%v§;
   import §2"L§.*;
   import §4f§.§-&§;
   import §65§.§%%o§;
   import §<%k§.§`!v§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import com.greensock.*;
   import com.greensock.plugins.*;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class MechPuppet extends Puppet
   {
      
      public function MechPuppet(param1:§+%]§, param2:int, param3:int, param4:§5$n§, param5:Number, param6:uint, param7:int)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         §0$g§ = §`!v§.§1$t§;
         explosionSound = §`!v§.§4"t§;
      }
      
      override protected function §^#7§() : String
      {
         return §2!I§.NAME;
      }
      
      override protected function §-$4§() : §%%o§
      {
         return new §2!I§(owner,MechPuppet,paramSet,attachedClip,hp);
      }
   }
}


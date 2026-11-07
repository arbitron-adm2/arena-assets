package §%&3§
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §#k§.§9$v§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0"L§.§+# §;
   import §0%z§.*;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §3#T§.Boomerang;
   import §7$1§.§;$n§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §<"?§.*;
   import §<%k§.§`!v§;
   import §=#g§.*;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import config.achievements.§"!&§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §]"e§ extends §[$z§
   {
      
      private static const §%"l§:uint = 30;
      
      private static const §%&<§:uint = 3;
      
      protected var §>$3§:uint = 3;
      
      protected var §[",§:uint = 30;
      
      private var damagePerFrame:§&$2§ = new §&$2§(0);
      
      private var §@#6§:uint = 0;
      
      public function §]"e§(param1:§+%]§, param2:Point, param3:§5$n§, param4:Number, param5:uint, param6:Point, param7:int = 12)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         this.§,%1§();
      }
      
      protected function §,%1§() : void
      {
         if(homingFeat.§-%§() && §##[§ % this.§>$3§ == 0)
         {
            if(this.§@#6§++ < this.§[",§)
            {
               damage.value += this.damagePerFrame.value;
            }
         }
      }
      
      public function setDamagePerSecond(param1:§&$2§) : void
      {
         this.damagePerFrame.value = param1.value;
      }
   }
}


package §2#H§
{
   import § &5§.§=#P§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §"!C§.§3#n§;
   import §%"1§.§@%;§;
   import §%"Z§.§'$2§;
   import §&!m§.§-$6§;
   import §&&6§.*;
   import §'!Z§.§2!H§;
   import §'!Z§.§6S§;
   import §+$=§.§6#A§;
   import §+%S§.§@x§;
   import §-%B§.*;
   import §0"L§.§+# §;
   import §0%[§.§1%"§;
   import §0&F§.§0%v§;
   import §0&F§.§[!F§;
   import §2!-§.DamageEvent;
   import §2#i§.§+%z§;
   import §3#a§.§-#M§;
   import §4%_§.§6#W§;
   import §5#`§.§7%g§;
   import §65§.§%%o§;
   import §7!B§.§&"T§;
   import §7"Q§.§"&=§;
   import §7$t§.§&!e§;
   import §<!W§.*;
   import §<%E§.§4T§;
   import §<%k§.§2§;
   import §<%k§.§`!v§;
   import §<K§.*;
   import §>$q§.§9$U§;
   import §?#g§.*;
   import §@!N§.§""L§;
   import §@!i§.§5&4§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §[%§.Boar;
   import §^4§.§@#J§;
   import com.adobe.images.JPGEncoder;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.menu.rating.*;
   import ru.pragmatix.wormix.messages.structures.MechanicEventV2;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.utils.§7&5§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §,"R§ extends §%%o§
   {
      
      public static const NAME:String = "ABSORBING_DAMAGE";
      
      public static const §5!d§:String = "ALIEN_INVULNERABLE_BUFF";
      
      protected var §1!j§:§6S§;
      
      private var §]"#§:int = 0;
      
      public function §,"R§(param1:§6S§ = null, param2:String = "ABSORBING_DAMAGE", param3:int = -1, param4:int = -1)
      {
         this.§1!j§ = param1;
         super(param2,param3,param4);
      }
      
      override protected function §5#F§() : void
      {
         if(this.§1!j§)
         {
            this.§1!j§.appear(unit);
         }
         unit.addEventListener(§0%v§.§&!D§,this.§?$u§,false,§[!F§.§##c§);
         this.§]"#§ = getValue();
      }
      
      override protected function §0&"§() : void
      {
         if(!§&%M§)
         {
            unit.removeEventListener(§0%v§.§&!D§,this.§?$u§);
            if(this.§1!j§)
            {
               this.§1!j§.§=$5§();
               this.§1!j§ = null;
            }
         }
      }
      
      protected function §?$u§(param1:DamageEvent) : void
      {
         if(getValue() != -1)
         {
            if(this.§]"#§ <= param1.power)
            {
               if(§8"%§.§?!W§.§4"m§)
               {
                  §8"%§.§?!W§.§4"m§.§!%W§.§3%g§(unit,MechanicEventV2.TYPE_BLOCK,int(this.§]"#§),sourceItemId);
               }
               §2!H§.§'!i§("(" + int(this.§]"#§) + ")",§2!H§.§?$!§,unit.x + unit.width * 0.5,unit.y + unit.height * 0.5,20);
               param1.power -= this.§]"#§;
               clear();
               return;
            }
            this.§]"#§ -= param1.power;
         }
         var _loc2_:int = int(param1.power);
         if(_loc2_ > 0 && Boolean(§8"%§.§?!W§.§4"m§))
         {
            §8"%§.§?!W§.§4"m§.§!%W§.§3%g§(unit,MechanicEventV2.TYPE_BLOCK,_loc2_,sourceItemId);
         }
         if(_loc2_ > 0)
         {
            §2!H§.§'!i§("(" + _loc2_ + ")",§2!H§.§?$!§,unit.x + unit.width * 0.5,unit.y + unit.height * 0.5,20);
         }
         param1.power = 0;
      }
   }
}


package §"% §
{
   import § !8§.§`!d§;
   import §!$d§.§<$c§;
   import §"#x§.§'"$§;
   import §##j§.§!%&§;
   import §##j§.§0%=§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §##y§.CollisionEvent;
   import §%L§.§%%w§;
   import §&"c§.§!!q§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§[&;§;
   import §,"v§.§9%d§;
   import §0!§.§6#z§;
   import §0&F§.§0%v§;
   import §2!-§.HpChangeEvent;
   import §4u§.ReagentHint;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §8#o§.§1@§;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §@!i§.§!m§;
   import §@!i§.§"-§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import flash.display.MovieClip;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.messages.server.ShopResult;
   import ru.pragmatix.wormix.messages.structures.TemporalStuffStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class §4"^§ extends §^%3§
   {
      
      private var §4!o§:§%#F§;
      
      public function §4"^§(param1:MovieClip, param2:String)
      {
         super(param1,param2);
      }
      
      override public function setItem(param1:Object) : void
      {
         var _loc2_:§&!e§ = null;
         var _loc3_:String = null;
         if(trophy)
         {
            trophy.visible = false;
         }
         countField.text = "";
         icon.setVisible(param1);
         if(icon.§&k§())
         {
            icon.§&k§().visible = param1;
         }
         if(param1 == null)
         {
            return;
         }
         if(this.§4!o§)
         {
            removeChild(this.§4!o§);
            this.§4!o§ = null;
         }
         super.setItem(param1);
         if(param1 is §`%g§ || param1 is §]$X§)
         {
            if(param1 is §`%g§)
            {
               _loc2_ = §<$c§.§ !=§(§`%g§(param1).getId());
               if(§`%g§(param1).getCount() > 0)
               {
                  _loc3_ = (§;#_§(_loc2_).isComplex() ? "" : plus) + §`%g§(param1).getCount();
                  §&$9§.§>&F§(countField,§"-§.§6"j§,_loc3_);
               }
            }
            else if(param1 is §]$X§)
            {
               _loc2_ = §]$X§(param1).getRecord();
               if(§=?§(_loc2_).temp && trophy != null)
               {
                  trophy.visible = true;
               }
            }
            icon.setItem(_loc2_);
         }
         else if(param1 is §!%&§)
         {
            _loc2_ = §1@§.§`$M§(§!%&§(param1).getId());
            if(§!%&§(param1).getCount() > 1)
            {
               §&$9§.§>&F§(countField,§"-§.§6"j§,String(plus + §!%&§(param1).getCount()));
            }
            icon.setItem(_loc2_,new ReagentHint(_loc2_));
         }
         else if(param1 is §`!d§)
         {
            this.§4!o§ = new §%#F§(§6#A§.§!&6§("RaceRewardCell"));
            this.§4!o§.setItem(param1);
            this.§4!o§.getContainer().scaleX = this.§4!o§.getContainer().scaleY = 1.12;
            this.§4!o§.x = 0;
            this.§4!o§.y = 0;
            addChild(this.§4!o§);
            if(icon.§&k§())
            {
               icon.§&k§().visible = false;
            }
         }
         else if(param1 is §0%=§)
         {
         }
      }
   }
}


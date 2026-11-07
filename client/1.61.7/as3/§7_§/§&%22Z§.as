package §7_§
{
   import § $q§.§3U§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §##j§.§!%&§;
   import §##j§.§9x§;
   import §##j§.§]$X§;
   import §##j§.§`%g§;
   import §&#E§.§4##§;
   import §'%[§.§#&B§;
   import §+$=§.§6#A§;
   import §0&F§.§0%v§;
   import §2"L§.§##l§;
   import §3#a§.§-#M§;
   import §4u§.ReagentHint;
   import §7$t§.§&!e§;
   import §7$t§.§=?§;
   import §8#o§.§1@§;
   import §8$V§.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.social.controller.§?$6§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.utils.§7&5§;
   
   public class §&"Z§ extends §^%3§
   {
      
      private var §!"A§:Point;
      
      public function §&"Z§(param1:MovieClip)
      {
         super(param1,"");
         this.§!"A§ = new Point(icon.x,icon.y);
      }
      
      override public function setItem(param1:Object) : void
      {
         var _loc2_:§&!e§ = null;
         var _loc3_:§]$X§ = null;
         icon.setVisible(param1);
         countField.text = "";
         if(trophy)
         {
            trophy.visible = false;
         }
         if(icon.§&k§())
         {
            icon.§&k§().visible = param1;
         }
         if(param1 == null)
         {
            return;
         }
         super.setItem(param1);
         §7&5§.§>&<§(countField,"");
         if(param1 is §`%g§ || param1 is §]$X§)
         {
            if(param1 is §`%g§)
            {
               _loc2_ = §<$c§.§ !=§(§`%g§(param1).getId());
               if(§`%g§(param1).getCount() > 0)
               {
                  countField.text = plus + §`%g§(param1).getCount();
               }
               icon.x = this.§!"A§.x;
            }
            else if(param1 is §]$X§)
            {
               _loc3_ = §]$X§(param1);
               if(_loc3_.getExpireHours())
               {
                  _loc2_ = new §=?§(§=?§(_loc3_.getRecord()).getBonusList().getSourceType());
                  §=?§(_loc3_.getRecord()).cloneEquipRecord(_loc2_ as §=?§);
                  _loc2_.setDuration(_loc3_.getExpireHours());
               }
               else
               {
                  _loc2_ = _loc3_.getRecord();
               }
               countField.text = §0#2§.§'!5§(_loc2_.§8!t§() * 60);
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
               countField.text = plus + §!%&§(param1).getCount();
            }
            icon.x = this.§!"A§.x;
            icon.setItem(_loc2_,new ReagentHint(_loc2_));
         }
         else if(§9x§(param1).getCount() != 0)
         {
            countField.text = String(plus + §9x§(param1).getCount());
         }
      }
   }
}


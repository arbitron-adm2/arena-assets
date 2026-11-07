package §4u§
{
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#P§.§`o§;
   import §%# §.*;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §2!-§.DamageEvent;
   import §2#s§.*;
   import §4B§.§=%8§;
   import §6%2§.§#"B§;
   import §7$t§.§&!e§;
   import §7$t§.§;#_§;
   import §7$t§.§^$E§;
   import §=&!§.§&$a§;
   import §=&!§.§]$d§;
   import §@!i§.§"-§;
   import §@!i§.§<,§;
   import §@!i§.§=$,§;
   import §@<§.§+%]§;
   import com.greensock.loading.*;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.media.SoundTransform;
   import flash.utils.Dictionary;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.BossBattleOfferDialog;
   import ru.pragmatix.wormix.gui.window.§^$7§;
   import ru.pragmatix.wormix.messages.client.GetDailyBonus;
   import ru.pragmatix.wormix.messages.server.GetDailyBonusResult;
   import ru.pragmatix.wormix.model.rewards.§8"_§;
   import ru.pragmatix.wormix.utils.§1!S§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class ReagentHint extends §;$H§
   {
      
      public function ReagentHint(param1:§&!e§)
      {
         var _loc5_:Vector.<§;#_§> = null;
         var _loc6_:§;#_§ = null;
         super(§6#A§.§!&6§(§+"'§.§]$K§));
         §8$<§ = getContainer()["itemNameLabel"].y;
         var _loc2_:String = param1.§7%z§() + (Application.instance.§;"7§() ? " (id" + param1.getId() + ")" : "");
         §`b§(param1.§7%z§() != "",_loc2_,"itemNameLabel");
         §`b§(param1.§]G§() != "",param1.§]G§(),"whereLookLabel");
         var _loc3_:String = "";
         var _loc4_:Boolean = false;
         if(param1.getId() == §#"B§.BADGE)
         {
            _loc4_ = true;
            _loc3_ = §0$N§.GRADE_S_DEMAND + "\n";
         }
         else
         {
            _loc5_ = §1!S§.§%#§(param1);
            _loc3_ = §0$N§.REAGENT_DEMAND + "\n";
            if(_loc5_.length > 0)
            {
               for each(_loc6_ in _loc5_)
               {
                  _loc3_ += "- " + _loc6_.§7%z§() + "\n";
               }
            }
            _loc4_ = Boolean(_loc5_) && _loc5_.length > 0;
         }
         §`b§(_loc4_,_loc3_,"requireLabel");
         §8$Q§();
      }
   }
}


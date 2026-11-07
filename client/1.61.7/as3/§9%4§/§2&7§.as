package §9%4§
{
   import § !8§.§`!d§;
   import §!L§.§+"'§;
   import §"#x§.§'"$§;
   import §#"V§.§!&5§;
   import §##j§.§'"%§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §&#E§.§;2§;
   import §'!Z§.§;n§;
   import §+$=§.§6#A§;
   import §+%S§.§?3§;
   import §,!f§.*;
   import §-@§.§+"A§;
   import §0&F§.§0%v§;
   import §0&F§.§`"^§;
   import §2#W§.§8-§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §7$t§.§=?§;
   import §<!W§.§#&#§;
   import §<%k§.§`!v§;
   import §=$#§.§`%u§;
   import §=&!§.§4$z§;
   import §=&!§.§<$Z§;
   import §=&!§.§]$d§;
   import §>%S§.§^!V§;
   import §?$K§.§=z§;
   import §@!i§.§"-§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §[$P§.§+H§;
   import §[%'§.§<"G§;
   import §[%§.Cat;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.BuyColiseumTicket;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.rewards.*;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   use namespace gestouch_internal;
   
   public class §2&7§ extends §]$Z§
   {
      
      public function §2&7§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function §8$n§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§+%]§ = null;
         var _loc5_:Point = null;
         var _loc2_:Vector.<§+%]§> = §8"%§.§?!W§.§4"m§.§5#h§();
         for each(_loc4_ in _loc2_)
         {
            if(_loc4_.y > Application.scene.height - Application.scene.§#%0§())
            {
               _loc5_ = §=z§.§-L§(_loc4_);
               _loc3_ = true;
               §'"$§.§]#I§(owner,_loc4_.x,_loc4_.y,_loc4_,paramSet.damage.value,0,0,true,true,§&!E§.POISON,true,false);
               if(_loc5_)
               {
                  §=z§.§5!u§(_loc4_,_loc5_);
               }
            }
         }
         if(_loc3_)
         {
            ++§]&#§.value;
         }
         super.§8$n§(param1);
      }
   }
}


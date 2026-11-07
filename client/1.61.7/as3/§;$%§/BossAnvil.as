package §;$%§
{
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §+%S§.*;
   import §,"v§.§9%d§;
   import §0%[§.§0%§;
   import §0%[§.§1%"§;
   import §7"Q§.§"&=§;
   import §<$2§.§<%>§;
   import §@!N§.§2"e§;
   import §@!i§.§0%a§;
   import §@!i§.§5%8§;
   import §@!i§.§<#&§;
   import §@<§.§+%]§;
   import §[!O§.§%@§;
   import §[!`§.*;
   import §["3§.*;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.social.§>C§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.ActivatePromoKeyError;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.bonus.Bonus;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.utils.*;
   import ru.pragmatix.wormix.weapons.*;
   import ru.pragmatix.wormix.weapons.ammo.§&!E§;
   
   public class BossAnvil extends §4"9§
   {
      
      private var target:§+%]§;
      
      public function BossAnvil(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:§+%]§)
      {
         super(param1,param2,param3,param4,§&!E§.§!?§);
         this.target = param5;
      }
      
      override protected function §=#K§() : void
      {
         var _loc1_:Point = §&!6§;
         if(§7!j§)
         {
            Application.scene.§?"w§(§7!j§.x,§7!j§.y,_loc1_.x + width,_loc1_.y + 12,§`#=§);
         }
         §7!j§ = _loc1_;
      }
      
      override protected function get isStopped() : Boolean
      {
         return Boolean(this.target) && !this.target.disposed ? (this.target.y <= y + (width >> 1) - 10 ? super.isStopped : false) : super.isStopped;
      }
   }
}


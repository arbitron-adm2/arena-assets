package §0%z§
{
   import § #m§.§?A§;
   import § &5§.§=#P§;
   import §!L§.§+"'§;
   import §"%H§.§6$3§;
   import §%%A§.*;
   import §+$=§.§6#A§;
   import §0%[§.§6!?§;
   import §7"Q§.*;
   import §?$L§.§&$9§;
   import §@!N§.§""L§;
   import §@!N§.§3!3§;
   import §@!i§.§"-§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import config.achievements.BossAchieves;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.client.PvpActionEx;
   import ru.pragmatix.wormix.pvp.messages.client.PvpEndTurn;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class BossAchieveHint implements §?A§, §^c§
   {
      
      private var hint:§`&-§;
      
      private var §#!&§:MovieClip;
      
      private var §!#R§:Vector.<MovieClip>;
      
      public function BossAchieveHint(param1:§6$3§)
      {
         super();
         this.hint = new §`&-§(§6#A§.§!&6§(§+"'§.§8"s§));
         this.§#!&§ = §6#A§.§!&6§(param1.levels[0].icon);
         this.§!#R§ = §3!3§.§#"R§(this.§#!&§);
         this.stopAnimations();
         this.hint.§?!C§(this.§#!&§);
         this.§#!&§.x = 15;
         this.§#!&§.y = 14;
         this.hint.§'%s§("achieveName").text = param1.levels[0].name;
         this.hint.§'%s§("achieveDescription").text = param1.§]G§(0);
         var _loc2_:DisplayObject = this.hint.getChildByName("fuzyReward");
         var _loc3_:DisplayObject = this.hint.getChildByName("rubyReward");
         _loc2_.visible = _loc3_.visible = false;
         if(param1.levels[0].reward.type == §1&6§.RUBY.value)
         {
            _loc3_.visible = true;
         }
         else
         {
            _loc2_.visible = true;
         }
         var _loc4_:TextField = this.hint.§'%s§("awardCount");
         §&$9§.§>&F§(_loc4_,§"-§.§6"j§,param1.levels[0].reward.count);
         var _loc5_:TextField = this.hint.§'%s§("pointsCount");
         §&$9§.§>&F§(_loc5_,§"-§.§6"j§,String(param1.levels[0].points));
      }
      
      public function §&k§() : DisplayObject
      {
         return this.hint.getContainer();
      }
      
      public function playAnimations() : void
      {
         §3!3§.§<%W§(this.§!#R§);
      }
      
      public function stopAnimations() : void
      {
         §3!3§.§>!j§(this.§!#R§);
      }
      
      public function get icon() : MovieClip
      {
         return this.§#!&§;
      }
   }
}


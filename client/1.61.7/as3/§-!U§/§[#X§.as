package §-!U§
{
   import §!L§.§+"'§;
   import §#"V§.§!&5§;
   import §#"V§.§?%>§;
   import §&#W§.§4#T§;
   import §&#h§.§-"F§;
   import §+%S§.§2&>§;
   import §+&<§.§@$L§;
   import §,"v§.§9%d§;
   import §-@§.§+"A§;
   import §2"L§.§^$y§;
   import §2#H§.§,"R§;
   import §9%W§.§`"y§;
   import §=$#§.§`%u§;
   import §?$7§.§6%k§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §]^§.§-$T§;
   import §^"y§.§]#i§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.response.edit.ChangeClanJoinRatingResponse;
   import ru.pragmatix.wormix.messages.server.MercenariesStateResponse;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.rewards.§1%z§;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §[#X§ extends §>$>§
   {
      
      private var §<#N§:§&`§;
      
      private var helpBtn:§?%>§;
      
      private var cont:§`&-§;
      
      public function §[#X§(param1:DisplayObject = null)
      {
         super(param1);
         this.§<#N§ = new §&`§(§[#X§);
         var _loc2_:DisplayObject = getChildByName("helpBtn");
         var _loc3_:MovieClip = new MovieClip();
         this.cont = new §`&-§(_loc3_);
         _loc3_.addChild(_loc2_);
         §?!C§(_loc3_);
         this.helpBtn = §!&5§.§7#[§(_loc2_);
         this.helpBtn.§00§(null);
      }
      
      protected function §5%P§(param1:Event) : void
      {
      }
      
      override protected function §4$m§() : void
      {
         §+"A§.§;#q§(§=%e§,§8"%§.§%w§.§["x§);
      }
      
      override public function §9$n§(param1:§-$T§) : void
      {
         var _loc2_:int = 0;
         var _loc6_:§1%z§ = null;
         super.§9$n§(param1);
         _loc2_ = param1.getId();
         var _loc3_:String = §`%u§.§5%n§(_loc2_);
         this.cont.setQtip(_loc3_ || §0$N§.BOSS_PROMPT_UNAVAILABLE,null,§+"'§.§9%>§);
         §'%s§("bossName").text = param1.§7%z§();
         var _loc4_:TextField = §'%s§("description");
         _loc4_.text = param1.§]G§();
         _loc4_.mouseEnabled = false;
         var _loc5_:MovieClip = getChildByName("avatar") as MovieClip;
         §@$L§.§+"S§(_loc5_,_loc2_,null);
         var _loc7_:Boolean = _loc2_ > §6%k§.§>!+§(_loc2_).§^&§;
         if(_loc7_)
         {
            _loc6_ = param1.§3"c§();
         }
         else if(§8"%§.§%w§.§7#G§())
         {
            _loc6_ = param1.§2!T§();
         }
         else
         {
            _loc6_ = param1.§+%`§();
         }
         §8!g§(_loc6_);
      }
   }
}


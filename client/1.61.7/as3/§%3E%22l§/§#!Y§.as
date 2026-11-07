package §>"l§
{
   import §"!C§.§3#n§;
   import §"#x§.§'"$§;
   import §#k§.§9$v§;
   import §&"c§.§5$n§;
   import §&&6§.§7$§;
   import §'!Z§.§1"-§;
   import §'!Z§.§;n§;
   import §+%S§.§[0§;
   import §,"v§.§9%d§;
   import §-8§.§3!x§;
   import §0&F§.§0%v§;
   import §2"L§.§,'§;
   import §2#x§.*;
   import §4f§.§-&§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §6"'§.§&"3§;
   import §8#o§.§#$s§;
   import §9%W§.§!"G§;
   import §<!W§.§?#L§;
   import §<%k§.§`!v§;
   import §=!p§.§9#n§;
   import §=1§.*;
   import §?$L§.§0"-§;
   import §@!N§.§""L§;
   import §@!i§.§<!9§;
   import §@$§.§+%>§;
   import §@<§.§+%]§;
   import §@<§.§5"O§;
   import §^#[§.§&$2§;
   import §`#x§.§"$r§;
   import §`%&§.§5$1§;
   import §`%&§.§`§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import org.gestouch.core.ITouchHitTester;
   import org.gestouch.core.gestouch_internal;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.logger.§&`§;
   import ru.pragmatix.flox.serialization.§<!h§;
   import ru.pragmatix.flox.social.controller.SocialApiSettings;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanInviteTO;
   import ru.pragmatix.wormix.messages.server.MercenariesDefsResponse;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.server.BattleLoginError;
   import ru.pragmatix.wormix.serialization.server.*;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   public class §#!Y§ extends §`&-§
   {
      
      private var cells:Array = [];
      
      public function §#!Y§(param1:DisplayObject)
      {
         super(param1);
         this.init();
      }
      
      private function init() : void
      {
         var _loc3_:§3!z§ = null;
         var _loc1_:DisplayObjectContainer = §#!`§();
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.numChildren)
         {
            _loc3_ = new §3!z§(_loc1_.getChildAt(_loc2_));
            this.cells.push(_loc3_);
            _loc2_++;
         }
         this.cells.sortOn("y",Array.NUMERIC);
      }
      
      public function §4%3§(param1:uint, param2:uint) : void
      {
         this.§]"L§(param1);
         this.§?h§(param1 - param2);
      }
      
      private function §]"L§(param1:uint) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         if(this.cells.length > param1)
         {
            _loc2_ = this.cells.length - param1;
            _loc3_ = 0;
            _loc4_ = int(this.cells.length);
            while(_loc3_ < _loc4_)
            {
               _loc5_ = _loc3_ < _loc2_;
               this.cells[_loc3_].setVisible(!_loc5_);
               _loc3_++;
            }
         }
      }
      
      private function §?h§(param1:uint) : void
      {
         var _loc3_:§3!z§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in this.cells)
         {
            if(_loc3_.isVisible())
            {
               if(_loc2_ < param1)
               {
                  _loc3_.§<n§();
               }
               else
               {
                  _loc3_.§6$g§();
               }
               _loc2_++;
            }
         }
      }
   }
}


package §<!W§
{
   import § !8§.§9%+§;
   import § !8§.§`!d§;
   import §##j§.§7,§;
   import §##j§.§>"M§;
   import §#%!§.§%&F§;
   import §'$j§.§'-§;
   import §,!f§.*;
   import §2B§.§#&E§;
   import §65§.§%%o§;
   import §7$t§.§=?§;
   import §@<§.§+%]§;
   import §[%§.Zombie;
   import §^#[§.§&$2§;
   import config.§;"I§;
   import config.§`!a§;
   import flash.display.DisplayObject;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   
   public class §=y§ extends §%%o§
   {
      
      public static const NAME:String = "MASS_REVIVAL_AND_REVENGE_BUFF";
      
      public function §=y§()
      {
         super(NAME,-1,0);
      }
      
      override protected function §7$d§() : void
      {
         var _loc2_:§`!d§ = null;
         var _loc4_:§+%]§ = null;
         var _loc5_:§1N§ = null;
         var _loc1_:Vector.<§+%]§> = unit.squad.§1!n§();
         _loc2_ = §9%+§.§?%S§()[int(§;"I§.§"$H§)];
         var _loc3_:int = _loc2_.§%§(§`!a§.§-%J§).getLevel();
         for each(_loc4_ in _loc1_)
         {
            if(_loc4_ != unit && !_loc4_.isRevived())
            {
               if(!_loc4_.buffs.hasBuff(§1N§.NAME) && _loc3_ <= _loc4_.record.getLevel())
               {
                  _loc5_ = new §1N§(true);
                  _loc4_.buffs.place(_loc5_);
                  _loc5_.activate(true);
               }
               if(!_loc4_.buffs.hasBuff(§=!6§.NAME))
               {
                  _loc4_.buffs.place(new §=!6§(false,false,true,true));
               }
            }
         }
      }
      
      override protected function §0&"§() : void
      {
         var _loc1_:Vector.<§+%]§> = null;
         var _loc2_:§`!d§ = null;
         var _loc3_:int = 0;
         var _loc4_:§+%]§ = null;
         if(!Application.scene.§@$I§.§=%d§())
         {
            _loc1_ = unit.squad.§1!n§();
            _loc2_ = §9%+§.§?%S§()[int(§;"I§.§"$H§)];
            _loc3_ = _loc2_.§%§(§`!a§.§-%J§).getLevel();
            for each(_loc4_ in _loc1_)
            {
               if(_loc4_ != unit)
               {
                  if(!(_loc4_ is Zombie) || _loc4_.isRevived())
                  {
                     _loc4_.buffs.§6C§(§=!6§.NAME);
                  }
                  if(!(_loc4_ is Zombie) || _loc4_.isRevived() || _loc3_ > _loc4_.record.getLevel())
                  {
                     _loc4_.buffs.§6C§(§1N§.NAME);
                  }
               }
            }
         }
      }
   }
}


package §+&<§
{
   import § "%§.§!§;
   import § "%§.§!&7§;
   import § "%§.§'%d§;
   import § "%§.§'<§;
   import § "%§.§7"6§;
   import § "%§.§=#m§;
   import §%"Z§.§2"B§;
   import §='§.§,%u§;
   import §='§.§5&D§;
   import §?$7§.§+l§;
   import §?$7§.§6%k§;
   import §]^§.§-$T§;
   import ru.pragmatix.wormix.controller.§8"%§;
   
   public class §]%P§ implements §5&D§
   {
      
      public function §]%P§()
      {
         super();
      }
      
      public function §!A§(param1:§,%u§, param2:§-$T§) : void
      {
         var _loc5_:int = 0;
         var _loc9_:Boolean = false;
         var _loc3_:§+l§ = §6%k§.§>!+§(param2.getId());
         var _loc4_:int = _loc3_.§^&§;
         if(_loc4_ < 0)
         {
            _loc4_ = 0;
         }
         _loc5_ = param2.getId();
         var _loc6_:int = _loc4_ + 1;
         var _loc7_:Boolean = _loc5_ == _loc3_.§+#q§() + 1;
         var _loc8_:Boolean = _loc4_ == 0 ? _loc7_ : _loc5_ == _loc6_;
         _loc9_ = _loc7_ && _loc8_;
         var _loc10_:Boolean = (_loc9_) || _loc8_;
         var _loc11_:Boolean = §8"%§.§%w§.§7#G§();
         if(param1 is §^@§ && _loc10_ && !_loc11_)
         {
            param1.§6D§(param2);
         }
         else if(Application.userProfile.getLevel() < param2.§""H§())
         {
            param1.§%"m§(param2);
         }
         else if(_loc5_ <= _loc4_)
         {
            param1.§&"]§(param2);
         }
         else if(_loc10_ && _loc11_)
         {
            param1.§&R§(param2);
         }
         else if(_loc5_ > _loc4_)
         {
            if(_loc10_)
            {
               param1.§&R§(param2);
            }
            else
            {
               param1.§^"H§(param2);
            }
         }
      }
   }
}


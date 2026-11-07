package §<"?§
{
   import § !P§.*;
   import §0%[§.§0%§;
   import §2"L§.*;
   import §2#x§.§0"`§;
   import §<$q§.§6%b§;
   import §<$q§.§?!d§;
   import §<%E§.§,$2§;
   import §=!C§.§0#"§;
   import §=!C§.§;#M§;
   import §=$#§.§1!$§;
   import §?$7§.§+#N§;
   import §["3§.*;
   import §`"p§.*;
   import flash.display.DisplayObject;
   import flash.geom.ColorTransform;
   import flash.text.TextFieldType;
   import flash.utils.Dictionary;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.messages.structures.ChatMessage;
   import ru.pragmatix.wormix.model.bonus.§@"I§;
   import ru.pragmatix.wormix.model.items.crafted.CraftedEquipFamily;
   import ru.pragmatix.wormix.social.Social;
   import ru.pragmatix.wormix.utils.§0§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §@&#§ extends §6$c§
   {
      
      public function §@&#§(param1:uint, param2:Boolean = false)
      {
         if(§0#2§.§;%<§())
         {
            param1 = uint(this.§+""§(getId()) || param1);
         }
         super(param1,param2);
         §,&0§ = 2;
      }
      
      private function §+""§(param1:int) : uint
      {
         var _loc2_:uint = 0;
         switch(param1)
         {
            case §+#N§.§"v§:
               _loc2_ = 154;
               break;
            case §+#N§.THIEVES:
               _loc2_ = 153;
               break;
            case §+#N§.SOLAR_PRIEST:
               _loc2_ = 119;
               break;
            case §+#N§.§0"]§:
               _loc2_ = 90;
         }
         return _loc2_;
      }
      
      override public function §,$j§() : §?!d§
      {
         var _loc1_:§?!d§ = §?!d§.§1%3§();
         _loc1_.chatSettings = new §6%b§(§1!$§.§!"1§,§1!$§.§%%-§,§1!$§.NONE,§1!$§.§%%-§);
         return _loc1_;
      }
   }
}


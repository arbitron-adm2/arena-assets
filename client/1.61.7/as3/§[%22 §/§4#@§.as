package §[" §
{
   import § m§.§9!^§;
   import §!$Z§.§"$I§;
   import §#P§.§`o§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §+$=§.§6#A§;
   import §+%S§.§2&>§;
   import §,"v§.§9%d§;
   import §2"L§.§,'§;
   import §2#H§.§,"R§;
   import §3#a§.§-#M§;
   import §5%S§.§>&-§;
   import §9"-§.*;
   import §<%k§.§`!v§;
   import §?$L§.§&$9§;
   import §@!i§.§"-§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import §]$v§.§3z§;
   import §^#[§.§?"&§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.client.IncreaseAchievements;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.model.user.§4! §;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class §4#@§ extends §`&-§
   {
      
      private static const §#$u§:String = "UnitPanel";
      
      private var nameField:TextField;
      
      private var hpField:TextField;
      
      public function §4#@§(param1:String, param2:int, param3:String, param4:uint)
      {
         var _loc5_:MovieClip = null;
         _loc5_ = §6#A§.§!&6§(§#$u§);
         _loc5_.mouseEnabled = false;
         _loc5_.mouseChildren = false;
         super(_loc5_);
         var _loc6_:uint = §5%8§.§75§(param4).§=%%§;
         this.nameField = §'%s§("nameField");
         this.nameField.autoSize = TextFieldAutoSize.LEFT;
         §&$9§.§>&F§(this.nameField,§"-§.§+$m§,§4! §.§^B§(param1));
         this.nameField.textColor = _loc6_;
         if(Boolean(param2) || Boolean(param3))
         {
            this.hpField = §'%s§("hpField");
            this.hpField.autoSize = TextFieldAutoSize.LEFT;
            this.hpField.textColor = _loc6_;
         }
         if(param2)
         {
            this.§2!z§(param2);
         }
         if(param3)
         {
            this.setDuration(param3);
         }
         this.§]!8§();
      }
      
      public function § %0§(param1:String) : void
      {
         if(this.nameField)
         {
            §&$9§.§>&F§(this.nameField,§"-§.§+$m§,§4! §.§^B§(param1));
            this.§-%N§();
         }
      }
      
      private function §-%N§() : void
      {
         if(Boolean(this.nameField) && Boolean(this.hpField))
         {
            if(this.nameField.width > this.hpField.width)
            {
               this.nameField.x = 0;
               §`o§.§%&%§(this.hpField);
            }
            else if(this.nameField.width < this.hpField.width)
            {
               this.hpField.x = 0;
               §`o§.§%&%§(this.nameField);
            }
         }
      }
      
      public function §2!z§(param1:int) : void
      {
         if(this.hpField)
         {
            §&$9§.§>&F§(this.hpField,§"-§.§6"j§,this.§2!h§(param1));
            this.§-%N§();
         }
      }
      
      private function §2!h§(param1:int) : String
      {
         return param1 > 0 ? param1.toString() : "0";
      }
      
      public function setDuration(param1:String) : void
      {
         if(this.hpField)
         {
            §&$9§.§>&F§(this.hpField,§"-§.§6"j§,param1);
            this.§-%N§();
         }
      }
      
      public function §]!8§() : void
      {
         this.nameField.visible = true;
         if(this.hpField)
         {
            this.hpField.visible = true;
         }
      }
      
      public function §-"i§() : void
      {
         this.nameField.visible = false;
         if(this.hpField)
         {
            this.hpField.visible = true;
         }
      }
   }
}


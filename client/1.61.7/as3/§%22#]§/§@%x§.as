package §"#]§
{
   import §2B§.§8"n§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import ru.pragmatix.flox.gui.controls.§1#g§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.window.§^c§;
   
   public class §@%x§ extends §1#g§ implements §^c§
   {
      
      private var §"#-§:§7&0§;
      
      private var content:DisplayObjectContainer;
      
      public function §@%x§(param1:String)
      {
         super();
         this.id = param1;
      }
      
      override public function §@"o§(param1:DisplayObject) : void
      {
         super.§@"o§(param1);
         this.§"#-§ = new §7&0§(§'$a§("content"));
      }
      
      override public function activate() : void
      {
         super.activate();
         §8"%§.§0&4§.§3W§(Application.userProfile);
         dispatchEvent(new §8"n§(§8"n§.§";§));
         §&#F§(false);
         this.§"#-§.setVisible(true);
         this.§"#-§.update();
      }
      
      public function §@#H§() : §7&0§
      {
         return this.§"#-§;
      }
      
      public function playAnimations() : void
      {
      }
      
      public function stopAnimations() : void
      {
      }
   }
}


package §'%[§
{
   import § &5§.§=#P§;
   import §"$+§.§@C§;
   import §"$+§.§`&$§;
   import §##j§.§7,§;
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&#E§.*;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §0"L§.§+# §;
   import §0%[§.§0%§;
   import §3"_§.§?#w§;
   import §4!x§.§@& §;
   import §9%W§.§!7§;
   import §9&+§.§6&=§;
   import §<%E§.§,$2§;
   import §<%E§.§6$=§;
   import §<%E§.§=$u§;
   import §<%k§.§`!v§;
   import §=!p§.§8#x§;
   import §>%S§.§^!V§;
   import §@!i§.§!m§;
   import §]$v§.§]%_§;
   import §^#[§.§&$2§;
   import §`%&§.§8U§;
   import flash.display.BitmapData;
   import flash.errors.IllegalOperationError;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§%%v§;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.LoginError;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §@"4§ implements §]$5§
   {
      
      private var §%$0§:String;
      
      private var §&!r§:String;
      
      private var §[f§:§?#w§;
      
      private var callback:Function;
      
      private var photo:BitmapData;
      
      private var photoDescription:String;
      
      public function §@"4§(param1:String, param2:String, param3:§?#w§)
      {
         super();
         this.§%$0§ = param1;
         this.§&!r§ = param2;
         this.§[f§ = param3;
      }
      
      public function savePhoto(param1:BitmapData, param2:String, param3:Function) : void
      {
         this.photo = param1;
         this.photoDescription = param2;
         this.callback = param3;
         this.§[f§.getAlbums(this.§,$m§);
      }
      
      private function §,$m§(param1:§=$u§) : void
      {
         var _loc2_:§8#x§ = null;
         for each(_loc2_ in param1.getAlbums())
         {
            if(_loc2_.§@$+§() == this.§%$0§)
            {
               this.§[f§.savePhoto(this.photo,_loc2_.§'$U§(),this.photoDescription,this.§'#J§);
               return;
            }
         }
         this.§[f§.createAlbum(this.§%$0§,this.§&!r§,this.§?$m§);
      }
      
      private function §?$m§(param1:§6$=§) : void
      {
         if(param1.success)
         {
            this.§[f§.savePhoto(this.photo,param1.album.§'$U§(),this.photoDescription,this.§'#J§);
         }
         else
         {
            this.callback.apply(this,[param1]);
         }
      }
      
      private function §'#J§(param1:§,$2§) : void
      {
         this.callback.apply(this,[param1]);
      }
   }
}


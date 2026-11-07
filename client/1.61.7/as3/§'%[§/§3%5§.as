package §'%[§
{
   import §#$e§.§!a§;
   import §#k§.§9$v§;
   import §%L§.§%%w§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §4$b§.*;
   import §4f§.§-&§;
   import §5%S§.§>&-§;
   import §<!^§.§]#u§;
   import §<%E§.§,$2§;
   import §<%E§.§6$=§;
   import §<%E§.§=$u§;
   import §=!p§.§8#x§;
   import §?$K§.§@$J§;
   import §?$L§.§0"-§;
   import §@!i§.§!m§;
   import §@!i§.§5%8§;
   import §@<§.§+%]§;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   import flash.events.TouchEvent;
   import flash.text.TextField;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§[&G§;
   import ru.pragmatix.wormix.messages.client.GetArena;
   import ru.pragmatix.wormix.messages.client.GetQuestProgress;
   import ru.pragmatix.wormix.messages.server.DistributePointsResult;
   import ru.pragmatix.wormix.physics.§<H§;
   
   public class §3%5§ implements §]$5§
   {
      
      private var §%$0§:String;
      
      private var §&!r§:String;
      
      private var §[f§:§!a§;
      
      private var callback:Function;
      
      private var photo:BitmapData;
      
      private var photoDescription:String;
      
      public function §3%5§(param1:String, param2:String, param3:§!a§)
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
         this.§[f§.createAlbum(this.§%$0§,this.§&!r§,this.§<"3§);
      }
      
      private function §<"3§(param1:§6$=§) : void
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


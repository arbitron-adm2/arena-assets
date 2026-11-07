package §<%E§
{
   import § #g§.*;
   import § $q§.§3U§;
   import §#k§.§9$v§;
   import §4u§.ReagentHint;
   import §=!p§.§8#x§;
   import §]^§.§-$T§;
   import flash.display.MovieClip;
   import ru.pragmatix.wormix.messages.clans.response.TopClansResponse;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   
   public class §=$u§ extends §,$2§
   {
      
      private var §<!'§:Array = [];
      
      public function §=$u§()
      {
         super(null,"LOAD.ALBUMS");
      }
      
      public function §]$t§(param1:§8#x§) : void
      {
         this.§<!'§[this.§<!'§.length] = param1;
      }
      
      public function getAlbums() : Array
      {
         return this.§<!'§;
      }
   }
}


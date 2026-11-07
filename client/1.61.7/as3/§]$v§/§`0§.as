package §]$v§
{
   import §%"1§.§7#P§;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §1#p§.Team;
   import §3#T§.Helicopter;
   import §<%k§.§`!v§;
   import §@<§.§+%]§;
   import §^#o§.§%%2§;
   import §^#o§.§8!U§;
   import flash.events.Event;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§>§;
   
   public class §`0§ extends §1>§
   {
      
      private static const § w§:uint = 300;
      
      private static const §["]§:uint = 4;
      
      private static const §6"m§:Number = Math.PI / 30;
      
      private static const §]"x§:uint = 30;
      
      private var §>";§:§7#P§;
      
      private var §=$z§:Boolean = false;
      
      private var §0#+§:int = 0;
      
      private var §"$J§:§8!U§;
      
      private var homingFeat:§%%2§;
      
      public function §`0§(param1:§+%]§, param2:§5$n§, param3:Number, param4:uint)
      {
         super(param1,param2,param3,param4);
         this.§"$J§ = new §8!U§(this,§ w§,§["]§);
         this.homingFeat = new §%%2§(this,param4,§6"m§);
         this.homingFeat.§!$s§(this.§"$J§);
      }
      
      override public function §!!>§() : void
      {
         super.§!!>§();
         ++this.§0#+§;
         if(§"b§ && !this.§=$z§)
         {
            this.§0#+§ = 0;
            this.§7$=§();
         }
         else if(this.§=$z§ && (!§"b§ || this.§0#+§ >= §]"x§))
         {
            this.§&!n§();
         }
         if(this.§>";§ == null && this.§=$z§ && Boolean(this.homingFeat.§`"%§()))
         {
            this.§>";§ = §@%;§.play(§`!v§.§]%2§,true);
         }
      }
      
      private function §7$=§() : void
      {
         if(!this.§=$z§)
         {
            this.§=$z§ = true;
            §=l§.push(this.§"$J§,this.homingFeat);
         }
      }
      
      private function §&!n§() : void
      {
         if(this.§=$z§)
         {
            this.§=$z§ = false;
            if(this.§>";§ != null)
            {
               this.§>";§.stop();
            }
            this.§"$J§.§>^§();
            this.homingFeat.§>^§();
            §=l§.splice(§=l§.indexOf(this.§"$J§),1);
            §=l§.splice(§=l§.indexOf(this.homingFeat),1);
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         this.§&!n§();
         super.§[$u§(param1);
      }
   }
}


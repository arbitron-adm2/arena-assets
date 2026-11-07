package §"&?§
{
   import § &5§.§@N§;
   import §+%S§.§+m§;
   import §+%S§.§[&;§;
   import §1#p§.§2=§;
   import §7!B§.§&"T§;
   import §=#g§.*;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.*;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class § "F§ extends §&"T§
   {
      
      public function § "F§(param1:MovieClip, param2:int, param3:int, param4:Boolean = false, param5:§@N§ = null)
      {
         super(true,param5);
         if(param1 != null)
         {
            this.clip = param1;
         }
         this.x = param2;
         this.y = param3;
         physParams.addForce(§]%G§.§5$r§);
         if(param4)
         {
            physParams.addForce(§]%G§.§-4§);
         }
         Application.scene.§@$I§.§1$+§(this,false,true);
      }
      
      override protected function §1$Z§(param1:Event) : void
      {
         disposed = true;
      }
   }
}


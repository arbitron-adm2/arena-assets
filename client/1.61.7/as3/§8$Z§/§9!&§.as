package §8$Z§
{
   import § #m§.§?A§;
   import § #m§.§[&H§;
   import §%# §.§##U§;
   import §-@§.§0"e§;
   import §0%[§.Cookie;
   import §2#s§.*;
   import §3#T§.Helicopter;
   import §4u§.§[%u§;
   import §6",§.§[%w§;
   import §<"L§.§##-§;
   import §<V§.§!&-§;
   import §@!N§.§2"e§;
   import §@!N§.§3!3§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import ru.pragmatix.wormix.messages.server.AwardGranted;
   import ru.pragmatix.wormix.messages.structures.GenericAwardStructure;
   import ru.pragmatix.wormix.model.rewards.§[#c§;
   import ru.pragmatix.wormix.model.rewards.§]+§;
   import ru.pragmatix.wormix.utils.§=%_§;
   
   public class §9!&§ extends MovieClip implements §?A§
   {
      
      private var hint:§[%u§;
      
      private var §;$4§:§[&H§;
      
      private var tier:§!&-§;
      
      private var clip:MovieClip;
      
      public function §9!&§(param1:§!&-§, param2:Vector.<uint>)
      {
         super();
         this.tier = param1;
         this.clip = §=%_§.§[#v§(param1.id.value,param2);
         if(this.clip)
         {
            addChild(this.clip);
            this.hint = new §[%u§(param1.name,param1.description);
            this.§;$4§ = new §[&H§(this.clip);
            this.§;$4§.§@!y§(this);
         }
      }
      
      public function §&k§() : DisplayObject
      {
         return this.hint.getContainer();
      }
      
      public function destroy() : void
      {
         if(this.clip)
         {
            §3!3§.§>!j§(null,this.clip);
            this.clip.removeChildren();
         }
         if(this.§;$4§)
         {
            this.§;$4§.§`Z§();
         }
         if(this.hint)
         {
            this.hint.destroy();
         }
         this.tier = null;
      }
   }
}


package §9"-§
{
   import §##y§.CollisionEvent;
   import §%"1§.§@%;§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §1#p§.§2=§;
   import §5!,§.§9$h§;
   import §5!,§.§?!P§;
   import §5%S§.§>&-§;
   import §7!B§.§&"T§;
   import §;#O§.§+%7§;
   import §<%k§.§`!v§;
   import §=;§.§1S§;
   import §?#g§.Race;
   import §@!N§.§2"e§;
   import §@&H§.CheatDetectedEvent;
   import §@&H§.§`d§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import config.§^"2§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.physics.§>§;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§0$c§;
   import ru.pragmatix.wormix.utils.§8$a§;
   import ru.pragmatix.wormix.weapons.*;
   
   public class CallReinforcementsMark extends §&"T§
   {
      
      private static const §2%9§:Number = 0.5;
      
      private var owner:§+%]§;
      
      private var paramSet:§5$n§;
      
      private var x0:int;
      
      private var y0:int;
      
      private var §;a§:uint;
      
      private var §0&2§:§+%]§;
      
      public function CallReinforcementsMark(param1:§+%]§, param2:§5$n§, param3:int, param4:int, param5:Point)
      {
         this.owner = param1;
         this.paramSet = param2;
         this.x0 = param3;
         this.y0 = param4;
         super();
         clip = §6#A§.§!&6§("CallReinforcementsMark");
         stable = true;
         this.x = param5.x;
         this.y = param5.y - §<H§.§-#C§;
         Application.scene.§@$I§.§1$+§(this);
         Application.scene.addEventListener(§0%v§.EOT,this.§^% §);
         this.§;a§ = param1.squad.getNumber();
      }
      
      private function §^% §(param1:Event) : void
      {
         if(§8"%§.§?!W§.§4"m§.activeSquad.getNumber() != this.§;a§)
         {
            if(this.owner.squad.§'"H§() > 0)
            {
               this.§<!q§(this.x0 + (§<H§.§@% § >> 1),0);
            }
            disposed = true;
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         this.owner = null;
         this.paramSet = null;
         Application.scene.removeEventListener(§0%v§.EOT,this.§^% §);
         super.§[$u§(param1);
      }
      
      private function §<!q§(param1:int, param2:int) : void
      {
         var paraProfile:UserProfile;
         var fnUnlistening:Function;
         var dummy:§&"T§ = null;
         var id:int = 0;
         var fnDisposed:Function = null;
         var fnCollide:Function = null;
         var reservedUnits:Vector.<UserProfile> = null;
         var mate:UserProfile = null;
         var mercObj:Object = null;
         var clone:UserProfile = null;
         var resource:Object = null;
         var merc:§+%7§ = null;
         var x:int = param1;
         var y:int = param2;
         var profile:UserProfile = this.owner.squad.§?"#§();
         var possibleUnits:Vector.<UserProfile> = new Vector.<UserProfile>(0);
         var reserveAvailableCount:int = 0;
         if(!this.owner.squad.isAi())
         {
            reservedUnits = §0$c§.§'%=§(profile,false);
            for each(mate in reservedUnits)
            {
               mercObj = §2=§.§1#k§(mate) ? §^"2§.§'![§(mate.getId()) : null;
               if(!(Boolean(mercObj) && Boolean(mercObj.isNotFittable)))
               {
                  if(!§2=§.§]!$§(mate))
                  {
                     reserveAvailableCount++;
                     clone = mate.§ "P§(true);
                     clone.§;$v§(mate.§4!^§());
                     possibleUnits.push(clone);
                  }
               }
            }
         }
         if(reserveAvailableCount == 0)
         {
            for each(resource in §^"2§.list)
            {
               merc = §+%7§.§-%W§(resource);
               if(profile.getLevel() == merc.§,X§() && merc.§[$j§)
               {
                  possibleUnits.push(merc.§>#q§());
               }
            }
         }
         dummy = Application.scene.§,$z§();
         id = §8"%§.randomSeed.§,!q§(0,possibleUnits.length - 1);
         paraProfile = possibleUnits[id];
         if(paraProfile.getCharName() == "" || paraProfile.getCharName() == §2"e§.NA)
         {
            paraProfile.§-"§(§0$N§.REINFORCEMENT_UNIT_NAME);
         }
         paraProfile.stats.§8+§.value *= §2%9§;
         this.§0&2§ = Race.create(paraProfile,x,y);
         this.owner.squad.addUnit(this.§0&2§);
         §@%;§.play(§`!v§.AIR_STRIKE);
         §1S§.§-B§(this.§0&2§,x);
         fnDisposed = function(param1:Event):void
         {
            fnUnlistening();
            dummy.disposed = true;
         };
         fnCollide = function(param1:CollisionEvent):void
         {
            var event:CollisionEvent = param1;
            fnUnlistening();
            §8$a§.§%!E§(5,function():void
            {
               dummy.disposed = true;
            });
         };
         fnUnlistening = function():void
         {
            §0&2§.removeEventListener(§0%v§.§+&=§,fnCollide);
            §0&2§.removeEventListener(§0%v§.DISPOSED,fnDisposed);
         };
         this.§0&2§.addEventListener(§0%v§.§+&=§,fnCollide);
         this.§0&2§.addEventListener(§0%v§.DISPOSED,fnDisposed);
      }
   }
}


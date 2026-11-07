package §[!`§
{
   import § !P§.*;
   import §!L§.§+"'§;
   import §"%H§.§1! §;
   import §#%!§.§%&F§;
   import §#%!§.§[N§;
   import §#%!§.§^%c§;
   import §&"c§.§5$n§;
   import §'$Z§.§2#f§;
   import §+$=§.§6#A§;
   import §,"v§.§9%d§;
   import §0!§.§9"u§;
   import §1#p§.*;
   import §2!-§.DamageEvent;
   import §3#a§.§-!`§;
   import §4!!§.§'$V§;
   import §7$1§.§;$n§;
   import §<%c§.*;
   import §>%S§.§^!V§;
   import §?#g§.Race;
   import §@!i§.§!m§;
   import §@$§.§`&C§;
   import §@<§.§+%]§;
   import §^#[§.§&$2§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import config.achievements.§%#c§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.messages.server.EndTurnResponse;
   import ru.pragmatix.wormix.messages.structures.UnitBirthV2;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.pvp.messages.server.PvpStartTurn;
   import ru.pragmatix.wormix.utils.§-q§;
   
   public class § &-§ extends §;$n§ implements §^%c§
   {
      
      private var race:Race;
      
      private var hint:§%&F§;
      
      private var §,$S§:§+%]§;
      
      public function § &-§(param1:§+%]§, param2:Point, param3:int, param4:Vector.<Race>)
      {
         this.race = Race.§?#I§(param4);
         var _loc5_:§5$n§ = new §5$n§();
         _loc5_.ammoClassName = §;%]§(this.race);
         _loc5_.damage = new §&$2§(0);
         _loc5_.damageRadius = new §&$2§(0);
         _loc5_.explosionRadius = new §&$2§(0);
         _loc5_.pushForce = new §&$2§(0);
         super(param1,param2.x,param2.y,_loc5_);
         clip.rotation = 0;
         §`4§ = §+#G§;
         §8%g§ = new §9"u§(this,param3,0,0);
         this.hint = new §[N§(param1,§0$N§.§%! §("BOSS_PHARAOH_SARCOPHAGUS") + " \"" + this.race.§]!D§().§7%z§() + "\"",50);
      }
      
      private static function §;%]§(param1:Race) : String
      {
         switch(Race.§-%z§(param1.§]!D§()))
         {
            case Race.§+#T§:
               return "TotemBoxer";
            case Race.§#%V§:
               return "TotemCat";
            case Race.§1"^§:
               return "TotemDragon";
            case Race.§ "w§:
               return "TotemRabbit";
            case Race.§"$H§:
               return "TotemZombie";
            default:
               return null;
         }
      }
      
      override public function §""0§(param1:DamageEvent) : void
      {
         this.§,$S§ = param1.source.owner;
         if(this.§>"x§())
         {
            super.§""0§(param1);
         }
      }
      
      override public function §[$u§(param1:Event) : void
      {
         var e:Event = param1;
         if(this.§>"x§() && !this.§,$S§.disposed)
         {
            §'$V§.§=!Y§(owner,x,y,this.§,$S§,function():void
            {
               §,$S§.§=D§(§,$S§.direction * -2,-5);
            });
         }
         super.§[$u§(e);
      }
      
      private function §>"x§() : Boolean
      {
         return Boolean(this.§,$S§) && this.§,$S§.squad.getTeamId() != owner.squad.getTeamId();
      }
      
      override protected function §[$W§() : void
      {
      }
      
      public function getRace() : Race
      {
         return this.race;
      }
      
      public function getBar() : §%&F§
      {
         return this.hint;
      }
      
      override public function §9$r§() : int
      {
         return -1;
      }
   }
}


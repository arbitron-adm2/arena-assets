package §^4§
{
   import § &5§.§0&$§;
   import §#%!§.§7V§;
   import §#%!§.§[%U§;
   import §&"c§.§5$n§;
   import §'!Z§.§1"-§;
   import §'"N§.*;
   import §0&F§.§0%v§;
   import §4f§.§-&§;
   import §7!B§.§&"T§;
   import §7$t§.§&!e§;
   import §=#g§.§%!x§;
   import §@<§.§+%]§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.game.§]$;§;
   import ru.pragmatix.wormix.messages.clans.structures.ClanChatMessageTO;
   import ru.pragmatix.wormix.physics.§]%G§;
   import ru.pragmatix.wormix.weapons.§'%_§;
   import ru.pragmatix.wormix.weapons.§,%r§;
   
   public class §4&4§ extends §9!K§
   {
      
      public function §4&4§(param1:§+%]§, param2:§&"T§, param3:§5$n§, param4:Number, param5:uint, param6:uint, param7:uint, param8:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         §,q§.push(§-&§.IGNORE_MAGNET);
         §6!Q§ = false;
         §1#f§ = true;
         thickness = 10;
         step = 30;
         this.selfHit = param8;
      }
      
      override public function §[$u§(param1:Event) : void
      {
         if(Boolean(victim) && !victim.disposed)
         {
            §1"-§.§2%n§(new Point(victim.x,victim.y),new Point(source.x,source.y),angle);
         }
         else
         {
            §1"-§.§2%n§(new Point(x,y),new Point(source.x,source.y),angle);
         }
         super.§[$u§(param1);
      }
   }
}


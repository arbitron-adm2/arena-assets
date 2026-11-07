package § "L§
{
   import §!$d§.§<$c§;
   import §#%!§.§%&F§;
   import §#k§.§9$v§;
   import §%$!§.§@!o§;
   import §+$=§.§6#A§;
   import §,#_§.FrameTimer;
   import §-@§.§3%9§;
   import §0"L§.§+# §;
   import §0&F§.§0%v§;
   import §0&F§.FrameTimerEvent;
   import §0&F§.§[!F§;
   import §2#i§.§+%z§;
   import §4$b§.*;
   import §4u§.§;$H§;
   import §5$]§.§3& §;
   import §6",§.§[%w§;
   import §7$t§.§&!e§;
   import §=&!§.§ "^§;
   import §@!i§.§!m§;
   import §@!i§.§;#L§;
   import §@<§.§+%]§;
   import §[%'§.§<"G§;
   import §]$v§.§<§;
   import §`#x§.*;
   import flash.display.DisplayObject;
   import flash.display.InteractiveObject;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.getTimer;
   import org.gestouch.core.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§<H§;
   import ru.pragmatix.wormix.pvp.messages.ex.BattleCreated;
   import ru.pragmatix.wormix.utils.§-q§;
   import ru.pragmatix.wormix.utils.§8$a§;
   
   use namespace gestouch_internal;
   
   public class RebelRobotTurret extends §`!r§
   {
      
      protected const §@!9§:String = "RebelRobotTurret";
      
      private const §1!&§:int = 25;
      
      private const §?"z§:int = 120;
      
      private const §9!"§:int = 350;
      
      private var §+$8§:Boolean = true;
      
      private var §,&=§:Boolean = false;
      
      public function RebelRobotTurret(param1:Point, param2:int = 0)
      {
         var init:Point = param1;
         var rotation:int = param2;
         super(init.x,init.y,null,null,rotation);
         paramSet = §<$c§.§ !=§(§+%z§.BAZOOKA).§<$4§.clone();
         §8$a§.§%!E§(this.§?"z§,function():void
         {
            if(!§,&=§)
            {
               §+$8§ = false;
            }
         });
      }
      
      override protected function §8&8§() : void
      {
         §!%8§ = §6#A§.§!&6§(this.§@!9§);
         super.§8&8§();
      }
      
      override protected function §3K§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Point = null;
         if(!this.§+$8§ && §<#6§ <= frames && this.checkTargets && !target.disposed)
         {
            _loc1_ = §-q§.§'x§(x,y,target.x,target.y);
            barrel.rotation = head.rotation = §-q§.§%%>§(_loc1_ + Math.PI / 2);
            _loc2_ = getBarrelPoint(_loc1_ + Math.PI / 2);
            new §<#1§(_loc2_,paramSet,_loc1_,30);
            §<#6§ = this.§1!&§ + frames;
         }
      }
      
      override protected function get checkTargets() : Boolean
      {
         target = §8"%§.§?!W§.§4"m§.activeUnit;
         return target && !target.disposed && !target.squad.isAi() && §<H§.§5"]§(x,y,this.§9!"§,new <§+%]§>[target]).length > 0;
      }
      
      override protected function §@%D§(param1:Event) : void
      {
         var e:Event = param1;
         this.§,&=§ = false;
         if(!§8"%§.§?!W§.§4"m§.§;#l§())
         {
            §8$a§.§%!E§(this.§?"z§,function():void
            {
               if(!§,&=§)
               {
                  §+$8§ = false;
               }
            });
         }
      }
      
      override protected function §1n§(param1:Event) : void
      {
         this.§+$8§ = true;
         this.§,&=§ = true;
         super.§1n§(param1);
      }
   }
}


package §&%7§
{
   import §!L§.§+"'§;
   import §"$+§.§`&$§;
   import §##j§.§'"%§;
   import §##j§.§9x§;
   import §##j§.§]$X§;
   import §%"1§.§@%;§;
   import §%L§.§%%w§;
   import §+$=§.§6#A§;
   import §0%[§.§0%§;
   import §0%[§.§^"5§;
   import §1#p§.§2=§;
   import §3"@§.§#$O§;
   import §3"_§.*;
   import §5!,§.§9$h§;
   import §5%S§.§>&-§;
   import §6",§.§[%w§;
   import §7"Q§.*;
   import §9%W§.§!7§;
   import §9%W§.§%G§;
   import §;#O§.§+%7§;
   import §;$8§.§6"E§;
   import §<%k§.§`!v§;
   import §?$L§.§ "N§;
   import §?>§.§0!7§;
   import §@!i§.§!m§;
   import §@!i§.§<!9§;
   import §@<§.§+%]§;
   import §]#[§.*;
   import §^#[§.§&$2§;
   import §^#[§.§?"&§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.StageDisplayState;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.IDataOutput;
   import ru.pragmatix.flox.gui.controls.§`&-§;
   import ru.pragmatix.flox.social.controller.*;
   import ru.pragmatix.wormix.controller.§8"%§;
   import ru.pragmatix.wormix.gui.§0$N§;
   import ru.pragmatix.wormix.gui.window.§^%3§;
   import ru.pragmatix.wormix.messages.client.SelectStuff;
   import ru.pragmatix.wormix.messages.server.SelectStuffResult;
   import ru.pragmatix.wormix.messages.structures.SelectStuffStructure;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.weapons.*;
   
   public class §&%f§ extends §`&-§
   {
      
      private static const §>>§:int = 5;
      
      private static const §#!T§:int = 10;
      
      private static const §?#Y§:int = 5;
      
      private var cells:Vector.<MovieClip> = new Vector.<MovieClip>(0);
      
      protected var §6%=§:String;
      
      protected var offsetX:int;
      
      public function §&%f§(param1:DisplayObject, param2:Array = null, param3:String = "", param4:int = 10)
      {
         super(param1);
         this.§6%=§ = param3 || §+"'§.§;&&§;
         this.offsetX = param4;
         if(param2)
         {
            this.§`!y§(param2);
         }
      }
      
      public function §`!y§(param1:Array) : void
      {
         var _loc6_:§9x§ = null;
         var _loc7_:MovieClip = null;
         var _loc8_:§^%3§ = null;
         var _loc9_:int = 0;
         var _loc2_:Point = new Point(0,0);
         var _loc3_:int = 0;
         var _loc4_:int = int(param1.length);
         while(_loc3_ < _loc4_)
         {
            _loc6_ = param1[_loc3_];
            if(!(_loc6_ is §]$X§ && !§#$O§.§]A§(_loc6_.getId())))
            {
               if(!(_loc6_ is §'"%§ && Application.userProfile.getLevel() == §<!9§.getMaxLevel()))
               {
                  _loc7_ = §6#A§.§!&6§(this.§6%=§);
                  _loc8_ = new §^%3§(_loc7_,"",0.7);
                  _loc8_.setItem(_loc6_);
                  §?!C§(_loc7_);
                  this.cells.push(_loc7_);
                  _loc7_.x = _loc2_.x;
                  _loc7_.y = _loc2_.y;
                  _loc2_.x += this.offsetX + _loc7_.width;
                  if(this.cells.length % §>>§ == 0)
                  {
                     _loc2_.x = 0;
                     _loc2_.y += §?#Y§ + _loc7_.height;
                  }
               }
            }
            _loc3_++;
         }
         var _loc5_:int = int(this.cells.length);
         if(_loc5_ > §>>§)
         {
            while(_loc5_ > §>>§)
            {
               _loc5_ -= §>>§;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc5_)
            {
               _loc9_ = this.cells.length - (_loc3_ + 1);
               this.cells[_loc9_].x = width / 2 + this.cells[_loc9_].width * (_loc3_ - _loc5_ / 2) + (_loc3_ - (_loc5_ - 1) / 2) * §#!T§;
               _loc3_++;
            }
         }
      }
      
      public function §+$R§() : void
      {
         var _loc1_:MovieClip = null;
         for each(_loc1_ in this.cells)
         {
            _removeChild(_loc1_);
         }
         this.cells.length = 0;
      }
   }
}


package §2#x§
{
   import § #9§.§"$t§;
   import §!$d§.§<$c§;
   import §!L§.§+"'§;
   import §%"1§.§@%;§;
   import §&#h§.*;
   import §'"N§.*;
   import §+$=§.§6#A§;
   import §0"L§.§+# §;
   import §0%[§.*;
   import §0&F§.§0%v§;
   import §1!J§.§"t§;
   import §1#p§.§"Z§;
   import §2"L§.*;
   import §3#a§.§<#_§;
   import §4$b§.§6!G§;
   import §5!9§.§6$,§;
   import §7$t§.§&!e§;
   import §7$t§.§2& §;
   import §7$t§.§;#_§;
   import §7$t§.§=?§;
   import §8#a§.§@#c§;
   import §9%W§.§&!P§;
   import §;&2§.§!#W§;
   import §<"L§.*;
   import §<%k§.§`!v§;
   import §=&!§.§]$d§;
   import §=7§.*;
   import §>%S§.§^!V§;
   import §@!i§.§"-§;
   import §^#[§.§6&A§;
   import §^#[§.§["u§;
   import §`%&§.§,%§;
   import com.adobe.serialization.json.JSON;
   import config.§=%A§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.events.*;
   import flash.filters.DropShadowFilter;
   import flash.net.*;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.text.TextFormat;
   import flash.utils.*;
   import ru.pragmatix.flox.gui.controls.§,#W§;
   import ru.pragmatix.wormix.controller.*;
   import ru.pragmatix.wormix.messages.clans.ClanServiceResult;
   import ru.pragmatix.wormix.messages.clans.request.DeleteClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.QuitClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginCreateClanRequest;
   import ru.pragmatix.wormix.messages.clans.request.login.LoginJoinClanRequest;
   import ru.pragmatix.wormix.messages.clans.response.*;
   import ru.pragmatix.wormix.messages.clans.structures.ClanTO;
   import ru.pragmatix.wormix.messages.server.UpgradeWeaponResult;
   import ru.pragmatix.wormix.messages.structures.MercenariesTeamMember;
   import ru.pragmatix.wormix.messages.structures.PvpProfileStructure;
   import ru.pragmatix.wormix.messages.structures.TeamMemberStructure;
   import ru.pragmatix.wormix.messages.structures.WeaponStructure;
   import ru.pragmatix.wormix.model.items.backpack.§'"-§;
   import ru.pragmatix.wormix.model.items.backpack.BackpackItem;
   import ru.pragmatix.wormix.model.user.UserProfile;
   import ru.pragmatix.wormix.physics.§]%G§;
   
   public class §2%B§
   {
      
      protected var §;!W§:String;
      
      protected var §8"B§:Number;
      
      protected var §?"_§:String;
      
      protected var §>$]§:Number;
      
      protected var §9L§:Array;
      
      protected const §6"6§:String = "https://integrations.thz-engine.com";
      
      protected const §1&,§:String = "https://offerpoint.thz-engine.com/offerpoint/offerpoint";
      
      protected const §2e§:String = "https://thz-engine.com/counter";
      
      protected const §0!M§:String = "https://thz-engine.com/click";
      
      protected var §<J§:Object;
      
      public function §2%B§()
      {
         super();
      }
      
      protected function §,"1§(... rest) : void
      {
      }
      
      protected function §'#l§(param1:String, param2:Number) : String
      {
         var _loc3_:String = param2 === 0 ? "" : "&uid=" + param2;
         return param1 + (param1.indexOf("?") != -1 ? "&" : "?") + "rand=" + Math.floor(Math.random() * 10000000) + _loc3_;
      }
      
      protected function §;#u§(param1:String, param2:Number = 0) : void
      {
         this.§9#'§(this.§'#l§(param1,param2),new URLVariables(),"get",this.§,"1§,this.§,"1§);
      }
      
      protected function §2$g§(param1:String, param2:Number = 0) : void
      {
         navigateToURL(new URLRequest(this.§'#l§(param1,param2)),"_blank");
      }
      
      public function click(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         if(_loc2_[0] is String)
         {
            return this.§2$g§(_loc2_[0],_loc2_[1]);
         }
         var _loc3_:Object = _loc2_[0] as Object;
         var _loc4_:Object = this.§2&-§(this.§0!M§,_loc3_);
         navigateToURL(new URLRequest(_loc4_.url + "?" + _loc4_.variables),"_blank");
      }
      
      public function §^"j§(... rest) : void
      {
         var _loc2_:Array = rest as Array;
         if(_loc2_[0] is String)
         {
            return this.§;#u§(_loc2_[0],_loc2_[1]);
         }
         var _loc3_:Object = _loc2_[0] as Object;
         var _loc4_:Object = this.§2&-§(this.§2e§,_loc3_);
         this.§9#'§(_loc4_.url,_loc4_.variables,"get",this.§,"1§,this.§,"1§);
      }
      
      public function §<# §(param1:Object, param2:Number, param3:Function, param4:Function) : void
      {
         var requestDone:Boolean = false;
         var retryCount:Number = NaN;
         var repeatRequest:Function = null;
         var params:Object = param1;
         var id:Number = param2;
         var onComplete:Function = param3;
         var onError:Function = param4;
         requestDone = false;
         retryCount = 0;
         var onGotOffers:Function = function(param1:Array):void
         {
            var oids:Array = null;
            var request:Object = null;
            var selfOnComplete:Function = null;
            var result:Array = param1;
            requestDone = true;
            var offersCount:Number = result.shift();
            if(0 != offersCount)
            {
               oids = new Array();
               result.forEach(function(param1:Object, param2:Number, param3:Array):void
               {
                  oids.push(param1.id);
               });
               params["oids"] = oids.join(",");
               request = §2&-§(§1&,§,params,"get");
               selfOnComplete = function(param1:String):void
               {
                  var response:Array = null;
                  var result:String = param1;
                  try
                  {
                     response = com.adobe.serialization.json.JSON.decode(result);
                     if(response.some(function(param1:Object, param2:Number, param3:Array):Boolean
                     {
                        return id == param1.offerId;
                     }))
                     {
                        onComplete();
                     }
                     else
                     {
                        onError();
                     }
                  }
                  catch(error:Error)
                  {
                  }
               };
               §&#&§(request.url,request.variables,"get",selfOnComplete,function():Boolean
               {
                  return false;
               });
            }
            else
            {
               onError();
            }
         };
         if(id == 1237)
         {
            onGotOffers([1,{"id":1237}]);
         }
         else
         {
            repeatRequest = function():void
            {
               if(requestDone)
               {
                  return;
               }
               retryCount += 1;
               if(retryCount > 5)
               {
                  onError();
                  return;
               }
               §@!U§.api("account.getActiveOffers",{},function(param1:Object):void
               {
                  if(param1.response)
                  {
                     onGotOffers(param1.response);
                  }
                  else
                  {
                     requestDone = true;
                     onError();
                  }
               });
               setTimeout(repeatRequest,5 * 1000);
            };
            repeatRequest();
         }
      }
      
      public function §`!E§(param1:Number) : void
      {
         var id:Number = param1;
         §@!U§.pay({
            "type":"offers",
            "offer_id":id
         },function(param1:String):void
         {
         });
      }
      
      public function §>Z§(param1:Object, param2:Number, param3:Number, param4:Object, param5:Function, param6:Function) : void
      {
         var requestDone:Boolean = false;
         var retryCount:Number = NaN;
         var repeatRequest:Function = null;
         var params:Object = param1;
         var x:Number = param2;
         var y:Number = param3;
         var stage:Object = param4;
         var onComplete:Function = param5;
         var onError:Function = param6;
         requestDone = false;
         retryCount = 0;
         var onGotOffers:Function = function(param1:Array):void
         {
            var request:Object;
            var selfOnComplete:Function;
            var offerId:int = 0;
            var oids:Array = null;
            var result:Array = param1;
            var offersCount:Number = result.shift();
            offerId = 0;
            if(0 != offersCount)
            {
               if(params["offerId"])
               {
                  offerId = int(params["offerId"]);
                  delete params["offerId"];
               }
               oids = new Array();
               result.forEach(function(param1:Object, param2:Number, param3:Array):void
               {
                  if(0 == offerId || offerId == param1.id)
                  {
                     oids.push(param1.id);
                  }
               });
               params["oids"] = oids.join(",");
               request = §2&-§(§1&,§,params,"get");
               selfOnComplete = function(param1:String):void
               {
                  var response:Array = null;
                  var result:String = param1;
                  try
                  {
                     response = com.adobe.serialization.json.JSON.decode(result);
                     onComplete(response.some(function(param1:Object, param2:Number, param3:Array):Boolean
                     {
                        var offer:Object = param1;
                        var index:Number = param2;
                        var array:Array = param3;
                        var banners:* = offer.banners;
                        if(banners.length == 0)
                        {
                           return false;
                        }
                        return banners.some(function(param1:Object, param2:Number, param3:Array):Boolean
                        {
                           if(param1["100x100"])
                           {
                              displayOfferpoint(param1["100x100"],x,y,stage,offer.offerId);
                              return true;
                           }
                           return false;
                        });
                     }));
                     return;
                  }
                  catch(error:Error)
                  {
                     onComplete(false);
                     return;
                  }
               };
               §&#&§(request.url,request.variables,"get",selfOnComplete,onError);
               return;
            }
            onComplete(false);
         };
         if(params["testMode"])
         {
            params["offerId"] = 1237;
            onGotOffers([1,{"id":1237}]);
         }
         else
         {
            repeatRequest = function():void
            {
               if(requestDone)
               {
                  return;
               }
               retryCount += 1;
               if(retryCount > 5)
               {
                  onError();
                  return;
               }
               §@!U§.api("account.getActiveOffers",{},function(param1:Object):void
               {
                  if(param1.response)
                  {
                     onGotOffers(param1.response);
                  }
                  else
                  {
                     requestDone = true;
                     onError();
                  }
               });
               setTimeout(repeatRequest,5 * 1000);
            };
            repeatRequest();
         }
      }
      
      public function displayOfferpoint(param1:String, param2:Number, param3:Number, param4:Object, param5:Number) : void
      {
         var imageRequest:URLRequest;
         var imageLoader:Loader = null;
         var url:String = param1;
         var x:Number = param2;
         var y:Number = param3;
         var stage:Object = param4;
         var offerId:Number = param5;
         imageLoader = new Loader();
         var onProgress:Function = function(param1:ProgressEvent):void
         {
         };
         var onComplete:Function = function(param1:Event):void
         {
            var event:Event = param1;
            imageLoader.x = x;
            imageLoader.y = y;
            imageLoader.addEventListener(MouseEvent.CLICK,function(param1:Event):void
            {
               var e:Event = param1;
               §@!U§.pay({
                  "type":"offers",
                  "offer_id":offerId
               },function(param1:String):void
               {
               });
            });
            stage.addChild(imageLoader);
         };
         imageLoader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,onProgress);
         imageLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,onComplete);
         imageRequest = new URLRequest(url);
         imageLoader.load(imageRequest);
      }
      
      public function §2#§(param1:Object) : void
      {
         var onGotUser:Function = null;
         var onComplete:Function = null;
         var request:Object = null;
         var options:Object = param1;
         if(!options.onError)
         {
            options.onError = this.§,"1§;
         }
         if(!options.params)
         {
            options.params = {};
         }
         if(options.targeted)
         {
            if(!options.vk || !options.vk.api || typeof options.vk.api !== "function")
            {
               options.onError("vk api connection should be passed when checking status with targeting");
               return;
            }
            onGotUser = function(param1:Object):void
            {
               var onComplete:Function;
               var request:Object;
               var result:Object = param1;
               options.params.sex = result[0].sex;
               options.params.bdate = result[0].bdate;
               options.params.city = result[0].city;
               options.params.country = result[0].country;
               onComplete = function(param1:String):void
               {
                  var response:Object = null;
                  var result:String = param1;
                  try
                  {
                     response = com.adobe.serialization.json.JSON.decode(result);
                     options.onComplete(response.response);
                  }
                  catch(error:Error)
                  {
                     options.onError(error);
                  }
               };
               request = §2&-§(§6"6§,options.params,"userStatus");
               §&#&§(request.url,request.variables,"get",onComplete,options.onError);
            };
            options.vk.api("users.get",{"fields":"sex,city,country,bdate"},onGotUser,options.onError);
         }
         else
         {
            onComplete = function(param1:String):void
            {
               var response:Object = null;
               var result:String = param1;
               try
               {
                  response = com.adobe.serialization.json.JSON.decode(result);
                  options.onComplete(response.response);
               }
               catch(error:Error)
               {
                  options.onError(error);
               }
            };
            request = this.§2&-§(this.§6"6§,options.params,"userStatus");
            this.§&#&§(request.url,request.variables,"get",onComplete,options.onError);
         }
      }
      
      protected function §2&-§(param1:String, param2:Object, param3:String = null) : Object
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc4_:URLVariables = new URLVariables();
         for(_loc5_ in param2)
         {
            _loc4_[_loc5_] = param2[_loc5_];
         }
         _loc6_ = null == param3 ? param1 : param1 + "/" + param3;
         return {
            "url":_loc6_,
            "variables":_loc4_
         };
      }
      
      protected function § #E§(param1:Object, param2:String, param3:URLVariables, param4:String, param5:Function, param6:Function) : void
      {
         var loader:Object = param1;
         var url:String = param2;
         var variables:URLVariables = param3;
         var method:String = param4;
         var onComplete:Function = param5;
         var onError:Function = param6;
         var request:URLRequest = new URLRequest();
         variables["rand"] = Math.round(Math.random() * 999999999999);
         request.url = url;
         request.method = method;
         request.data = variables;
         loader.addEventListener(IOErrorEvent.IO_ERROR,onError);
         loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onError);
         loader.addEventListener(Event.COMPLETE,function(param1:Event):void
         {
            var _loc2_:URLLoader = URLLoader(param1.target);
            onComplete(_loc2_.data);
         });
         try
         {
            loader.load(request);
         }
         catch(error:Error)
         {
            onError(error);
         }
      }
      
      protected function §9#'§(param1:String, param2:URLVariables, param3:String, param4:Function, param5:Function) : void
      {
         var _loc6_:Loader = new Loader();
         this.§ #E§(_loc6_,param1,param2,param3,param4,param5);
      }
      
      protected function §&#&§(param1:String, param2:URLVariables, param3:String, param4:Function, param5:Function) : void
      {
         var _loc6_:URLLoader = new URLLoader();
         this.§ #E§(_loc6_,param1,param2,param3,param4,param5);
      }
   }
}


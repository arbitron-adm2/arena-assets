package api.com.adobe.json
{
   public class JSONTokenizer
   {
      
      private var obj:Object;
      
      private var §`"-§:String;
      
      private var loc:int;
      
      private var ch:String;
      
      public function JSONTokenizer(param1:String)
      {
         super();
         this.§`"-§ = param1;
         this.loc = 0;
         this.§6$-§();
      }
      
      public function getNextToken() : JSONToken
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc1_:JSONToken = new JSONToken();
         this.§?P§();
         switch(this.ch)
         {
            case "{":
               _loc1_.type = JSONTokenType.LEFT_BRACE;
               _loc1_.value = "{";
               this.§6$-§();
               break;
            case "}":
               _loc1_.type = JSONTokenType.RIGHT_BRACE;
               _loc1_.value = "}";
               this.§6$-§();
               break;
            case "[":
               _loc1_.type = JSONTokenType.LEFT_BRACKET;
               _loc1_.value = "[";
               this.§6$-§();
               break;
            case "]":
               _loc1_.type = JSONTokenType.RIGHT_BRACKET;
               _loc1_.value = "]";
               this.§6$-§();
               break;
            case ",":
               _loc1_.type = JSONTokenType.COMMA;
               _loc1_.value = ",";
               this.§6$-§();
               break;
            case ":":
               _loc1_.type = JSONTokenType.COLON;
               _loc1_.value = ":";
               this.§6$-§();
               break;
            case "t":
               _loc2_ = "t" + this.§6$-§() + this.§6$-§() + this.§6$-§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = JSONTokenType.TRUE;
                  _loc1_.value = true;
                  this.§6$-§();
               }
               else
               {
                  this.parseError("Expecting \'true\' but found " + _loc2_);
               }
               break;
            case "f":
               _loc3_ = "f" + this.§6$-§() + this.§6$-§() + this.§6$-§() + this.§6$-§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = JSONTokenType.FALSE;
                  _loc1_.value = false;
                  this.§6$-§();
               }
               else
               {
                  this.parseError("Expecting \'false\' but found " + _loc3_);
               }
               break;
            case "n":
               _loc4_ = "n" + this.§6$-§() + this.§6$-§() + this.§6$-§();
               if(_loc4_ == "null")
               {
                  _loc1_.type = JSONTokenType.NULL;
                  _loc1_.value = null;
                  this.§6$-§();
               }
               else
               {
                  this.parseError("Expecting \'null\' but found " + _loc4_);
               }
               break;
            case "\"":
               _loc1_ = this.§6<§();
               break;
            default:
               if(this.§#"i§(this.ch) || this.ch == "-")
               {
                  _loc1_ = this.§5&2§();
               }
               else
               {
                  if(this.ch == "")
                  {
                     return null;
                  }
                  this.parseError("Unexpected " + this.ch + " encountered");
               }
         }
         return _loc1_;
      }
      
      private function §6<§() : JSONToken
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc1_:JSONToken = new JSONToken();
         _loc1_.type = JSONTokenType.STRING;
         var _loc2_:String = "";
         this.§6$-§();
         while(this.ch != "\"" && this.ch != "")
         {
            if(this.ch == "\\")
            {
               this.§6$-§();
               switch(this.ch)
               {
                  case "\"":
                     _loc2_ += "\"";
                     break;
                  case "/":
                     _loc2_ += "/";
                     break;
                  case "\\":
                     _loc2_ += "\\";
                     break;
                  case "b":
                     _loc2_ += "\b";
                     break;
                  case "f":
                     _loc2_ += "\f";
                     break;
                  case "n":
                     _loc2_ += "\n";
                     break;
                  case "r":
                     _loc2_ += "\r";
                     break;
                  case "t":
                     _loc2_ += "\t";
                     break;
                  case "u":
                     _loc3_ = "";
                     _loc4_ = 0;
                     while(_loc4_ < 4)
                     {
                        if(!this.§##p§(this.§6$-§()))
                        {
                           this.parseError(" Excepted a hex digit, but found: " + this.ch);
                        }
                        _loc3_ += this.ch;
                        _loc4_++;
                     }
                     _loc2_ += String.fromCharCode(parseInt(_loc3_,16));
                     break;
                  default:
                     _loc2_ += "\\" + this.ch;
               }
            }
            else
            {
               _loc2_ += this.ch;
            }
            this.§6$-§();
         }
         if(this.ch == "")
         {
            this.parseError("Unterminated string literal");
         }
         this.§6$-§();
         _loc1_.value = _loc2_;
         return _loc1_;
      }
      
      private function §5&2§() : JSONToken
      {
         var _loc1_:JSONToken = new JSONToken();
         _loc1_.type = JSONTokenType.NUMBER;
         var _loc2_:String = "";
         if(this.ch == "-")
         {
            _loc2_ += "-";
            this.§6$-§();
         }
         if(!this.§#"i§(this.ch))
         {
            this.parseError("Expecting a digit");
         }
         if(this.ch == "0")
         {
            _loc2_ += this.ch;
            this.§6$-§();
            if(this.§#"i§(this.ch))
            {
               this.parseError("A digit cannot immediately follow 0");
            }
         }
         else
         {
            while(this.§#"i§(this.ch))
            {
               _loc2_ += this.ch;
               this.§6$-§();
            }
         }
         if(this.ch == ".")
         {
            _loc2_ += ".";
            this.§6$-§();
            if(!this.§#"i§(this.ch))
            {
               this.parseError("Expecting a digit");
            }
            while(this.§#"i§(this.ch))
            {
               _loc2_ += this.ch;
               this.§6$-§();
            }
         }
         if(this.ch == "e" || this.ch == "E")
         {
            _loc2_ += "e";
            this.§6$-§();
            if(this.ch == "+" || this.ch == "-")
            {
               _loc2_ += this.ch;
               this.§6$-§();
            }
            if(!this.§#"i§(this.ch))
            {
               this.parseError("Scientific notation number needs exponent value");
            }
            while(this.§#"i§(this.ch))
            {
               _loc2_ += this.ch;
               this.§6$-§();
            }
         }
         var _loc3_:Number = Number(_loc2_);
         if(isFinite(_loc3_) && !isNaN(_loc3_))
         {
            _loc1_.value = _loc3_;
            return _loc1_;
         }
         this.parseError("Number " + _loc3_ + " is not valid!");
         return null;
      }
      
      private function §6$-§() : String
      {
         return this.ch = this.§`"-§.charAt(this.loc++);
      }
      
      private function §?P§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.loc;
            this.§^"?§();
            this.§]&$§();
         }
         while(_loc1_ != this.loc);
      }
      
      private function §]&$§() : void
      {
         if(this.ch == "/")
         {
            this.§6$-§();
            switch(this.ch)
            {
               case "/":
                  do
                  {
                     this.§6$-§();
                  }
                  while(this.ch != "\n" && this.ch != "");
                  this.§6$-§();
                  break;
               case "*":
                  this.§6$-§();
                  while(true)
                  {
                     if(this.ch == "*")
                     {
                        this.§6$-§();
                        if(this.ch == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§6$-§();
                     }
                     if(this.ch == "")
                     {
                        this.parseError("Multi-line comment not closed");
                     }
                  }
                  this.§6$-§();
                  break;
               default:
                  this.parseError("Unexpected " + this.ch + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §^"?§() : void
      {
         while(this.§2$m§(this.ch))
         {
            this.§6$-§();
         }
      }
      
      private function §2$m§(param1:String) : Boolean
      {
         return param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r";
      }
      
      private function §#"i§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §##p§(param1:String) : Boolean
      {
         var _loc2_:String = param1.toUpperCase();
         return this.§#"i§(param1) || _loc2_ >= "A" && _loc2_ <= "F";
      }
      
      public function parseError(param1:String) : void
      {
         throw new JSONParseError(param1,this.loc,this.§`"-§);
      }
   }
}


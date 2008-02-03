(map [do
       (write _) (prn)
       (with (expected (car (nthcdr 3 _))
                       actual (apply trim (firstn 3 _)))
       
         (when (isnt expected actual)
           (err '|test failure| (tostring (pr _ " yielded " actual " but shudda been " expected)))))]
     `(
       (""    front ,whitec "")
       (""    front ":"    "")
       (""    both  ,whitec "")
       (""    both  ":"    "")
       (""    end   ,whitec "")
       (""    end   ":"    "")
       ("x"   front ,whitec "x")
       ("x"   front ":"    "x")
       ("x"   both  ,whitec "x")
       ("x"   both  ":"    "x")
       ("x"   end   ,whitec "x")
       ("x"   end   ":"    "x")
       (" x"  front ,whitec "x")
       (" x"  front ":"    " x")
       (" x"  both  ,whitec "x")
       (" x"  both  ":"    " x")
       (" x"  end   ,whitec " x")
       (" x"  end   ":"    " x")
       ("x "  front ,whitec "x ")
       ("x "  front ":"    "x ")
       ("x "  both  ,whitec "x")
       ("x "  both  ":"    "x ")
       ("x "  end   ,whitec "x")
       ("x "  end   ":"    "x ")
       (" x " front ,whitec "x ")
       (" x " front ":"    " x ")
       (" x " both  ,whitec "x")
       (" x " both  ":"    " x ")
       (" x " end   ,whitec " x")
       (" x " end   ":"    " x ")
       ))

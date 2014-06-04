
describe("Binary Expression Tests" , function ()
  
  local lib = require "luadec"

  it("Bin op + ", function  ()
     local y = 1
     foo = function (x) return x + x end
     local code = lib.luadec(foo)
     print (code)
     assert.True( foo(2) == assert(loadstring(code)) (2) )
  end)

  it("Bin op - ", function  ()
     local y = 1
     foo = function (x) return x - x end
     local code = lib.luadec(foo)
     assert.True( foo(2) == assert(loadstring(code)) (2) )
  end)

  it("Bin op * ", function  ()
     local y = 1
     foo = function (x) return x * x end
     local code = lib.luadec(foo)
     assert.True( foo(2) == assert(loadstring(code)) (2) )
  end)

  it("Bin op / ", function  ()
     local y = 1
     foo = function (x) return x / x end
     local code = lib.luadec(foo)
     assert.True( foo(2) == assert(loadstring(code)) (2) )
  end)

  -- it("Bin op % ", function  ()
  --    local y = 1
  --    foo = function (x) return x % y end
  --    local code = lib.luadec(foo)
  --   assert.True( foo(2) == assert(code)(2) )
  -- end)

  -- it("Bin op .. ", function  ()
  --    local y = 1
  --    foo = function (x) return x .. y end
  --    local code = lib.luadec(foo)
  --   assert.True( foo(2) == assert(code)(2) )
  -- end)


end)

-- local y = 1
-- foo = function (x) return x - x end
-- local code = lib.luadec(foo)
-- print(code)

-- local y = 1
-- foo = function (x) return x * x end
-- local code = lib.luadec(foo)
-- print(code)


-- local y = 1
-- foo = function (x) return x / x end
-- local code = lib.luadec(foo)
-- print(code)


-- local y = 1
-- foo = function (x) return x .. x end
-- local code = lib.luadec(foo)
-- print(code)


-- local y = 1
-- foo = function (x) return x % x end
-- local code = lib.luadec(foo)
-- print(code)



-- local y = 1
-- foo = function (x) return  (#x + x - y) .. "lol" end
-- local code = lib.luadec(foo)
-- print(code)

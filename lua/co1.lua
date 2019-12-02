print("co")

local abc = "abc"

local coroutine_pool = {}

function co_create(f)
    local co = table.remove(coroutine_pool)
    if co == nil then
        print(0)
        co =
            coroutine.create(
            function(...)
                print(1)
                local rt = f(...)
                print(3)
                while true do
                    f = nil
                    coroutine_pool[#coroutine_pool + 1] = co
                    f = coroutine.yield(rt)
                    rt = f(coroutine.yield())
                end
            end
        )
    else
        print(2)
        coroutine.resume(co, f)
    end
    return co
end

function fun1(var)
    print("this is ", var)
    return "fun1"
end

function fun2(var)
    print("this is ", var)
    return "fun2"
end

function fun3(var)
    print("this is ", var)
    return "fun3"
end

co3 = co_create(fun3)
co2 = co_create(fun2)
co1 = co_create(fun1)

-- local _, cmd = coroutine.resume(co3, "fun 3")
-- print("3 cmd ", cmd)
-- _, cmd = coroutine.resume(co1, "fun 1")
-- print("1 cmd ", cmd)
_, cmd = coroutine.resume(co2, "fun 2")
print("2 cmd ", cmd)

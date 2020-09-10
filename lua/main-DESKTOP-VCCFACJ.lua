function f(call)
    local co = coroutine.running()

    call(
        function(p)
            coroutine.resume(co, p)
        end
    )

    coroutine.yield()
end

f()

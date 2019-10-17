-- require()

local waitSetCO = nil
local yieldCO = nil

local curState = 0

-- 暂停设置状态
local function suspendSetState()
    if waitSetCO then
        coroutine.resume(waitSetCO, true)
    end
end

-- 让出当前状态
local function yieldState()
    local state = curState
    yieldCO =
        coroutine.create(
        function()
            realSetState(state)
        end
    )
end

-- 重启
local function resumeState()
    -- waitSetCO or yieldCO
end

-- 回合玩家死亡时 clear
local function clear()
    -- waitSetCO or yieldCO
end

local function realSetState(state)
    curState = state
end

local function setState(state)
    waitSetCO =
        coroutine.create(
        function(suspend)
            print("wait run!")
            suspend = suspend or false
            if suspend then
                coroutine.yield()
                coroutine.yield()
            end
            realSetState(state)
            print("co end!")
        end
    )

    -- Fire co
    suspendSetState()
    -- Fire end

    coroutine.resume(waitSetCO)
    coroutine.resume(waitSetCO)

    print(coroutine.status(waitSetCO))
end

setState()

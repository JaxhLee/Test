--------------------------------------------------------------------------------
--      Copyright (c) 2015 - 2016 , 蒙占志(topameng) topameng@gmail.com
--      All rights reserved.
--      Use, modification and distribution are subject to the "MIT License"
--------------------------------------------------------------------------------
local setmetatable = setmetatable

---@class list
local public = {}
public.__index = public

function public:new()
	local t = {length = 0, _prev = 0, _next = 0}
	t._prev = t
	t._next = t
	return setmetatable(t, public)
end

function public:clear()
	self._next = self
	self._prev = self
	self.length = 0
end

function public:push(value)
	--assert(value)
	local node = {value = value, _prev = 0, _next = 0, removed = false}

	self._prev._next = node
	node._next = self
	node._prev = self._prev
	self._prev = node

	self.length = self.length + 1
	return node
end

function public:pushnode(node)
	if not node.removed then return end

	self._prev._next = node
	node._next = self
	node._prev = self._prev
	self._prev = node
	node.removed = false
	self.length = self.length + 1
end

function public:pop()
	local _prev = self._prev
	self:remove(_prev)
	return _prev.value
end

function public:unshift(v)
	local node = {value = v, _prev = 0, _next = 0, removed = false}

	self._next._prev = node
	node._prev = self
	node._next = self._next
	self._next = node

	self.length = self.length + 1
	return node
end

function public:shift()
	local _next = self._next
	self:remove(_next)
	return _next.value
end

function public:remove(iter)
	if iter.removed then return end

	local _prev = iter._prev
	local _next = iter._next
	_next._prev = _prev
	_prev._next = _next

	self.length = math.max(0, self.length - 1)
	iter.removed = true
end

function public:find(v, iter)
	iter = iter or self

	repeat
		if v == iter.value then
			return iter
		else
			iter = iter._next
		end
	until iter == self

	return nil
end

function public:findlast(v, iter)
	iter = iter or self

	repeat
		if v == iter.value then
			return iter
		end

		iter = iter._prev
	until iter == self

	return nil
end

function public:next(iter)
	local _next = iter._next
	if _next ~= self then
		return _next, _next.value
	end

	return nil
end

function public:prev(iter)
	local _prev = iter._prev
	if _prev ~= self then
		return _prev, _prev.value
	end

	return nil
end

function public:erase(v)
	local iter = self:find(v)

	if iter then
		self:remove(iter)
	end
end

function public:insert(v, iter)
	if not iter then
		return self:push(v)
	end

	local node = {value = v, _next = 0, _prev = 0, removed = false}

	if iter._next then
		iter._next._prev = node
		node._next = iter._next
	else
		self.last = node
	end

	node._prev = iter
	iter._next = node
	self.length = self.length + 1
	return node
end

function public:head()
	return self._next.value
end

function public:tail()
	return self._prev.value
end

function public:clone()
	local t = public:new()

	for i, v in public.next, self, self do
		t:push(v)
	end

	return t
end

ilist = function(_list) return public.next, _list, _list end
rilist = function(_list) return public.prev, _list, _list end

setmetatable(public, {__call = public.new})
return public
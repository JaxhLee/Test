a = {}

function a:init()
	self.t = {
		[1] = {
			v = 2
		}
	}
end

function a:up()
	local v = self.t[1]
	v.v = 5
end

a:init()
a:up()
print(a.t[1].v)
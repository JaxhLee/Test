# 使用trigger class制作触发区域

  * 制作一个方块，用于触发区域。左下选择trigger材质以便区分
  * ctrl+t，给方块附加上实体entity。顺便取上名字便于查找
  * entity的class选为trigger_dota。对所有单位进行判断，实体下选项勾上单位可以触发。
  * alt+enter, 添加一个output
  * output：类型，OnStartTouch OnEndTouch ...
  * Target Entity: 选择触发器实体 名字
  * Target Input: 选择 CallScriptFunction
  * Parameter: 填入要调用方法的名字
  * 在entity属性栏填入文件名。相对路径，如 vscript/test/trigger.lua, 填 test/trigger.lua
  * 脚本写要调用的方法，例如：

  ```
	--- IsServer -> true
	---@param params {outputid:number, caller:handle, activator:handle}
	function OnStartTouch(params)
		print("=======OnStartTouch1==========")
		local hCaller = params.caller
		local hActivator = params.activator
		local iOutputid = params.outputid
		print(hCaller.GetUnitName and hCaller:GetUnitName())
		print(hActivator.GetUnitName and hActivator:GetUnitName())
	end

	function OnEndTouch(params)
		print("=======OnEndTouch1==========")
		local hCaller = params.caller
		local hActivator = params.activator
		local iOutputid = params.outputid
		print(hCaller.GetUnitName and hCaller:GetUnitName())
		print(hActivator.GetUnitName and hActivator:GetUnitName())
	end
  ```
  ok, 制作完成

# Console
使用`bind [key] [command]`将命令绑定到键。例如：`bind k dota_dev hero_teleport`执行dota_dev

* 显示使用的粒子效果log
`cl_particle_log_creates 1`

* 显示光照性能
`r_deferred_simple_light 2`

* 显示导航网格
`dota_dev dota_gridnav_show`  
“ 0”-关  
“ 1”-基本剪辑  
“ 2”-英雄夹  
“ 3”-生物剪辑  
bind 这个命令切换 `incrementvar dota_gridnav_show 0 1 1`

* 指示战争迷雾
`fow_client_debug 1`
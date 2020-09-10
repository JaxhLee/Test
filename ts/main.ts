function TableRemove(t: any, condition: (v, k) => boolean) {
	if (t && condition && typeof (condition) == "function")
		if (t instanceof Array) {
			for (let i = 0; i < t.length; i++)
				if (condition(t[i], i)) { t.splice(i, 1); i-- }
		}
		else
			for (const k in t) if (condition(t[k], k)) delete t[k]
}

const t = {
	[1]: 1,
	[2]: 2,
	[3]: 4,
	[4]: 1,
}
TableRemove(t, v => v == 1)
console.log(t);

const t2 = [1, 2, 3, 4, 1, 1]
TableRemove(t2, v => v == 1)
console.log(t2);

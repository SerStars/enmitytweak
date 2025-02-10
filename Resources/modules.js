// Based on https://github.com/unbound-app/bootstrap/blob/main/devtools.js
let define;
Object.defineProperty(globalThis, "__d", {
	get: () => { globalThis.modules ??= globalThis.__c?.(); return define; },
	set: v => { define = v; }
});

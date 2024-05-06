/** @type {import('@types/eslint').Linter.BaseConfig} */
module.exports = {
	root: true,
	extends: ["prettier"],
	globals: {
		shopify: "readonly",
	},
	env: {
		browser: true,
		es6: true,
		mocha: true,
	},
	parserOptions: {
		ecmaVersion: "latest",
		sourceType: "module",
		ecmaFeatures: {
			jsx: true,
		},
	},
	rules: {},
}

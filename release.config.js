module.exports = {
	plugins: [
		[ "@semantic-release/commit-analyzer", {
			"preset": "angular",
			// feat, fix, docs(readme/docs), style, refactor, perf, test, chore
			"releaseRules": [
				// so npm's readme is updated
				{ "type": "docs", "scope": "readme", "release": "patch" },
				{ "type": "refactor", "release": "patch" },
				{ "scope": "no-release", "release": false },
			]
		} ],
		[ "@semantic-release/release-notes-generator", {
			"writerOpts": {
				"commitsSort": [ "subject", "scope" ]
			}
		} ],
		[ "@semantic-release/github", {
			"assets": [
				// { "path": "dist", "label": "" },
			]
		} ],
		[
			"@semantic-release/npm",
			{ "npmPublish": true }
		],
	],
	branches: [
		"+([0-9])?(.{+([0-9]),x}).x",
		"master",
		{ name: "alpha", prerelease: true },
		{ name: "beta", prerelease: true },
	]
}

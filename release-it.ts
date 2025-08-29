import type { Config } from 'release-it';

export default {
    "git": {
        "tag": true,
        "commitMessage": "chore(release): ${version}\n\n${changelog}",
        "requireCleanWorkingDir": false
    },
    "npm": {
        "publish": false
    }
} satisfies Config;
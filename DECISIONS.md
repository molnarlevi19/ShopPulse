# ShopPulse Decisions

## 1. Laravel as the framework
**Date:** 2026-10-26
**Status:** Accepted
**Decision:** Build ShopPulse on Laravel.
**Why:** It's our department's main language and framework, so the skills transfer directly to work. The course is also built around Laravel.
**Trade-off:** No comparison with other frameworks; chosen for fit, not on technical merit alone.

## 2. Laravel 12 instead of 13
**Date:** 2026-10-26
**Status:** Accepted
**Decision:** Use Laravel 12.x (12.70.1), not the latest major (13).
**Why:** The course material, Prism examples and Filament setup target Laravel 12, so following it reduces friction.
**Trade-off:** Laravel 12 no longer gets bug fixes (ended Aug 2026) and security fixes end Feb 2027. It also lacks 13's first-party AI SDK and native vector search; Prism PHP covers the AI part instead.
**Alternatives:** Laravel 13 with the official AI SDK; possible upgrade after the course.

## 3. Local PHP environment
**Date:** 2026-10-26
**Status:** Accepted
**Decision:** PHP 8.3 installed via winget (portable zip) with a manual php.ini, Composer via the official Windows installer.
**Why:** PHP runs natively, so Claude Code hooks can call Pint and Pest directly without a container.
**Trade-off:** Manual setup (php.ini, extensions, PATH) and the environment isn't reproducible for other developers.
**Alternatives:** Laravel Herd (easier), Docker/Sail or WSL2 (reproducible but slower to set up on Windows).

#!/bin/bash
# [v1.0 Legacy Hook - 已在 v2.0 退役]
# UserPromptSubmit hook: when the prompt asks for a plan/design/selection,
# inject a reminder of the "先调研再给方案" rule from ~/agent-config/AGENTS.md.
# 复盘记录：v2.0 研讨中 Claude Code 实测发现该脚本从未在 ~/.claude/settings.json 的 hooks 字段中挂载，且纯口号式提醒在长任务中边际收益有限，已在 v2.0 中清理。
prompt=$(jq -r '.prompt // empty')
if printf '%s' "$prompt" | grep -qiE '怎么开始|如何开始|怎么做|如何实现|怎么实现|方案|设计|选型|架构|技术栈|用什么(库|框架|工具)|推荐.*(库|框架|工具)|how (should|do) (i|we)|which (library|framework)|architecture|approach'; then
  jq -n '{hookSpecificOutput: {hookEventName: "UserPromptSubmit", additionalContext: "提醒（AGENTS.md「先调研再给方案」）：本条消息可能在要方案或推荐。给出方案前，先判断是否命中调研触发条件；命中则先检索并输出调研记录，不命中或无法检索则在回答开头写明“以下未经调研，基于已有知识”。"}}'
fi
exit 0

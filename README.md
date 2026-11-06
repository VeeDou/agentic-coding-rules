# Agentic Coding Rules (v1.0.0 — 原则驱动基线版)

一套跨 **Claude Code**、**Codex**、**Antigravity (Gemini)** 共用的单一真相源（Single Source of Truth）工程规则：`AGENTS.md`。

## v1.0.0 核心理念

1. **先调研再给方案**：拒绝盲目造轮子，建立“项目已有代码与依赖 → 标准库 → 成熟第三方库 → 借鉴思路后自行实现 → 从零实现”的选型漏斗。
2. **实现的分量（防过度设计，也防特化硬编码）**：
   - 通用性做在原语层，特化放在数据层，中间不加抽象层。
   - 内部代码出现第三次才抽象（Rule of Three）。
   - 只在真实边界做错误处理，内部调用相信调用方。
3. **可视化与架构呈现规范**：禁止高密度蚂蚁字 Mermaid 堆砌，复杂架构优先使用自适应交互式看板。

## 跨 Agent 挂载方式

将 `AGENTS.md` 存放在 `~/agent-config/AGENTS.md`：

```bash
# Codex 软链
ln -sf ~/agent-config/AGENTS.md ~/.codex/AGENTS.md

# Antigravity / Gemini 软链
ln -sf ~/agent-config/AGENTS.md ~/.gemini/AGENTS.md

# Claude Code 导入
echo '@~/agent-config/AGENTS.md' > ~/.claude/CLAUDE.md
```

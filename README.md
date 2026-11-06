# Agentic Coding Rules (`AGENTS.md`)

> **跨 Claude Code · Codex · Antigravity (Gemini) 共用的单一真相源工程宪章**  
> 从 `v1.0.0`（静态原则口号）到 `v2.0.0`（证据准入、交付前 Diff 剃刀与多模型对抗审查）的完整演进、配置与三方五轮推演实录。

[![Release](https://img.shields.io/badge/release-v2.0.0-brightgreen)](https://github.com/VeeDou/agentic-coding-rules/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](./LICENSE)
[![Agents](https://img.shields.io/badge/Agents-Claude_Code_%7C_Codex_%7C_Antigravity-purple)](#快速安装与挂载)

---

## 为什么需要从 v1.0 进化到 v2.0？

在 `v1.0.0` 中，我们在全局 `AGENTS.md` 里写下了良好的设计原则：*“不为假想需求设计”、“第三次才抽象（Rule of Three）”、“只在真实边界做错误处理”*。

但在真实项目开发中，这些静态原则经常失效——Agent 依然会顺手包一层静默吞错的 `try/except`、为单次调用抽配置项、建多余的 `Adapter` 抽象层，或者为了追求“测试全绿”写出改错核心逻辑也不会红的形式主义测试。

在研读了 Addy Osmani（Anthropic / Claude Code 团队核心专家）的深度长文 **《Critical thinking when agents do the work》** 后，围绕人类提出的 **4 个灵魂追问**，我们通过本地进程间通信（`agent-pair-ipc`）组织 **Antigravity (Gemini)**、**Claude Code** 与 **Codex** 进行了 **5 轮盲审与交叉质询**，最终找到了静态规则失效的三大病根，并合龙出 `v2.0.0`：

| 痛点维度 | v1.0.0（原则驱动基线版） | v2.0.0（证据准入与对抗审查版） |
| :--- | :--- | :--- |
| **为什么不要“每次强制重读规则文件”？** | 误以为模型违规是因为“忘了规则”，尝试用 Hook 注入提醒口号（实测发现 Hook 甚至未挂载生效）。 | **规则已在启动上下文中；真正该强制先读的是“目标代码、调用方与已有实现”**（未搜过项目已有实现，禁止新建通用 helper/模块）。 |
| **Rule of Three 与“防特化分支”冲突怎么办？** | 两边都是原则，接第 2 家服务商时，Agent 无论建三层接口还是写 `if/else` 都能拿规则当借口。 | **值与行为二分法**：差异是**值**（URL/文案/阈值/模型名）优先用代码内现有数据（表或记录）表达，不为假想需求新增配置项；差异是**行为**（协议/状态流转）先并列写，第三处才抽象。 |
| **如何防止 Agent 给多余抽象“自己编造理由”？** | 缺乏准入标准，Agent 会把擅自加的缓存层、兼容垫片解释为“满足隐含的性能/可用性要求”。 | **证据准入（封死脑补理由）**：提前抽象或加配置/缓存/垫片/兜底，必须指向**现在已存在的事物**（用户原话、已有稳定抽象、已发生缺陷、实测数据、已知外部约束）。“以后可能需要”或脑补的“隐含要求”一律不算理由。 |
| **怎么在写完代码后真正砍掉过度设计？** | 只靠写代码那一刻的道德自律（而写的那一刻模型觉得每一行都很合理）。 | **交付前基于实际变更的复杂度剃刀**：结合 `git status`、diff 及新增未跟踪文件审视新增概念，无法对应当前需求或已知约束的直接删除或转为文字建议。 |
| **追问“漏测了什么”如何防滑向防御性编程？** | 追问漏测容易诱发模型顺手补一堆内部参数冗余校验与兜底分支。 | **报告义务与补代码解耦 + 双向防过激**：内部调用相信契约，既不静默吞错，也不为“不可能值”到处新增运行时校验；如实报告未验证项，**不为凑清单而堆砌额外防御代码或形式主义测试**。 |
| **如何防止 Agent 顺手执行 `npm install` 塞依赖？** | 仅靠文档叮嘱“新增依赖先确认”。 | **文档规范 + 客户端物理门禁双重锁定**：要求先说明**原因**（为何已有实现与标准库不够用）和**影响**（体积/兼容性/传递依赖），并在 Claude Code (`permissions.ask`) 与 Codex (`default.rules`) 层面配置命令行弹窗拦截。 |

---

## 仓库目录结构

```text
agentic-coding-rules/
├── AGENTS.md                                  # 🔥 v2.0.0 核心全局规则（唯一真相源）
├── CHANGELOG.md                               # v1.0.0 -> v2.0.0 演进变更日志
├── configs/                                   # 客户端物理门禁与历史对照配置
│   ├── claude-settings.example.json           # Claude Code permissions.ask 包管理器拦截配置
│   ├── codex-default.example.rules            # Codex execpolicy 包管理器 prompt + justification 规则
│   └── legacy-v1/                             # v1.0.0 基线备份（供对照复盘）
│       ├── AGENTS.v1.md                       # v1.0.0 原始版 AGENTS.md
│       └── research-reminder.sh               # v1.0.0 退役的提示词注入脚本
├── deliberation/                              # 🧠 完整思考过程与三方五轮交叉答辩实录
│   ├── 00-human-inquiry-and-paradigm.md       # 人类提出的 4 个灵魂追问与第一性原理推演
│   ├── 01-round1-independent-diagnosis.md     # Round 1：Claude Code & Codex 独立盲审与互提 5 问
│   ├── 02-round2-cross-examination.md         # Round 2：双方正面交锋（值与行为二分、防脑补理由、只列不补边界）
│   ├── 03-round3-to-round5-convergence.md     # Round 3–5：揪出“配置”诱因与层级漏洞，全票 SIGN_OFF
│   └── raw-prompts/                           # 每一轮投递给双方的原始议题文件（ROUND1 ~ ROUND5）
└── references/                                # 📚 参考资料与交互式学习看板
    ├── addy-osmani-critical-thinking-study.md # Addy Osmani《Critical thinking when agents do the work》精读笔记
    ├── addy-osmani-original-archive.md        # 原文与 154 条推特社区真实讨论完整归档
    └── addy_critical_thinking_guide.html      # 交互式深度学习全景看板（下载后可直接用浏览器打开）
```

---

## 快速安装与挂载

### 1. 一键同步全局 `AGENTS.md`（三端共用一份）

```bash
mkdir -p ~/agent-config
cp AGENTS.md ~/agent-config/AGENTS.md

# 1. Codex 软链接
ln -sf ~/agent-config/AGENTS.md ~/.codex/AGENTS.md

# 2. Antigravity / Gemini 软链接
ln -sf ~/agent-config/AGENTS.md ~/.gemini/AGENTS.md

# 3. Claude Code 导入
echo '@~/agent-config/AGENTS.md' > ~/.claude/CLAUDE.md
```

### 2. 配置包管理器安装“物理刹车”（可选推荐）

- **Claude Code**：将 [`configs/claude-settings.example.json`](./configs/claude-settings.example.json) 中的 `permissions.ask` 合并至 `~/.claude/settings.json`。
- **Codex**：将 [`configs/codex-default.example.rules`](./configs/codex-default.example.rules) 中的 `prefix_rule` 条目加入 `~/.codex/rules/default.rules`，并可用以下命令验证：
  ```bash
  codex execpolicy check --pretty --rules ~/.codex/rules/default.rules npm install lodash
  ```

---

## 深度阅读导航：思考过程与参考资料

1. **起点：Addy Osmani 原文研读与社区交锋**
   - [《Critical thinking when agents do the work》四步拆解笔记](./references/addy-osmani-critical-thinking-study.md)
   - [原文与 154 条推特高赞评论完整归档](./references/addy-osmani-original-archive.md)
   - [交互式 HTML 学习手册 (`addy_critical_thinking_guide.html`)](./references/addy_critical_thinking_guide.html)
2. **破局：人类四问与三方五轮对抗实录**
   - [00 · 人类灵魂四问：绿灯测试盲区、双模型交叉、监督悖论与非确定性抽象](./deliberation/00-human-inquiry-and-paradigm.md)
   - [01 · Round 1：为什么静态规则管不住过度设计？（Claude Code & Codex 独立盲审）](./deliberation/01-round1-independent-diagnosis.md)
   - [02 · Round 2：五问交叉质询（值与行为二分法、证据准入、只列不补校准）](./deliberation/02-round2-cross-examination.md)
   - [03 · Round 3–5：魔鬼在细节中（消除“配置”诱因、高后果顶层解耦与全票签署）](./deliberation/03-round3-to-round5-convergence.md)
3. **版本对比**
   - 查看 [`v1.0.0` 与 `v2.0.0` 的完整差异 (`CHANGELOG.md`)](./CHANGELOG.md) 或直接在 GitHub Releases 中对比两个版本。

---

## 致谢与参考来源

- 灵感触发：[Addy Osmani (@addyosmani) — *Critical thinking when agents do the work*](https://x.com/addyosmani/status/2117512471930167377)
- 跨 Agent 结对通信底座：[VeeDou/agent-pair-ipc](https://github.com/VeeDou/agent-pair-ipc)
- 共同审定与签署：Human (`@VeeDou`) · Antigravity (Gemini) · Claude Code · OpenAI Codex
